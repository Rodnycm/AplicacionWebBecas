$('#btnConsultaUsuarios').click(buscarUsuarios);

function buscarUsuarios() {
    var service = new ServiceUsuarios.ServicioUsuarios();
    service.consultarUsuarios(onSuccess, null, null);
}

function onSuccess(result) {
    var objeto = $.parseJSON(result);
    var tbody = "";
    $.each(objeto, function (i, item) {
        tbody += '<tr>';
        tbody += '<td>' + objeto[i].identificacion + '</td>';
        tbody += '<td>' + objeto[i].primerNombre + '</td>';
        tbody += '<td>' + objeto[i].rol.nombre + '</td>';

        tbody += '</tr>';
    });
    $('#tblMostrarUsuarios tbody').append(tbody);
}