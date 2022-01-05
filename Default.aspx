<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Mahder.Default" %>

<%@ MasterType VirtualPath="~/meseret.Master" %>

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
                        <br /> <br />
                        <p>Welcome to</p>
                    </div>

                    <div class="div_mp box_right">
                        <img src="./src/img/logo.png" alt="Mahder Logo" width="100%" />
                    </div>
                    <div class="div_mp box_left">
                        <p>A phone directory for ethiopian business. All the information and contact info you need we have it here. </p>
                    </div>
                </section>
            </div>

            <div class="div_mp box_right ">
                <div class="wiki-search-group" align="center">
                    <input id="searchInput" class="inp_f wiki-search" type="text" placeholder="Search info for..." runat="server" required />
                </div>
                <div class="div_mp box_center modify_div_css">
                    <div class="div_mp box_left modify_div_css">
                        <asp:DropDownList ID="sel_cag" runat="server" AutoPostBack="true" CLASS="inp_f wiki-search">
                            <asp:ListItem Text="All Catagories" Value="all"></asp:ListItem>
                            <asp:ListItem Text="Health" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Banks" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="div_mp box_right modify_div_css">
                        <asp:DropDownList ID="region" runat="server" AutoPostBack="true" CLASS="inp_f wiki-search">
                            <asp:ListItem Text="All Regions" Value="all"></asp:ListItem>
                            <asp:ListItem Text="Amhara" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Two" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="div_mp box_right modify_div_css">
                        <asp:DropDownList ID="cities" runat="server" AutoPostBack="true" CLASS="inp_f wiki-search">
                            <asp:ListItem Text="All Cities" Value="all"></asp:ListItem>
                            <asp:ListItem Text="Addis Ababa" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Debre Birhan" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="div_mp box_center modify_div_css">
                    <asp:Button ID="search_btn" runat="server" Text="Search" CLASS="custom-btn btn-5 btn-hov" Style="width: 200px; margin-top: 15px; padding: 10px;" OnClick="search_click" />
                </div>
            </div>
        </section>
    </section>

    <section class="container_s">

            <div class="div_mp box_center in_div_flex">
                <h3>Featured Businesses</h3>
            <table class="show_table">
                <asp:Repeater ID="Featured" runat="server">
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
        <div class="div_mp box_center in_div_flex">
            <h3 class="center-block">Our Achievment</h3>
                <asp:Repeater ID="NumberOfBusinessByCatagory" runat="server">
                    <ItemTemplate>
                        <div class="div_mp box_center">
                           <div class="box_left"> <h1 style="font-size: 80px;" id="noc"><%# Eval("NumberOfCatagories")%></h1> <p>Number of Business catagories</p> </div>
                            <div class="box_right"> <h1 style="font-size: 80px;" id="nob"><%# Eval("NumberOfBusinesses")%></h1> <p>Number of Registered Businesses</p> </div>
                         </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
    </section>

    <section class="container_s tableContainer">

        <div class="div_mp box_center in_div_flex">
            <h3>List of Banks</h3>
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

        <div class="div_mp box_center in_div_flex">
            <h3>List of Charity Organizations</h3>
            <table class="show_table">
                <asp:Repeater ID="Charity" runat="server">
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

    <section class="container_s tableContainer">
        <div class="div_mp box_center in_div_flex">
            <h3>Highly Rated Businesses</h3>
            <table class="show_table">
                <asp:Repeater ID="HighlyRated" runat="server">
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

        <div class="div_mp box_center in_div_flex">
            <h3>Most Viewed Businesses</h3>
            <table class="show_table">
                <asp:Repeater ID="MostViewedByCatagory" runat="server">
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
    <script src="./src/js/home.js"></script>
</asp:Content>
