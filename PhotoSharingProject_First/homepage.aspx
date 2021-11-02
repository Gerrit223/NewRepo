<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="PhotoSharingProject_First.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            max-width: 100%;
            height: 401px;
            width: 2072px;
            margin-right: 1372px;
        }
        .auto-style3 {
            height: 121px;
            width: 120px;
        }
        .auto-style4 {
            height: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/homepage_background.jpg" class ="auto-style1" />
    </section>

    <section>
        <div class ="container">
            <div class ="row">
                <div class ="col-12">
                    <center>
                        <h2>Our Features</h2>
                    </center>       
                </div>
          </div> 


             <div class ="row">
                <div class ="col-md-4">
                    <center>
                        <img width ="150px" src="imgs/View.png" class="auto-style3" /> 
                        <h4>View Photos</h4>
                    </center>
                </div>


                  <div class ="col-md-4">
                    <center>
                        <img width ="150px" src="imgs/shareNew.jpg" class="auto-style4" />
                        <h4>Share Photos</h4>
                    </center>
                </div>


                  <div class ="col-md-4">
                    <center>
                        <img width ="150px" src="imgs/Upload.jpg" class="auto-style4" />
                        <h4>Upload Photos</h4>
                    </center>
                </div>
            </div> 
        </div>
    </section>

    <section>
        <img src="imgs/homepage_background.jpg" class ="img-fluid" />
    </section>

</asp:Content>
