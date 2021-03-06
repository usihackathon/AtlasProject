﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProjectManagement.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atlas Projects</title>
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            width: 222px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <div class="container shadow-sm p-3 mb-5 bg-white rounded">
    <form id="form1" runat="server">
        <div>
            <center><h1 style="font-size: xx-large; font-weight: bold; font-style: normal; color: #000080; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">Atlas Dashboard</h1></center>
            <div class="table-responsive">
            <table class="table">
                <tr>
                    <td class="auto-style2">Total Number of Projects:</td>
                    <td>
                        <asp:FormView ID="NumProj" runat="server" DataSourceID="ProjectNumber" Height="21px">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNumber" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Project) FROM Projects"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number Started:&nbsp;</td>
                    <td>
                        <asp:FormView ID="ProjStarted" runat="server" DataSourceID="ProjectStarted" Height="21px">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectStarted" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Started'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Number Not Done:&nbsp;</td>
                    <td class="auto-style4">
                        <asp:FormView ID="NumNotDone" runat="server" DataSourceID="ProjectNotDone">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectNotDone" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Not Done'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number On Hold:&nbsp;</td>
                    <td>
                        <asp:FormView ID="NumOnHold" runat="server" DataSourceID="ProjectOnHold">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ProjectOnHold" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'On Hold'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number Done:</td>
                    <td>
                        <asp:FormView ID="NumDone" runat="server" DataSourceID="NumberDone">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NumberDone" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Status) FROM Projects
WHERE Status = 'Done'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Closest Due Date:</td>
                    <td>
                        <asp:FormView ID="DueDate" runat="server" DataSourceID="ClosestDueDate">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="ClosestDueDate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MIN([Current_Due_Date] ) FROM [Projects]
"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of Strategic Projects:</td>
                    <td>
                        <asp:FormView ID="StratProj" runat="server" DataSourceID="StrategicProjects">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="StrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'Strategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of Non-Strategic Projects:</td>
                    <td>
                        <asp:FormView ID="NonStratProj" runat="server" DataSourceID="NonStrategicProjects">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NonStrategicProjects" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Type) FROM Projects
WHERE Type = 'Non-Strategic'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Number Not Completed on Time:</td>
                    <td>
                        <asp:FormView ID="FormView9" runat="server" DataSourceID="NotDoneOnTime">
                            <EditItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Column1:
                                <asp:TextBox ID="Column1TextBox" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Column1Label" runat="server" Text='<%# Bind("Column1") %>' />
                                <br />

                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="NotDoneOnTime" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(Done) FROM Projects
WHERE Done = 'No'"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
                </div>
            <br />
            <center><a href="View_Edit.aspx">View/Edit Projects</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="New_Project.aspx">Add Project</a> </center>
            <br />
        </div>
    </form>
        </div>
</body>
</html>