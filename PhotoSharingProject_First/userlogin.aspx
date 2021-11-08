<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="PhotoSharingProject_First.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container">
        <div class ="row">
                <div class ="col-md-6 mx-auto">
                    <div class ="card">
                        <div class ="card-body">

                                <div class ="row">
                                    <div class ="col">
                                        <center>
                                            <img width="150px" src="imgs/generaluser.png" />
                                        </center>
                                    </div>
                                </div>

                            <div class ="row">
                                    <div class ="col">
                                        <center>
                                           <h3>User Login</h3>
                                        </center>
                                    </div>
                                </div>


                              <div class ="row">
                                    <div class ="col">
                                        </hr>
                                    </div>
                                </div>

                             <div class ="row">
                                    <div class ="col">
                                        <label>Username</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                                         </div>

                                        <label>Password</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                         </div>
                                        <p></p>
          
                                             <div class="form-group">
                                                 <asp:Button  class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" Width ="600px"  />                      
                                             </div>

                                          <p></p>

                                        <div class="form-group">
                                                  <a href="usersignup.aspx"><asp:Button  class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" Width ="600px" OnClick="Button2_Click" /></a>                      
                                           </div>

                                </div>

                                 <p></p>
        
                                 <a href="homepage.aspx"><< Back To Home</a>


                        </div>
                    </div>

                </div>

                  
        </div>
    </div>
    </div>
        

</asp:Content>
