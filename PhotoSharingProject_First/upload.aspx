<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="PhotoSharingProject_First.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 81px;
        }
        .auto-style8 {
            width: 148px;
            height: 27px;
        }
        .auto-style9 {
            width: 165px;
            height: 27px;
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
                                            <img src="imgs/Upload.jpg" />
                                        </center>
                                    </div>
                                </div>

                            <div class ="row">
                                    <div class ="col">
                                        <center>
                                           <h3>Upload a photo</h3>
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
                           <center>
                               <asp:Image ID="Image1" runat="server" Height="107px" Width="139px" />
                               <br />
                               <br />
                               <table class="auto-style4">
                                   <tr>
                                       <td class="auto-style9">
                                           <asp:Label ID="Label2" runat="server" Text="File type"></asp:Label>
                                       </td>
                                       <td class="auto-style8">
                                           <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="207px">
                                               <asp:ListItem>.jpg</asp:ListItem>
                                               <asp:ListItem>.jpeg</asp:ListItem>
                                               <asp:ListItem>.png</asp:ListItem>
                                           </asp:DropDownList>
                                           <br />
                                       </td>
                                   </tr>
                                   <tr>
                                       <td class="auto-style9">
                                           <asp:Label ID="Label3" runat="server" Text="File size(kb)"></asp:Label>
                                       </td>
                                       <td class="auto-style8">
                                           <asp:TextBox ID="txtFileSize" runat="server" Width="205px"></asp:TextBox>
                                           <br />
                                       </td>
                                   </tr>
                                   <tr>
                                       <td class="auto-style9">
                                           <asp:Label ID="Label4" runat="server" Text="Tag"></asp:Label>
                                       </td>
                                       <td class="auto-style8">
                                           <asp:TextBox ID="txtTag" runat="server" Width="205px"></asp:TextBox>
                                       </td>
                                   </tr>
                               </table>
                           </center>
                               
                          <p></p>

                       <div class ="row">
                           <center>
                               <asp:FileUpload class="btn btn-dark btn-block btn-lg" ID="FileUpload1" runat="server" Width="299px" />
                           </center>     
                       </div>
                     <p></p>
                         <p></p>


                        <div class ="row">
                           <center>
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                           </center>     
                       </div>
                     <p></p>

                          <a href="menu.aspx"><< Back To Menu</a>

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

    </div>


            
</asp:Content>
