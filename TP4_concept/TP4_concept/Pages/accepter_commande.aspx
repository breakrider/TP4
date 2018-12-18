<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="accepter_commande.aspx.cs" Inherits="TP4_concept.Pages.page_accepter_consulter.accepter_commande" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TypeEmploye" runat="server">
    Employé
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AfficherUtilisateur" runat="server">
    Gérant
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BoutonsCU" runat="server">
        <asp:Button CssClass="boutonsCU" ID="Button1" runat="server" Text="Accepter commande" />
        <asp:Button CssClass="boutonsCU" ID="Button2" runat="server" Text="Préparer commande" />
        <asp:Button CssClass="boutonsCU" ID="Button3" runat="server" Text="Préparer commande" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenuPage" runat="server">

    <div class="borderAll" style="width:90%; margin-left:auto; margin-right:auto;">
        <table cellspacing="20">
            <tr>
                <td class="auto-style1">
                    <h2><asp:Label ID="Label3" runat="server" Text="Commande à accepter" /></h2>
                </td>
                <td class="auto-style1">
                    <h2><asp:Label ID="Label1" runat="server" Text="Commande acceptées"></asp:Label></h2>
                </td>
                <td class="auto-style1">
                    <h2><asp:Label ID="Label4" runat="server" Text="Description" /></h2>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ListBox ID="ListBox3" runat="server" Width="100%" Height="15em"/>
                </td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Width="100%" Height="15em"/>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="500px" Height="15em"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="width:85%; margin:0 auto 0 auto;">
                        <asp:Button CssClass="boutonsCU" ID="Button4" runat="server" Text="Accepter" />
                        <asp:Button CssClass="boutonsCU" ID="Button5" runat="server" Text="Refuser" />
                    </div>
                </td>
                <td>

                </td>
                <td>
                    <asp:HyperLink CssClass="centrer" ID="HyperLink1" href="" runat="server">Contacter client</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
