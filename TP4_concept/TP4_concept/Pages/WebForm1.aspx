<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP4_concept.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TypeEmploye" runat="server">
    Administration
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AfficherUtilisateur" runat="server" >
    NomUtilisateur
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BoutonsCU" runat="server">
    <form runat="server">
        <asp:Button CssClass="boutonsCU" ID="Button1" runat="server" Text="Button" />
        <asp:Button CssClass="boutonsCU" ID="Button2" runat="server" Text="Button" />
        <asp:Button CssClass="boutonsCU" ID="Button3" runat="server" Text="Button" />
        <asp:Button CssClass="boutonsCU" ID="Button4" runat="server" Text="Button" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenuPage" runat="server">
</asp:Content>
