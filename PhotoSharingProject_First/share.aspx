<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="share.aspx.cs" Inherits="PhotoSharingProject_First.share" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="col-md-15">
            <div class ="card">
                <div class ="card-body">
                    <div class ="row">
                        <div class ="col">
                            <center>
                                <img src="imgs/shareNew.jpg" />
                            </center>
                        </div>
                    </div>
                    <div class ="row">
                        <div class ="col">
                            <center>
                                <h3>Share A Photo With An Employee</h3>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photosharingDBConnectionString2 %>" SelectCommand="SELECT [photo_id], [location], [date_added], [tag], [photo_link] FROM [photos]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="photo_id" DataSourceID="SqlDataSource1" Width="407px" BorderStyle="Solid" GridLines="Horizontal">
                                    <Columns>
                                        <asp:BoundField DataField="photo_id" HeaderText="ID" ReadOnly="True" SortExpression="photo_id" />
                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class ="row">
                                                     <div class ="col-lg-10">
                                                         <div class="row">
                                                             <div class="col-12">
                                                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("tag") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                 <br />
                                                             </div>
                                                         </div>
                                                         <div class="row">
                                                             <div class="col-12">
                                                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("location") %>' Font-Bold="True" Font-Italic="True"></asp:Label>
                                                                 <br />
                                                             </div>
                                                         </div>

                                                         <div class="row">
                                                             <div class="col-12">
                                                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("date_added") %>' Font-Bold="True" Font-Italic="True"></asp:Label>
                                                                 <br />
                                                             </div>
                                                         </div>

                                                     </div>
                                                      <div class ="col-lg-10">
                                                          <asp:Image CssClass ="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("photo_link") %>' />
                                                     </div>
                                                   </div>
                                               </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                    </Columns>
                                </asp:GridView>
                                <p>&nbsp;</p>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr/>
                        </div>
                    </div>

                </div>
            </div>
        </div>



          <div class ="col-md-15">
            <div class ="card">
                <div class="card-body">
                    <center>
                          <asp:Label ID="ID" runat="server" Text="ID" Font-Bold="True"></asp:Label>
                           <p></p>
                             <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </center>

                  
                </div>
            </div>
        </div>

        <div class= "col=md-15">
            <div class="card">
                <div class="card-body">
                    <center>
                        <asp:Label ID="Label4" runat="server" Text="Employee Username" Font-Bold="True"></asp:Label>
                        <p></p>
                        <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
                        <p></p>
                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnShare" runat="server" Text="Share" OnClick="btnShare_Click" />

                    </center>
                </div>
            </div>
        </div>


    <a href="menu.aspx"><< Back To Menu</a>
</asp:Content>
