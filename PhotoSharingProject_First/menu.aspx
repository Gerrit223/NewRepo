<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="PhotoSharingProject_First.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 340px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
         <div class ="col-md-15">
             <div class ="card">
                 <div class="card-body">
                           <div class ="row">
                                    <div class ="col">
                                        <center>
                                            <img width="150px" src="imgs/Menu.png" />
                                        </center>
                                    </div>
                                </div>

                            <div class ="row">
                                    <div class ="col">
                                        <center>
                                           <h3>Menu</h3>
                                        </center>
                                    </div>
                                </div>


                              <div class ="row">
                                    <div class ="col">
                                        </hr>
                                    </div>
                                </div>
                 </div>
             </div>

        </div>
        <div class ="col-md-15">
            <div class ="card">
                 <div class="card-body">

                       <div class ="row">
                                    <div class ="col">
                                        <center>
                                            <asp:Button  class="btn btn-dark btn-block btn-lg" ID="btnView" runat="server" Text="View/Edit Photos" OnClick="btnView_Click" />
                                        </center>
                                    </div>
                       </div>
                     <p></p>

                       <div class ="row">
                                    <div class ="col">
                                        <center>
                                            <asp:Button class="btn btn-dark btn-block btn-lg" ID="btnShare" runat="server" Text="Share Photos" OnClick="btnShare_Click" />
                                        </center>
                                    </div>
                       </div>
                     <p></p>

                       <div class ="row">
                                    <div class ="col">
                                        <center>
                                            <asp:Button class="btn btn-dark btn-block btn-lg" ID="btnUpload" runat="server" Text="Upload Photos" OnClick="btnUpload_Click" />
                                        </center>
                                    </div>
                       </div>



                 </div>
             </div>

            <div class ="row">
                <div class ="col-md-14">
                    <center>
                        <img src="imgs/homepage_background.jpg" />
                    </center>
                </div>

        </div>
    </div>
    </div>

</asp:Content>
