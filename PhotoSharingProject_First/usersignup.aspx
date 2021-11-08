<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="PhotoSharingProject_First.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
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
                                            <img width="100px" src="imgs/generaluser.png" />
                                        </center>
                                    </div>
                                </div>

                            <div class ="row">
                                    <div class ="col">
                                        <center>
                                           <h3>User Sign up</h3>
                                        </center>
                                    </div>
                                </div>


                              <div class ="row">
                                    <div class ="col">
                                        </hr>
                                    </div>
                                </div>


                              <div class ="row">
 
                                    <div class ="col-md-6">
                                         <div class ="col">
                                        <label style="font-style: normal; font-weight: bold">Name</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="auto-style1" ID="txtName" runat="server" placeholder="Name" Width="600px"></asp:TextBox>
                                         </div>
                                    </div>

                                    <div class ="col-md-6">
                                         <label style="font-weight: bold">Surname</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="auto-style1" ID="txtSurname" runat="server" placeholder="Surname" Width="600px"></asp:TextBox>
                                         </div>
                                       
          
                                    </div>


                                         <div class ="col-md-6">
                                         <div class ="col">
                                        <label style="font-weight: bold">Email</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="auto-style1" ID="txtEmail" runat="server" placeholder="Email" Width="600px"></asp:TextBox>
                                         </div>
                                    </div>


                                              <div class ="col-md-6">
                                         <div class ="col">
                                        <label style="font-weight: bold">Username</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="auto-style1" ID="txtUsername" runat="server" placeholder="Username" Width="600px"></asp:TextBox>
                                         </div>
                                    </div>


                                                   <div class ="col-md-6">
                                         <div class ="col">
                                        <label style="font-weight: bold">Password</label>
                                         <div class ="form-group">
                                             <asp:TextBox CssClass="auto-style1" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" Width="600px"></asp:TextBox>
                                         </div>
                                              <p></p>
                                    </div>
                                </div>

                             <div class ="row">
                                   

                                       
                                          

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
