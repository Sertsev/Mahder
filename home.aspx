<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Mahder.home" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./src/css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_s">
        <div class="div_mp box_left mahiWelcome" align="center">
            <section>
                <div class="div_mp box_left">
                    <p><br /></p>
                </div>
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

        <div class="div_mp box_right">
            <h1>Hi</h1>
            <%-- https://codepen.io/taylor-jones/pen/zrRRmq --%>
        </div>
    </section>

    <section class="container_s">
        <asp:GridView ID="BanksList" CssClass="banks list" PagerStyle-CssClass="pager"
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" runat="server">
        </asp:GridView>
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
