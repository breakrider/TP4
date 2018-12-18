<%@ Page Title="" Language="C#" MasterPageFile="~/maitre.Master" AutoEventWireup="true" CodeBehind="UserConnect.aspx.cs" Inherits="PrototypeTP4.UserConnect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="width:300px;display:block;margin-left:55px;margin-right:auto;">
    <asp:Button ID="btnSteFoy" runat="server" Text="Ste-Foy" />
    <asp:Button ID="btnStRoch" runat="server" Text="St-Roch" />
    <asp:Button ID="btnLimoilou" runat="server" Text="Limoilou" />
</div>
    
<div style="width:270px;height:700px;border:2px solid black;background-color:lightgray;float:left;">
    <p style="margin-left:70px;">
        <asp:Label ID="lblSuccurcaleMenu" runat="server" Font-Italic="True" Font-Size="Large" Font-Underline="True">Succurcale Ste-Foy</asp:Label>
    </p>
    
    <p style="margin-left:10px;"">
    <asp:TextBox ID="tbSearch" Text="Search" runat="server"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hpHelp" runat="server" BorderStyle="Outset" BorderColor="Tomato" BorderWidth="3px">?</asp:HyperLink>
    </p>



<fieldset style="width:230px;margin-left:5px;background-color:slategray;">
<legend>  <asp:Label ID="lblBienvenu" runat="server" Text=""></asp:Label></legend>

    <div style="width:50px;height:50px;background-color:red;margin-left:10px;display:inline-block;"></div>
    <div style="display:inline-block;margin-left:30px;"><asp:HyperLink ID="HyperLink2" runat="server">Gérer son compte</asp:HyperLink></div>
   
    <br />
    <br />
     <asp:Button ID="btnCommander" style="width:180px;margin-left:25px;" runat="server" Text="Commander" OnClick="btnCommander_Click" />
    <br />
    <br />
    <asp:Button ID="btnCommandes" style="width:180px;margin-left:25px;" runat="server" Text="Mes Commandes" />
    <br />
    <br />
    <asp:Button ID="btnSuivre" style="width:180px;margin-left:25px;" runat="server" Text="Suivre ma commande" />
    <br />
    
</fieldset>



    <p style="margin-left:60px; margin-top:330px">
        <asp:HyperLink ID="HyperLink1" style="margin-left:18px;" runat="server">Consulter Menus</asp:HyperLink>
        <br />
        <asp:Label ID="Label1" runat="server" style="font-size:25px" Text="418-123-4567"></asp:Label>
    </p>



</div>


    <div style="width:1300px;height:1300px;border:2px solid black;background-color:lightgray;margin-left:300px">
          <div style="width:1000px;height:130px;background-color:red;margin-left:150px; margin-top:25px;display:inline-block;"></div>

        
        

         <div style="width:1300px;height:1300px;border:2px solid black;background-color:lightgray;">
             <p style="width:800px;height:200px;border:2px solid black;background-color:lightblue;margin-left:150px;margin-top:70px;display:inline-block;float:left;">
         Integer id erat non nisi dapibus pulvinar vitae at purus. Etiam scelerisque elit quis urna ultrices, et hendrerit diam sagittis. Cras id turpis fermentum, imperdiet lectus viverra, euismod dolor. Morbi eleifend varius leo quis placerat. Curabitur id ante orci. Morbi mattis aliquam ipsum at finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque pharetra hendrerit justo, nec egestas est mattis condimentum. Morbi dui nunc, aliquet vel metus non, sodales rhoncus est.
        </p>
             <div style="width:200px;height:200px;background-color:red;display:inline-block;float:right;margin-top:70px;"></div>

             <p style="width:800px;height:200px;border:2px solid black;background-color:lightblue;margin-left:150px;margin-top:70px;display:inline-block;float:left;">
          Morbi dui nunc, aliquet vel metus non, sodales rhoncus est. Nulla consectetur vulputate purus, a dignissim neque viverra quis. Mauris convallis, turpis gravida volutpat malesuada, mauris nisi pretium metus, et congue sem erat nec arcu. Aliquam sed ex non dui varius sollicitudin vel eu enim. Quisque lobortis risus congue massa varius, non malesuada mi malesuada. Proin velit libero, aliquet vel venenatis ac, placerat ut ex. Phasellus quis sapien ante. Pellentesque in felis vel sem posuere eleifend. 
        </p>

                <p style="width:800px;height:200px;border:2px solid black;background-color:lightblue;margin-left:150px;margin-top:70px;display:inline-block;float:left;">
          Morbi dui nunc, aliquet vel metus non, sodales rhoncus est. Nulla consectetur vulputate purus, a dignissim neque viverra quis. Mauris convallis, turpis gravida volutpat malesuada, mauris nisi pretium metus, et congue sem erat nec arcu. Aliquam sed ex non dui varius sollicitudin vel eu enim. Quisque lobortis risus congue massa varius, non malesuada mi malesuada. Proin velit libero, aliquet vel venenatis ac, placerat ut ex. Phasellus quis sapien ante. Pellentesque in felis vel sem posuere eleifend. 
        </p>

             <div style="width:200px;height:200px;background-color:red;display:inline-block;float:right;margin-top:0px;"></div>

          
             <div style="width:200px;height:200px;background-color:red;display:inline-block;float:right;margin-top:20px;"></div>




         </div>
    </div>




</asp:Content>
