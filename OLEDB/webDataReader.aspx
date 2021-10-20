<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webDataReader.aspx.cs" Inherits="OLEDB.webDataReader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEB DATA READER</title>

    <style type="text/css">
        .auto-style1 {
        text-decoration: underline;
        text-align: center;
        }
        .auto-style4 {
        width: 258px;
        }
        .auto-style6 {
        width: 99px;
        }
        .auto-style7 {
        height: 23px;
        width: 99px;
        }
        .auto-style5 {
        height: 23px;
        }
        .auto-style8 {
        width: 99px;
        height: 26px;
        }
        .auto-style9 {
        height: 26px;
        }
        .auto-style10 {
        width: 600px;
        }
        .auto-style11 {
        text-align: center;
        }
</style>
</head>
<body>
    <h1 class="auto-style1">THE DATAREADER OBJECT</h1>

    <form id="form1" runat="server">

            <table align="center" class="auto-style10">

                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server">Select a Course</asp:Label>
                        <br />
                        <asp:ListBox ID="ListBoxCourse" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBoxCourse_SelectedIndexChanged"></asp:ListBox>

                    </td>

                    <td>
                            <table class="auto-style4" align="center">
                                <tr>

                                    <td class="auto-style8">
                                       <asp:Label ID="lblNumber" runat="server" Text="Number: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxNumber" runat="server" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="auto-style8">
                                       <asp:Label ID="lblCourse1" runat="server" Text="Title: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxTitle" runat="server" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>


                                 <tr>

                                    <td class="auto-style8">
                                       <asp:Label ID="lblDuration" runat="server" Text="Duration: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxDuration" runat="server" ReadOnly="true" Width="25px"></asp:TextBox>
                                    </td>
                                </tr>


                                
                                 <tr>

                                    <td class="auto-style8">
                                       <asp:Label ID="lblTeacher" runat="server" Text="Teacher: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxTeacher" runat="server" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>

                                 <tr>

                                    <td class="auto-style8">
                                       <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxDescription" TextMode="MultiLine" runat="server" style="resize:none"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>
                    </td>

                    <td>
                        <asp:Button ID="ButtonUpdate" runat="server" Text="Update: "  OnClick="ButtonUpdate_Click"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="3" class="auto-style1">
                        <asp:GridView ID="GridViewResults" BackColor="White" BorderColor="YellowGreen" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Vertical" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>

    </form>
</body>
</html>
