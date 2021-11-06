<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webDataReader.aspx.cs" Inherits="OLEDB.webDataReader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEB DATA READER</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

    <style type="text/css">
        .auto-style1 {
            text-decoration: none;
            text-align: center;
            margin-top: 20px;
            background-color: #4B3869;
            color:white;
            padding: 15px;
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
        .auto-style12{
            width: 800px;
        }
        .margin-top{
            margin-top: 40px;
        }
</style>
</head>
<body>
    <h2 class="auto-style1" >The DataReader Object</h2>

    <form id="form1" runat="server" class="margin-top">
        <div>
             <table align="center" class="auto-style10">

                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server">Select a Course</asp:Label>
                        <br />
                        <asp:ListBox ID="ListBoxCourse" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBoxCourse_SelectedIndexChanged"></asp:ListBox>

                    </td>

                    <td>
                            <table class="auto-style4" align="center">
                                <tr class="table-success">

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


                                 <tr class="table-success">

                                    <td class="auto-style8">
                                       <asp:Label ID="lblDuration" runat="server" Text="Duration: "></asp:Label>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBoxDuration" runat="server" ReadOnly="true" Width="25px"></asp:TextBox>
                                    </td>
                                </tr>


                                
                                 <tr>

                                    <td>
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
                        <asp:Button ID="ButtonUpdate" class="btn btn-success" runat="server" Text="Update"  OnClick="ButtonUpdate_Click"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="3" class="auto-style11">
                        <asp:GridView ID="GridViewResults" class="margin-top" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" GridLines="Both" runat="server">
                            <AlternatingRowStyle BackColor="#C8E3D4"/>
                            <FooterStyle BackColor="#C8E3D4" ForeColor="Black"/>
                            <HeaderStyle BackColor="#C8E3D4" ForeColor="Black" Font-Bold="true"/>
                            <PagerStyle BackColor="#C8E3D4" ForeColor="Black" HorizontalAlign="Center"/>
                            <SelectedRowStyle backColor="#161E54" ForeColor="Black" Font-Bold="true"/>
                            <SortedAscendingCellStyle BackColor="#C8E3D4" />
                            <SortedAscendingHeaderStyle BackColor="Yellow" />
                            <SortedDescendingCellStyle BackColor="#87AAAA" />
                            <SortedDescendingHeaderStyle BackColor="#17F9F2" />
                        </asp:GridView>                    
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style11" colspan="3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>

        </div>      
        <br />

        <asp:GridView ID="gridTest" align="center" class="auto-style12" runat="server">
            <AlternatingRowStyle BackColor="#71a8a1"/>
            <FooterStyle BackColor="#71a8a1" ForeColor="Black"/>
            <HeaderStyle BackColor="#71a8a1" ForeColor="Black" Font-Bold="true"/>
        </asp:GridView>


        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
