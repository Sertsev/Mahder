<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mahder.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./src/css/login.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_s" runat="server">
        <div class="div_mp box_left">
            <img src="./src/img/ph.gif" alt="Coming soon" width="85%" />
        </div>

        <div id="signin" class="div_mp box_right login-back">

            <div class="login-box">
                <div class="lb-header">
                    <a href="#" class="active" id="login-box-link">Login</a>
                    <a href="#" id="signup-box-link">Sign Up</a>
                </div>
                <div class="social-login">
                    <a href="#" class="custom-btn btn-5 btn-flt-rt social-login-btn">
                        <i class="fa fa-facebook fa-lg"></i>
                        Login in with Facebook
                    </a>
                    <a href="#" class="custom-btn btn-5 btn-flt-rt social-login-btn">
                        <i class="fa fa-google-plus fa-lg"></i>
                        Log in with Google
                    </a>
                </div>
                <div class="email-login">
                    <div class="u-form-group">
                        <input type="email" placeholder="Email" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input type="password" placeholder="Password" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <button class="custom-btn btn-5 btn-flt-rt">Log in</button>
                    </div>
                    <div class="u-form-group">
                        <a href="#" class="forgot-password">Forgot password?</a>
                    </div>
                </div>
                <div class="email-signup">
                    <div class="u-form-group">
                        <input id="fullName" type="text" placeholder="Full Name" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="userEmail" type="email" placeholder="Email Address" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="userPassword1" type="password" placeholder="Password" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <p align="center" style="font-size:x-small; width: 68%; color: #664a06; margin: -10px;">Password must be 8 - 32 character long and should include capital letters, small letters, special characters and numbers. </p>
                    </div>
                    <div class="u-form-group">
                        <input id="userPassword2" type="password" placeholder="Confirm Password" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <p align="center" style="font-size:x-small; width: 68%; color: #664a06; margin: -10px;">Password must match!! </p>
                    </div>
                    <div class="u-form-group">
                        <input id="phoneNumber" type="text" placeholder="Phone Number" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <button class="custom-btn btn-5 btn-flt-rt">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="./src/js/login.js"></script>
</asp:Content>
