<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="accepter_commande.aspx.cs" Inherits="TP4_concept.Pages.page_accepter_consulter.accepter_commande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TypeEmploye" runat="server">Employé
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AfficherUtilisateur" runat="server">Gérant
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BoutonsCU" runat="server">
    <form runat="server">
        <asp:Button CssClass="boutonsCU" ID="Button1" runat="server" Text="Accepter commande" Width="199px" Height="35px" />
        <asp:Button CssClass="boutonsCU" ID="Button2" runat="server" Text="Préparer commande" Width="191px" Height="35px" />
         <asp:Button CssClass="boutonsCU" ID="Button3" runat="server" Text="Préparer commande" Width="191px" Height="35px" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenuPage" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Commande à accepter"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
    <asp:GridView ID="aaccepter" runat="server">
    </asp:GridView>
    <asp:ListBox ID="description" runat="server"></asp:ListBox>
</asp:Content>
