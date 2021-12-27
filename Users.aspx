<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Mahder.Users" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section class="container_s">
        <div class="div_mp box_center" align="center">
            <div class="div_mp box_left">
                <h3>List of Subscribers</h3>
                <br />
                <table class="show_table">
                    <asp:Repeater ID="EUsers" runat="server">
                        <HeaderTemplate>
                            <tr class="s_t_head">
                                <td class="s_t_d">ID</td>
                                <td class="s_t_d">First Name</td>
                                <td class="s_t_d">Middle Name</td>
                                <td class="s_t_d">Last Name</td>
                                <td class="s_t_d">Email</td>
                                <td class="s_t_d">User Type</td>
                                <td class="s_t_d">Registered on</td>
                                <td class="s_t_d">Action</td>
                                <td class="s_t_d">Visit</td>
                                <td class="s_t_d">Reset Password</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="s_t_row">
                                <td class="s_t_d s_t_d_num"><%# Eval("Id")%></td>
                                <td class="s_t_d"><%# Eval("firstName")%></td>
                                <td class="s_t_d"><%# Eval("middleName")%></td>
                                <td class="s_t_d"><%# Eval("lastName")%></td>
                                <td class="s_t_d"><%# Eval("email")%></td>
                                <td class="s_t_d"><%# Eval("userType")%></td>
                                <td class="s_t_d"><%# Eval("registerationDate")%></td>
                                <td class="s_t_d"><i class="fa fa-check-square"></i></td>
                                <td class="s_t_d"><a>View</a></td>
                                <td class="s_t_d"><button class="custom-btn btn-5">Reset</button></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            </div>
         </section>

</asp:Content>
