<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="PhotoSharingProject_First.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type ="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();


                reader.onload = function (e) {
                    $("#imgview").attr('scr', e.target.result);

                };

                reader.readAsDataURL(input.files[0]);
            }

        }
    </script>




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
                                        <hr/>
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
                              <img id ="imgview" Height="150px" Width="100px" src="photo_inventory/camera.png" />
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
                                           <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
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
                               <asp:FileUpload onchange ="readURL(this);" class ="form-control" ID="FileUpload1" runat="server" Width="299px" />
                           </center>     
                       </div>
                     <p></p>
                         <p>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photosharingDBConnectionString %>"></asp:SqlDataSource>
                           </p>

                          <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" Width="677px" AutoGenerateColumns="False" DataKeyNames="photo_id" DataSourceID="SqlDataSource1">
                              <Columns>
                                  <asp:BoundField DataField="photo_id" HeaderText="ID" ReadOnly="True" SortExpression="photo_id" />
                                 
                                  <asp:TemplateField>
                                      <ItemTemplate>
                                          <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-lg-10">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("tag") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                            </div>
                                                        </div>
                                                        &nbsp;<div class="col-12">
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("date_added") %>'></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <asp:Image class="img-fluid " Height ="150px" Width ="900px" ID="Image1" runat="server" ImageUrl='<%# Eval("photo_link") %>' />
                                                    </div>

                                                </div>

                                          </div>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                 
                              </Columns>
                           </asp:GridView>
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
     </div>


            
</asp:Content>
