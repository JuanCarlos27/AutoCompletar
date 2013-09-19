<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Autocompletar_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Autocompletar  con jQuery</title>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <script src="js/jquery-1.8.3.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script type="text/javascript">
        function LoadList()
        {        
            var ac=null;
            ac = <%=listFilter %>;
            $( "#Country" ).autocomplete({
                source: ac
            });
        }
    </script>
</head>
<body  onload="LoadList()">
    <form id="form1" runat="server">
        <div>
            <h2>Autocompletar</h2>
            <div class="auto-complete">
                <label for="tags">
                    Captura el nombre del país:
                </label>
                <input id="Country" />
            </div>
        </div>
    </form>
</body>
</html>
