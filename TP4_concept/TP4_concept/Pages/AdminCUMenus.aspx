<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/pagesEmploye.Master" AutoEventWireup="true" CodeBehind="AdminCUMenus.aspx.cs" Inherits="TP4_concept.Pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TypeEmploye" runat="server">
    Administration
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AfficherUtilisateur" runat="server">
    <asp:Label ID="lblNomUtilisateurSession" runat="server" Text="Nom Utilisateur"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BoutonsCU" runat="server">
     <asp:Button CssClass="boutonsCU" ID="BtnCUGestionMenus" runat="server" Text="Gestion Menus" />
     <asp:Button CssClass="boutonsCU" ID="BtnCUGestionRestaurants" runat="server" Text="Gestion des Restaurants" />
     <asp:Button CssClass="boutonsCU" ID="BtnCUGestionUtilisateurs" runat="server" Text="Gestion des Utilisateurs" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenuPage" runat="server">
    <div class="contenu section">
        <div id="divLstMenus" class="col span_3_of_12 borderRight">
            <h2> Menus enregistrés</h2>
            <asp:ListBox CssClass="alone" ID="LstMenus" runat="server" Width="95%"></asp:ListBox>
            <asp:Button Style="margin-right:5%;" CssClass="boutonsCU droite" ID="btnAjouterMenu" runat="server" Text="Ajouter Menu" />
        </div>
        <div id="divInfoMenu" class="col span_9_of_12">
            <div id="divTopInfoMenu">
                <div id="divTopGaucheInfoMenu" class="col span_4_of_12">
                    <h2><asp:Label ID="lblMenuSelectionne" runat="server" Text="Menu"></asp:Label></h2>
                    <p>Restaurant associé</p>
                    <asp:DropDownList ID="ddlChoixRestaurant" runat="server"></asp:DropDownList>
                </div>
                <div id="divTopDroiteInfoMenu" class="col span_8_of_12">
                    <asp:Button CssClass="boutonsCU" ID="Button1" runat="server" Text="Sauvegarder Modifications" />
                    <p><strong><u>Dernière modification</u></strong></p>
                    <p>Fait par : <asp:Label ID="lblInfoSauvegardeUtilisateur" runat="server" Text=""></asp:Label></p>
                    <p>Fait le : <asp:Label ID="lblInfoSauvegardeDate" runat="server" Text=""></asp:Label></p>
                </div>
            </div>
            <div id="divBottomInfoMenu" class="borderTop">
                <div id="divLstCategories" class="col span_3_of_12 borderRight">
                    <h2>Catégories</h2>
                    <asp:ListBox class="alone" ID="ListBox1" runat="server" Width="95%"></asp:ListBox>
                    <asp:Button CssClass="boutonsCU" ID="Button2" runat="server" Text="Ajouter Catégorie" />
                </div>
                <div id="divInfoCategorie" class="col span_9_of_12">
                    <div id="divTopInfoCategorie" class="span_12_of_12">
                        <h2><asp:Label ID="lblCategorieSelectionnee" runat="server" Text="Catégorie"></asp:Label></h2>
                        <p>Description: </p>
                        <asp:TextBox ID="txtDescriptionCategorie" runat="server" Height="132px" Width="100%"></asp:TextBox>
                    </div>
                    <div id="divBottomInfoCategorie" class="span_12_of_12">
                        <div id="divLstMets" class="col span_4_of_12 borderRight">
                            <h2>Mets</h2>
                            <div id="divSelectionMet">
                                <asp:DropDownList ID="ddlChoixMets" runat="server"></asp:DropDownList>
                            </div>
                            <asp:ListBox ID="lstMetsCategorie" runat="server" Width="95%"></asp:ListBox>
                        </div>
                        <div id="divInfoMet" class="col span_8_of_12">
                            <h2><asp:Label ID="lblMetSelectionne" runat="server" Text="Met"></asp:Label></h2>
                            <asp:Image ID="imgMetSelectionne" runat="server" />
                            <p><asp:Label ID="lblDescriptionMet" runat="server" Text="Label"></asp:Label></p>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </div>
</asp:Content>
