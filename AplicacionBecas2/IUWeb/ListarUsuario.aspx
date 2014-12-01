<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListarUsuario.aspx.vb" Inherits="IUWeb.ListarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title ></title>
</head>
<body >
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <services>
            <asp:servicereference Path="ServicesUsuarios/ServicioUsuarios.svc" />
        </services>
        </asp:ScriptManager>
      
                 <input id="btnConsultaUsuarios" type="button" value="button" />
                <div id="divMostrarUsuarios">
            <table id="tblMostrarUsuarios">
                <thead>
                    <tr>
                        <th>Identificación</th>
                        <th>Nombre
                        </th>
                        <th>Rol<input id="Button1" type="button" value="button" /></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
			

    </form>

 <script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="LogicUsuarios.js">
    </script>
<!-- END CORE PLUGINS -->
<script src="assets/scripts/core/app.js"></script>
<script>
jQuery(document).ready(function() {    
   App.init();
});
</script>
</body>
</html>
