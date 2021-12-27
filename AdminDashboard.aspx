<%@ Page Title="" Language="C#" MasterPageFile="~/meseret.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Mahder.AdminDashboard" %>
<%@ MasterType  virtualPath="~/meseret.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .pieChart {
            display: flex;
            justify-content: center;
            align-content: center;
            height: 200px;
            border-radius: 50%;
            background-image: conic-gradient( #b92b0b 70deg, lightblue 0 235deg, orange 0);
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_s">
        <div class="div_mp box_left" align="center">
            <div class="box_center">
            <div class="box_left">
                <div class="pieChart" style="background-image: conic-gradient( #b92b0b 100deg, lightblue 0 200deg, orange 0);"></div>
                <div class="div_mp">Business Owners</div>
            </div>
    
            <div class="box_right">
                <div class="pieChart" style="background-image: conic-gradient( #b92b0b 150deg, lightblue 0 200deg, orange 10deg);"></div>
                <div class="div_mp">Business infos</div>
            </div>
        </div>
            <div class="box_center">
                <canvas id="myChart" style="width:100%;max-width:600px;background-color:whitesmoke;padding:15px;border-radius:15px;"></canvas>
            </div>
        </div>

        <div class="div_mp box_right" align="center">
           <div class="box_center">
            <div class="box_left">
                <div class="pieChart" style="background-image: conic-gradient( #b92b0b 50deg, lightblue 0 280deg, orange 0);"></div>
                <div class="div_mp">Users</div>
            </div>
    
            <div class="box_right">
                <div class="pieChart" style="background-image: conic-gradient( #b92b0b 100deg, lightblue 0 100deg, orange 0);"></div>
                <div class="div_mp">Views</div>
            </div>
        </div>
            <div class="box_center">
                <canvas id="myChart1" style="width:100%;max-width:600px;background-color:whitesmoke;padding:15px;border-radius:15px;"></canvas>
            </div>
        </div>
    </section>

    <section class="container_s">
        <div class="div_mp box_center" align="center">
            <div class="div_mp box_left">
                <h3>New Owners to approve</h3>
                <br />
                <table class="show_table">
                    <asp:Repeater ID="Owners" runat="server">
                        <HeaderTemplate>
                            <tr class="s_t_head">
                                <td class="s_t_d">ID</td>
                                <td class="s_t_d">First Name</td>
                                <td class="s_t_d">Last Name</td>
                                <td class="s_t_d">Email</td>
                                <td class="s_t_d">City</td>
                                <td class="s_t_d">Action</td>
                                <td class="s_t_d">Visit</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="s_t_row">
                                <td class="s_t_d s_t_d_num"><%# Eval("Id")%></td>
                                <td class="s_t_d"><%# Eval("firstName")%></td>
                                <td class="s_t_d"><%# Eval("lastName")%></td>
                                <td class="s_t_d"><%# Eval("email")%></td>
                                <td class="s_t_d"><%# Eval("city")%></td>
                                <td class="s_t_d"><i class="fa fa-check-square"></i></td>
                                <td class="s_t_d"><a>View</a></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
    
            <div class="div_mp box_right">
                <h3>New Infos to approve</h3>
                <br />
                <table class="show_table">
                    <asp:Repeater ID="BanksList" runat="server">
                        <HeaderTemplate>
                            <tr class="s_t_head">
                                <td class="s_t_d">ID</td>
                                <td class="s_t_d">Business Name</td>
                                <td class="s_t_d">City</td>
                                <td class="s_t_d">Action</td>
                                <td class="s_t_d">Visit</td>
                                <td class="s_t_d">Be Careful</td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="s_t_row">
                                <td class="s_t_d s_t_d_num"><%# Eval("id")%></td>
                                <td class="s_t_d"><%# Eval("businessName")%></td>
                                <td class="s_t_d"><%# Eval("city")%></td>
                                <td class="s_t_d"><i class="fa fa-check-circle-o" aria-hidden="true"></i></td>
                                <td class="s_t_d"><a>view</a></td>
                                <td class="s_t_d"><i class="fa fa-trash"></i></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </section>

    <section class="container_s">
        <div class="div_mp box_flex">
            <h3> New Messages </h3>
            <br />
            <table class="show_table">
                    <tr class="s_t_head">
                        <th class="s_t_d">Send Email</th>
                        <th class="s_t_d">delivery time</th>
                        <th class="s_t_d">message</th>
                    </tr>
                    <tr class="s_t_row">
                        <td class="s_t_d">Jill</td>
                        <td class="s_t_d">Smith</td>
                        <td class="s_t_d">50</td>
                    </tr>
                    <tr class="s_t_row">
                        <td class="s_t_d">Eve</td>
                        <td class="s_t_d">Jackson</td>
                        <td class="s_t_d">94</td>
                    </tr>
                    <tr class="s_t_row">
                        <td class="s_t_d">Adam</td>
                        <td class="s_t_d">Johnson</td>
                        <td class="s_t_d">67</td>
                    </tr>
                </table>
        </div>
    </section>

    <script>
        var xValues = [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150];
        var yValues = [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15];

        new Chart("myChart", {
            type: "line",
            data: {
                labels: xValues,
                datasets: [{
                    fill: false,
                    lineTension: 0,
                    backgroundColor: "rgba(0,0,255,1.0)",
                    borderColor: "rgba(0,0,255,0.1)",
                    data: yValues
                }]
            },
            options: {
                legend: { display: false },
                scales: {
                    yAxes: [{ ticks: { min: 6, max: 16 } }],
                }
            }
        });

        new Chart("myChart1", {
            type: "line",
            data: {
                labels: xValues,
                datasets: [{
                    fill: false,
                    lineTension: 0,
                    backgroundColor: "rgba(0,0,255,1.0)",
                    borderColor: "rgba(0,0,255,0.1)",
                    data: yValues
                }]
            },
            options: {
                legend: { display: false },
                scales: {
                    yAxes: [{ ticks: { min: 6, max: 16 } }],
                }
            }
        });
    </script>
</asp:Content>
