﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using System.Configuration;
using System.Transactions;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using TIL;

namespace DAL.Repositories
{

    public class CarreraRepository : IRepository<Carrera>
    {
        private string actividad;
        private static int numero;
        private static string mensaje;
        private static CarreraRepository instance;
        private static Excepciones exceptions = new Excepciones();
        private List<IEntity> _insertItems;
        private List<IEntity> _deleteItems;
        private List<IEntity> _updateItems;
        private CarreraRepository()
        {
            _insertItems = new List<IEntity>();
            _deleteItems = new List<IEntity>();
            _updateItems = new List<IEntity>();
        }

        ///<summary>Patron singleton, encargado de obtener una unica instancia de esta clase</summary>
        //<autor>Alvaro Artavia</autor>
        public static CarreraRepository Instance
        {

            get
            {
                if (instance == null)
                {
                    instance = new CarreraRepository() { };
                }
                return instance;
            }
        }

        ///<summary>Agrega a la lista los objetos que se deseam eliminar,modificar o insertar</summary>
        ///<param name="entity">Objeto a ingresar a la lista</param>
        //<autor>Alvaro Artavia</autor>

        public void Insert(Carrera entity)
        {
            _insertItems.Add(entity);
        }

        public void Delete(Carrera entity)
        {
            _deleteItems.Add(entity);
        }

        public void Update(Carrera entity)
        {
            _updateItems.Add(entity);
        }

        ///<summary>Obtiene de la base de datos todos los elementos en la tabla carreras</summary>
        ///<returns>Retorna una coleccion de objetos de tipo carrera<retruns>
        //<autor>Alvaro Artavia</autor>

        public IEnumerable<Carrera> GetAll()
        {
            try
            {
                List<Carrera> pCarrera = null;
                SqlCommand cmd = new SqlCommand();
                Usuario directorAcademico = null;
                DataSet ds = DBAccess.ExecuteSPWithDS(ref cmd, "Sp_consultarCarreras");

                if (ds.Tables[0].Rows.Count > 0)
                {

                    pCarrera = new List<Carrera>();
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        int idDirector = Convert.ToInt32(dr["DirectorAcademico"]);
                        directorAcademico = UsuarioRepository.Instance.GetById(idDirector);
                        pCarrera.Add(new Carrera
                        {
                            nombre = dr["Nombre"].ToString(),
                            codigo = dr["Codigo"].ToString(),
                            color = dr["Color"].ToString(),
                            Id = Convert.ToInt32(dr["idCarrera"]),
                            directorAcademico = directorAcademico
                        });
                    }
                }

                return pCarrera;
            }
            catch (SqlException ex)
            {
                numero = ex.Number;
                mensaje = exceptions.validarExcepcion(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Carrera GetByNombre(String parametro)
        {

            try
            {

                Carrera carrera = new Carrera();
                Usuario directorAcademico = null;
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@parametro", parametro);

                DataSet ds = DBAccess.ExecuteSPWithDS(ref cmd, "Sp_buscarCarrera");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    var dr = ds.Tables[0].Rows[0];

                    int idDirector = Convert.ToInt32(dr["DirectorAcademico"]);
                    directorAcademico = UsuarioRepository.Instance.GetById(idDirector);
                    carrera = new Carrera
                    {
                        nombre = dr["Nombre"].ToString(),
                        codigo = dr["Codigo"].ToString(),
                        color = dr["Color"].ToString(),
                        Id = Convert.ToInt32(dr["IdCarrera"]),
                        directorAcademico = directorAcademico
                    };
                }
                return carrera;

            }
            catch (SqlException ex)
            {
                numero = ex.Number;
                mensaje = exceptions.validarExcepcion(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public Carrera GetById(int id)
        {

            Carrera objCarrera = null;

            return objCarrera;
        }

        ///<summary>Metodo encargado de llamar a los metodos eliminar,insertar o modificar dependiendo 
        ///de la cantidad de objetos encontrados en la coleccion</summary>
        //<autor>Alvaro Artavia</autor>

        public void Save()
        {

            using (TransactionScope scope = new TransactionScope())
            {

                try
                {

                    if (_insertItems.Count > 0)
                    {

                        foreach (Carrera objCarrera in _insertItems)
                        {
                            InsertCarrera(objCarrera);
                        }
                    }

                    if (_updateItems.Count > 0)
                    {
                        foreach (Carrera p in _updateItems)
                        {
                            UpdateCarrera(p);
                        }
                    }

                    if (_deleteItems.Count > 0)
                    {
                        foreach (Carrera p in _deleteItems)
                        {
                            DeleteCarrera(p);
                        }
                    }

                    scope.Complete();
                }
                catch (TransactionAbortedException ex)
                {

                }
                catch (ApplicationException ex)
                {

                }
                finally
                {
                    Clear();
                }

            }
        }

        ///<summary>Vacia las colecciones</summary>
        //<autor>Alvaro Artavia</autor>

        public void Clear()
        {
            _insertItems.Clear();
            _deleteItems.Clear();
            _updateItems.Clear();
        }

        ///<summary>Inserta en la base de datos un objeto carrera</summary>
        ///<param name="objCarrera">Objeto de tipo carrera</param>
        //<autor>Alvaro Artavia</autor>

        private void InsertCarrera(Carrera objCarrera)
        {

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.Add(new SqlParameter("@Codigo", objCarrera.codigo));
                cmd.Parameters.Add(new SqlParameter("@Nombre", objCarrera.nombre));
                cmd.Parameters.Add(new SqlParameter("@Color", objCarrera.color));
                cmd.Parameters.Add(new SqlParameter("@DirectorAcademico", objCarrera.directorAcademico.Id));
                DataSet ds = DBAccess.ExecuteSPWithDS(ref cmd, "Sp_agregarCarrera");

                actividad = "Se ha registrado una Carrera";
                registrarAccion(actividad);

            }
            catch (SqlException ex)
            {

                numero = ex.Number;
                mensaje = exceptions.excepciones(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);

            }
            catch (Exception ex)
            {

                throw ex;

            }
        }

        ///<summary>Modifica en la base de datos un objeto carrera</summary>
        ///<param name="objCarrera">Objeto de tipo carrera</param>
        //<autor>Alvaro Artavia</autor>

        public void UpdateCarrera(Carrera objCarrera)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.Add(new SqlParameter("@Codigo", objCarrera.codigo));
                cmd.Parameters.Add(new SqlParameter("@Nombre", objCarrera.nombre));
                cmd.Parameters.Add(new SqlParameter("@Color", objCarrera.color));
                cmd.Parameters.Add(new SqlParameter("@idCarrera", objCarrera.Id));
                cmd.Parameters.Add(new SqlParameter("@DirectorAcademico", objCarrera.directorAcademico.Id));
                DataSet ds = DBAccess.ExecuteSPWithDS(ref cmd, "Sp_modificarCarrera");

                actividad = "Se ha modificado una Carrera";
                registrarAccion(actividad);

            }
            catch (SqlException ex)
            {

                numero = ex.Number;
                mensaje = exceptions.excepciones(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);

            }
            catch (Exception ex)
            {

                throw ex;

            }
        }
        ///<summary>Elimina en la base de datos un objeto carrera</summary>
        ///<param name="objCarrera">Objeto de tipo carrera</param>
        //<autor>Alvaro Artavia</autor>

        private void DeleteCarrera(Carrera objCarrera)
        {
            try
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.Add(new SqlParameter("@codigo", objCarrera.codigo));
                DataSet ds = DBAccess.ExecuteSPWithDS(ref cmd, "Sp_borrarCarrera");

                actividad = "Se ha eliminado una Carrera";
                registrarAccion(actividad);

            }
            catch (SqlException ex)
            {

                numero = ex.Number;
                mensaje = exceptions.excepciones(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);

            }
            catch (Exception ex)
            {

                throw ex;

            }
        }

        public void registrarAccion(string pactividad)
        {

            RegistroAccion objRegistro;
            DateTime fecha = DateTime.Today;
            string nombreUsuario = Globals.usuario.primerNombre;
            string nombreRol = Globals.usuario.rol.Nombre;
            string descripcion = pactividad;
            objRegistro = new RegistroAccion(nombreUsuario, nombreRol, descripcion, fecha);

            try
            {
                RegistroAccionRepository.Instance.InsertAccion(objRegistro);
            }
            catch (SqlException ex)
            {
                numero = ex.Number;
                mensaje = exceptions.validarExcepcion(numero);
                throw new CustomExceptions.DataAccessException(mensaje, ex);
            }
            catch (Exception e)
            {

                throw e;
            }
        }
    }
}

