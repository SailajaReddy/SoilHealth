<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rpt_PH_DrugsIssuedByRegNo.aspx.cs"
    Inherits="Rpt_PH_DrugsIssuedByRegNo" %>
<%@ Register TagPrefix="menu" TagName="menu" Src="~/DefaultMenu.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="Footer" TagName="footer" Src="~/footer.ascx" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us"/>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>Vhms</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- BOOTSTRAP CORE STYLE  -->
     <script src="../scripts/JQuery-min.js.js" type="text/javascript"></script>
    <script src="../scripts/JQuery_FormValidation_Engines.js" type="text/javascript"></script>
    <script src="../scripts/Jquery_FormValidation_Engine_1.js" type="text/javascript"></script>
    <link href="../css/ValidationEngine.css" rel="stylesheet" type="text/css" />
  
    <link href="../BS/css/footable.min.css" rel="stylesheet" type="text/css" />
  
    <script src="../BS/js/footable.min.js" type="text/javascript"></script>
    <script src="../scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="../Bs/js/bootstrap.js" type="text/javascript"></script>
    <link href="../css/ValidationEngine.css" rel="stylesheet" type="text/css" />
    <link href="../BS/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="../BS/css/bootstrap.css" rel="stylesheet" />
    <link href="../BS/css/style.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
         label { color: #333;}
        .fld
        {
            border: solid 1px #eeeeee;
            padding: 6px;
        }
        
        .highlight
        {
            text-decoration: none;
            color: black;
            background: yellow;
        }
    </style>
    <script type="text/javascript">
        function noBack() {
            window.history.forward()
        }
        noBack();
        window.onload = noBack;
        window.onpageshow = function (evt) {
            if (evt.persisted) noBack()
        }
        window.onunload = function () { void (0) }
    </script>
    <script type="text/javascript">
        function CancelReturnKey() {
            if (window.event.keyCode == 13)
                return false;
        }
    </script>
    <script type="text/javascript" language="javascript">

        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
       <script type="text/javascript">
           $(function () {
               $("#txtDate").datepicker({
                   changeMonth: true,
                   changeYear: true,
                   dateFormat: 'dd-mm-yy',
                   buttonImageOnly: true,
                   buttonText: "Select date",
                   changeMonth: true,
                   changeYear: true,
                   yearRange: "-10:+0"
               });
           });
  </script>
   <%-- <script type="text/javascript">
        $(function () {
            $("#txtDate").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy',
                buttonImageOnly: true,
                buttonText: "Select date",
                changeMonth: true,
                changeYear: true,
                yearRange: "-10:+0"
            });
            }
           </script>--%>
</head>
<body onkeypress="return CancelReturnKey();"
    onload="DisableBackButton(){ void (0); }">
    <form id="Form1" runat="server" autocomplete="off">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="wrap-header">
            <div class="main-header">
                <div class="zerogrid">
                    <div class="row">
                        <div class="col-md-2 text-center">
                            <span>
                                <asp:Image ImageUrl="../img/goi.png" Height="120px" runat="server" Width="120px" ID="imgstate" />
                            </span>
                        </div>
                        <div class="col-md-8 text-center" style="margin-top: 10px;" align="middle">
                            <font size="5px" align="center" style="font-family: Bookman OldStyle, Georgia, Serif;
                                text-shadow: 1.5px 1px white;"><b>VETERINARY HOSPITAL MANAGEMENT SYSTEM</b></font>
                            <br>
                            <br>
                            <font size="5px" align="center" style="font-family: Times New Roman, Georgia, Serif;
                                text-shadow: 1.5px 1px white;"><b>DEPARTMENT OF ANIMAL HUSBANDRY</b></font>
                            <br>
                            <br>
                            <font size="5px" align="center" style="font-family: Times New Roman, Georgia, Serif;
                                text-shadow: 1.5px 1px white;"><b>
                                    <asp:Label ID="lblstatename" runat="server" Text="Label"></asp:Label></b></font>
                        </div>
                        <div class="col-md-2 text-center">
                            <span>
                                <asp:Image ID="Image1" src="../img/digital.png" Height="120px" runat="server" Width="120px" />
                            </span>
                        </div>
                        <div class="left-div">
                            <div class="user-settings-wrapper">
                                <ul class="nav">
                                    <li class="dropdown">
                                        <div class="dropdown-menu dropdown-settings">
                                            <h5>
                                                <strong>Personal Bio : </strong>
                                            </h5>
                                            Anim pariatur cliche reprehen derit.
                                            <hr />
                                            <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="#" class="btn btn-danger btn-sm">
                                                Logout</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <div class="container-fluid">
                          
                            <div class="collapse navbar-collapse" id="myNavbar">
                              <%--  <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" RenderingMode="List"
                                    IncludeStyleBlock="false" StaticMenuStyle-CssClass="nav navbar-nav" DynamicMenuStyle-CssClass="dropdown-menu">
                                </asp:Menu>--%>
                                  <Menu:Menu ID="Menu1" runat="server"></Menu:Menu>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="form-group">
    <div class="col-md-4 text-left">
     <span style="color: green;">Logged As ::</span> &nbsp; <span>
                                                <asp:Label ID="lblUsrName" ForeColor="#ab7d44" Font-Bold="true" runat="server" Text=""></asp:Label>&nbsp;</span>
    </div>
     <div class="col-md-4 text-center">
     <span style="color: green;">Institution Name ::</span> &nbsp; <span>
                                                <asp:Label ID="lblInsName" ForeColor="#ab7d44" Font-Bold="true" runat="server" Text=""></asp:Label>&nbsp;</span>
    </div>
     <div class="col-md-4 text-right">
     <span style="color: green;">Date ::</span> &nbsp; <span>
                                                <asp:Label ID="lblDate" ForeColor="#ab7d44" Font-Bold="true" runat="server" Text=""></asp:Label>&nbsp;</span>
    </div>
    </div>
    <div class="panel-heading">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-10  col-sm-10" id="card" style="margin-top: 0">
                <div class="card-header">
                    <span class="card-title"> Report on Drugs Issued </span>
                </div>
                <div class="col-md-12 col-md-12 col-sm-12">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10 col-md-10 col-sm-10 text-center">
                        <div class="form-group">
                        </div>
                        
                        <div class="form-group">                        
                            <div class="col-md-3  text-right">
                                <Label>Date</Label>
                            </div>
                            <div class="col-md-3 text-center">
                                    <asp:TextBox ID="txtDate" runat="server" ontextchanged="txtDate_TextChanged" 
                                                                            CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                            </div>
                            <div class="col-md-3  text-right">
                                <Label >Registration No :</Label>
                            </div>
                            <div class="col-md-3 text-center">
                             <asp:DropDownList ID="ddlRegNo" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlRegNo_OnSelectedIndexChanged">
                                                                            <asp:ListItem>Select</asp:ListItem>
                                                                        </asp:DropDownList>
                            </div>
                          
                            </div>
                       
                       
                        <div class="form-group">
                            <div class="col-md-12 text-center">
                            <asp:Button ID="btnSubmit" runat="server"  Text="Submit" OnClick="btnSubmit_Click" class="btn-success" />                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 text-center">
                            <asp:Label ID="lblNoRecordFound" runat="server" Font-Bold="True" 
                                                            ForeColor="Red" Visible="False"></asp:Label>                                
                            </div>
                        </div>
                         <div class="form-group">
                        
                            <div class="col-md-12 text-right">
                                <%--<asp:ImageButton ID="btnImgprint" Visible="false" runat="server"  ToolTip="Print Report"
                                                                            ImageUrl="~/images/print-button.png"  />--%>
                                <asp:ImageButton ID="btnImgprint" Visible="false" runat="server" Width="4%" ToolTip="Print Report"
                                    ImageUrl="~/images/print-button.png" OnClick="btnImgprint_Click" />
                            </div>
                        </div>
                        <div class="form-group">
                          <div class="col-md-1 text-right"></div>
                            <div class="col-md-10 text-center">
                                <%-- <rsweb:ReportViewer ID="ReportViewer1" runat="server">
                                </rsweb:ReportViewer>--%>
                                <rsweb:ReportViewer ID="RptDrugsIssuedByRegNo" Width="100%" runat="server" SizeToReportContent="true"
                                                                                        ShowPrintButton="true">
                                                                                    </rsweb:ReportViewer>
                            </div>  <div class="col-md-1 text-right"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-md-12 col-sm-12 table-responsive">
                                <div class="col-md-1">
                                </div>
                                <div class="col-md-1">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                    <br />
                </div>
            </div>
            <div class="col-md-1">
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                    <Footer:footer ID="footer" runat="server"></Footer:footer>
                </div>
            </div>
        </div>
    </footer>

    </form>
</body>
</html>
