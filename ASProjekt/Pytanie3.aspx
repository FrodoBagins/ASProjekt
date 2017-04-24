<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pytanie3.aspx.cs" Inherits="ASProjekt.Pytanie3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       

    <asp:Label ID="Label1" runat="server" CssClass="pytanieLabel" Text="Pytanie 3" />


    <asp:Image ID="pytanieImage2" CssClass="pytanieImage" runat="server" ImageUrl="Williams.jpg" />
    <br />


    <div id="pytanie" class="pytanie">

    <asp:Label ID="pytanie1Label" runat="server" Text="Ile oscarów w kategorii 'Najlepsza muzyka oryginalna' zdobył John Williams?" />

    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldVAlidator"></asp:RequiredFieldValidator>


    <br />
    <asp:Button ID="pytanie1_button" runat="server" Height="30px" OnClick="Button1_Click" Text="Dalej" Width="128px" />
    </div>

</asp:Content>
