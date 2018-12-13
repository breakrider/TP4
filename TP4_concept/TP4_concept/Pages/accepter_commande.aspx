<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="accepter_commande.aspx.cs" Inherits="TP4_concept.Pages.page_accepter_consulter.accepter_commande" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TypeEmploye" runat="server">
    Employé
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AfficherUtilisateur" runat="server">
    Gérant
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BoutonsCU" runat="server">
    <form runat="server">
        <asp:Button CssClass="boutonsCU" ID="Button1" runat="server" Text="Accepter commande" Width="199px" Height="35px" />
        <asp:Button CssClass="boutonsCU" ID="Button2" runat="server" Text="Préparer commande" Width="191px" Height="35px" />
        <asp:Button CssClass="boutonsCU" ID="Button3" runat="server" Text="Préparer commande" Width="191px" Height="35px" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenuPage" runat="server">

    <div style="position: relative">
        <table style="width: 100%; height: 100%">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Commande à accepter"
                        Style="z-index: 1; left: 225px; top: 23px; position: absolute; margin-bottom: 0px;" />
                    <asp:Label ID="Label4" runat="server" Text="Description"
                        Style="z-index: 1; left: 500px; top: 23px; position: absolute; margin-bottom: 0px;" />
                     <asp:GridView ID="GridView1" runat="server"
                        Style="z-index: 1; left: 200px; top: 50px; position: absolute; margin-bottom: 0px; height: 180px;" />
                    
                    <asp:ListBox ID="ListBox1" runat="server"
                        Style="z-index: 1; left: 454px; top: 90px; position: absolute; margin-bottom: 0px; height: 243px; width: 177px;" />
                   
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 3px; top: 23px; position: absolute" Text="Commande acceptées"></asp:Label>
                    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 35px; top: 45px; position: absolute" Text="à préparer"></asp:Label>
                    <asp:ListBox ID="ListBox2" runat="server" style="z-index: 1; left: 10px; top: 90px; position: absolute; height: 241px; width: 115px;"></asp:ListBox>
                    <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 200px; top:250px; position: absolute; width: 85px;" Text="Accepter" />
                    <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 300px; top: 250px; position: absolute; width: 85px;" Text="Refuser" />
                    <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 245px; top: 300px; position: absolute">Contacter client</asp:HyperLink>
                   
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
