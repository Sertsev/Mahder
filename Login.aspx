<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mahder.Login" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

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
                    <a href="#" class="active" id="login-box-link" onclick="javascript:log_sign_switch('email-login', 'email-signup');">Login</a>
                    <a href="#" id="signup-box-link" onclick="javascript:log_sign_switch('email-signup', 'email-login');">Sign Up</a>
                </div>
                <div class="<%--social-login--%> u-form-group" style="margin-bottom: -15px; color: red;">
                    <asp:Label ID="incorrectPE" CssClass="incorrect" runat="server" style="font-size: large; font-family: 'Times New Roman', Times, serif; font-style: oblique;" Text=""></asp:Label>
                </div>
                <div class="email-login" id="email-login">
                    <div class="u-form-group">
                        <input id="loginEmail" type="email" placeholder="Email" class="inp_f" runat="server" required />
                    </div>
                    <p id="invalidEmail"></p>
                    <div class="u-form-group">
                        <input id="loginPassword" type="password" placeholder="Password" class="inp_f" runat="server" required />
                    </div>
                    <p id="invalidPassword"></p>
                    <div class="u-form-group">
                        <%--<asp:Button ID="mahiLogInn" runat="server" Text="Log In" CLASS="custom-btn btn-5 btn-flt-rt" OnClick="login_Clickdd" />--%>
                        <asp:Button ID="mahiLogIn" runat="server" Text="Log In" CLASS="custom-btn btn-5 btn-flt-rt" OnClick="Login_Click" />
                    </div>
                    <div class="u-form-group">
                        <a href="#" class="forgot-password">Forgot password?</a>
                    </div>
                </div>
                <div class="email-signup hideDiv" id="email-signup">
                    <div class="u-form-group">
                        <input id="firstName" name="firstName" type="text" placeholder="First Name" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="middleName" type="text" placeholder="Middle Name" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="lastName" type="text" placeholder="Last Name" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="userEmail" type="email" placeholder="Email Address" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <input id="userPassword1" type="password" placeholder="Password" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <p align="center" style="font-size:small; width: 68%; color: #664a06; margin: -10px;">Password must be 8 - 32 character long and should include capital letters, small letters, special characters and numbers. </p>
                    </div>
                    <div class="u-form-group">
                        <input id="userPassword2" type="password" placeholder="Confirm Password" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <p align="center" style="font-size:small; width: 68%; color: #664a06; margin: -10px;">Password must match!! </p>
                    </div>
                    <div class="u-form-group">
                        <input id="phoneNumber" type="text" placeholder="Phone Number" class="inp_f" runat="server" />
                    </div>
                    <div class="u-form-group">
                        <select id="userType"  runat="server" class="inp_f">
                            <option>User</option>
                            <option>Business Owner</option>
                        </select>
                    </div>
                    <div class="u-form-group">
                        <asp:Button ID="signUp" runat="server" Text="Sign Up" CLASS="custom-btn btn-5 btn-flt-rt" OnClick="Signup_Click"  />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="./src/js/login.js"></script>
</asp:Content>
