<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainSite.aspx.cs" Inherits="ASProjekt.MainSite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="MainText">
        Witaj na stronie główniej witryny<br />
         poświęconej muzyce filmowej.
        <br />
        <br />
        Przejdź do nowości filmowych
        <br />
        <asp:HyperLink 
            id="hyperlink1" 
                  NavigateUrl="NewMovies.aspx"
                  Text="Trailery nowych filmów"
                  runat="server" />
        <br />
        <br />
        Przejdź do konkursu Oscarowego
        <br />
        <asp:HyperLink 
            id="hyperlink2" 
                  NavigateUrl="Contest1.aspx"
                  Text="Konkurs #1"
                  runat="server" />
        <br />
    </div>

    <div id="Spotify">

        <iframe src="https://embed.spotify.com/?uri=spotify%3Auser%3Ajulenmaiz%3Aplaylist%3A5ltna7ez5Cx2ktplL3eKy2" height="300" width="380"></iframe>


    </div>

</asp:Content>
