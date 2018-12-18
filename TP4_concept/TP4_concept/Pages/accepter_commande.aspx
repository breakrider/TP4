<%@ Page Title="" Language="C#"  MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="accepter_commande.aspx.cs" Inherits="TP4_concept.Pages.page_accepter_consulter.accepter_commande" %>

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
                        Style="z-index: 1; left: 171px; top: 90px; position: absolute; margin-bottom: 0px; height: 180px;" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="idCommande" DataSourceID="LinqDataSource1" EnableModelValidation="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                         <Columns>
                             <asp:BoundField DataField="idCommande" HeaderText="idCommande" InsertVisible="False" ReadOnly="True" SortExpression="idCommande" />
                             <asp:BoundField DataField="datecommande" HeaderText="datecommande" SortExpression="datecommande" />
                             <asp:BoundField DataField="idetat" HeaderText="idetat" SortExpression="idetat" />
                             <asp:BoundField DataField="noClient" HeaderText="noClient" SortExpression="noClient" />
                         </Columns>
                    </asp:GridView>
                   
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 3px; top: 23px; position: absolute" Text="Commande acceptées"></asp:Label>
                    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 35px; top: 45px; position: absolute" Text="à préparer"></asp:Label>

                    <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 200px; top:300px; position: absolute; width: 85px;" Text="Accepter" />
                    <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 300px; top: 300px; position: absolute; width: 85px;" Text="Refuser" />
                    <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 245px; top: 350px; position: absolute">Contacter client</asp:HyperLink>
                   
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TP4_concept.base_donnee.bdConceptDataContext" EntityTypeName="" TableName="commandes">
                    </asp:LinqDataSource>
                   
                    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 600px; top: 80px; position: absolute"></asp:TextBox>
                   
                    <asp:DetailsView ID="DetailsView2" runat="server" style="z-index: 1; left: 3px; top: 80px; position: absolute; height: 192px; width: 125px" Width="125px">
                    </asp:DetailsView>
                   
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
