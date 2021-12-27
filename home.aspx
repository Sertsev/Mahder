<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Mahder.home" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./src/css/home.css" rel="stylesheet" />
    <link href="./src/css/search.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_s">
        <section class="container_s home_container">
        <div class="div_mp box_left mahiWelcome" align="center">
            <section>
                
                <div class="div_mp box_left">
                    <h1>Welcome to</h1>
                </div>

                <div class="div_mp box_right">
                    <img src="./src/img/logo.png" alt="Mahder Logo" width="100%" />
                </div>
                <div class="div_mp box_left">
                    <p> A phone directory for ethiopian business. All the information and contact info you need we have it here. </p>
                </div>
            </section>
        </div>

        <div class="div_mp box_right ">
            <div class="wiki-search-group" align="center">
                <input type="text" class="inp_f wiki-search" type="text" placeholder="Search info for...">
                <%--<span class="input-group-btn">
                    <button class="btn btn-default btn-search" type="button">Search</button>
                </span>--%>
            </div>
            <div class="div_mp box_center modify_div_css">
                <div class="div_mp box_left modify_div_css">
                    <select name="sel_cag" id="sel_cag" runat="server" class="inp_f wiki-search">
                        <option>All Catagories</option>
                        <option>Health</option>
                        <option>Banks</option>
                    </select>
                </div>
                <div class="div_mp box_right modify_div_css">
                    <select id="region" runat="server" class="inp_f wiki-search">
                        <option>All Regions</option>
                        <option>Amhara</option>
                        <option>Oromia</option>
                    </select>
                </div>
                <div class="div_mp box_right modify_div_css">
                    <select id="cities" runat="server" class="inp_f wiki-search">
                        <option>All cities</option>
                        <option>Addis Ababa</option>
                        <option>Debre Birhan</option>
                    </select>
                </div>
            </div>
            <div class="div_mp box_center modify_div_css">
                <asp:Button ID="search_btn" runat="server" Text="Search" CLASS="custom-btn btn-5 btn-hov" style="width: 200px; margin-top: 15px; padding:10px;" OnClick="search_click"  />
            </div>
        </div>
            </section>
    </section>

    <section class="container_s">
        <div class="div_mp box_center in_div_flex">
        <table class="show_table">
            <asp:Repeater ID="BanksList" runat="server">
                <HeaderTemplate>
                    <tr class="s_t_head">
                        <td class="s_t_d">ID</td>
                        <td class="s_t_d">Business Name</td>
                        <td class="s_t_d">Business Type</td>
                        <td class="s_t_d">Address</td>
                        <td class="s_t_d">City</td>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="s_t_row">
                        <td class="s_t_d s_t_d_num"><%# Eval("id")%></td>
                        <td class="s_t_d"><%# Eval("businessName")%></td>
                        <td class="s_t_d"><%# Eval("businessType")%></td>
                        <td class="s_t_d"><%# Eval("address")%></td>
                        <td class="s_t_d"><%# Eval("city")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
            </div>

    </section>

    <section class="container_s">
        <div class="div_mp box_left">
            <h2>Hello</h2>
        </div>

        <div class="div_mp box_right">
            <h1>Hi</h1>
        </div>
    </section>

    <section class="container_s">
        <div class="div_mp box_center in_div_flex">
            <div class="div_mp box_left">
                <h2>Hello</h2>
            </div>
    
            <div class="div_mp box_right">
                <h1>Hi</h1>
            </div>
        </div>
    </section>
</asp:Content>
