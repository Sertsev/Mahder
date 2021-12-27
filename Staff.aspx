<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Mahder.Staff" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_s">
        <div class="div_mp box_center" align="center">
            <div class="div_mp box_left">
                <h3>List of Staffs</h3>
                <br />
                <table class="show_table">
                    <asp:Repeater ID="Staffs" runat="server">
                        <HeaderTemplate>
                            <tr class="s_t_head">
                                <td class="s_t_d">ID</td>
                                <td class="s_t_d">First Name</td>
                                <td class="s_t_d">Middle Name</td>
                                <td class="s_t_d">Last Name</td>
                                <td class="s_t_d">Email</td>
                                <td class="s_t_d">User Type</td>
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

    <section class="container_s">
        <div class="box_mp box_center">
            <div class="contact_flex">
                <div>
                    <h1 class="head">Add staff </h1>
                </div>

                <div class="header_bar"></div>

                <div class="u-form-group">
                    <input class="inp_f" placeholder="First Name" type="text" name="name" required="" />
                </div>

                <div class="u-form-group">
                    <input class="inp_f" placeholder="Middle Name" type="text" name="name" required="" />
                </div>

                <div class="u-form-group">
                    <input class="inp_f" placeholder="Last Name" type="text" name="name" required="" />
                </div>

                <div class="u-form-group">
                    <input class="inp_f" placeholder="Enter email" type="text" name="subject" required="" />
                </div>

                <div class="u-form-group">
                    <input class="inp_f" placeholder="Enter password" type="password" name="password" required="" />
                </div>

                <div class="u-form-group">
                    <textarea class="inp_f" placeholder="Your Message ..." type="text" name="message"></textarea>
                </div>

                <div class="u-form-group">
                    <select id="userCatagory" runat="server" class="inp_f">
                        <option>Finance</option>
                        <option>Health</option>
                        <option>Real State</option>
                        <option>Hotel and Accomodation Service</option>
                    </select>
                </div>

                <div class="u-form-group">
                    <button class="custom-btn btn-5 btn-flt-rt">Register</button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
