<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewMovies.aspx.cs" Inherits="ASProjekt.NewMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label
        CssClass="newsLabel"
        ID="Label1"
        runat="server" />

    <br />


    <asp:MultiView ID="MultiView1" runat="server">


        <asp:View ID="View1" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/fqcZtz8VXXE"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button1"
                runat="server"
                Text="Następny trailer"
                OnClick="NextImage" />
        </asp:View>


        <asp:View ID="View2" runat="server">


            <iframe class="video" src="https://www.youtube.com/embed/hcdTN5soeQw"></iframe>
            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button2"
                runat="server"
                Text="Następny trailer"
                OnClick="NextImage" />
            <asp:Button
                CssClass="newsButton"
                ID="Button8"
                runat="server"
                Text="Poprzedni trailer"
                OnClick="PreviousImage" />



        </asp:View>




        <asp:View ID="View3" runat="server">


            <iframe class="video" src="https://www.youtube.com/embed/9GvX2uexGkA"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button3"
                runat="server"
                Text="Następny trailer"
                OnClick="NextImage" />
            <asp:Button
                CssClass="newsButton"
                ID="Button7"
                runat="server"
                Text="Poprzedni trailer"
                OnClick="PreviousImage" />


        </asp:View>


        <asp:View ID="View4" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/oDD3I0uOlqY"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button4"
                runat="server"
                Text="Następny trailer"
                OnClick="NextImage" />

            <asp:Button
                CssClass="newsButton"
                ID="Button6"
                runat="server"
                Text="Poprzedni trailer"
                OnClick="PreviousImage" />

        </asp:View>



        <asp:View ID="View5" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/wwjtdOqTmrA"></iframe>

            <asp:Button
                CssClass="newsButton"
                ID="Button5"
                runat="server"
                Text="Poprzedni trailer"
                OnClick="PreviousImage" />

        </asp:View>
    </asp:MultiView>

</asp:Content>
