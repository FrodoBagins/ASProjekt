<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Ost.aspx.cs" Inherits="ASProjekt.Ost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div id="gridview">
            <asp:XmlDataSource ID="albumSource" runat="server" DataFile="AlbumList.xml" />
            <asp:GridView ID="AlbumGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CssClass="AlbumGrid" DataSourceID="albumSource">
                <Columns>
                    <asp:TemplateField HeaderText="Album">
                        <ItemTemplate>
                            <b><%# XPath("Title") %></b><br />
                            <%# XPath("Compositor") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField Text="View Details" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="detailsview">
            <div id="details">
                Details

                <asp:Label ID="label" runat="server"></asp:Label>

                <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="AlbumList.xml" />
                <asp:DetailsView ID="DvdDetailsView" CellPadding="5" runat="server" GridLines="None" Visible="false" AutoGenerateRows="false" CssClass="DvdDetails" DataSourceID="XmlDataSource2">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:TemplateField HeaderText="ID:">
                            <ItemTemplate>
                                <%# XPath("@ID") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Title:">
                            <ItemTemplate>
                                <%# XPath("Title") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Tracks:">
                            <ItemTemplate>
                                <asp:DataList
                                    ID="TrackList1"
                                    runat="server"
                                    DataSource='<%# XPathSelect("Tracks/Track") %>'>
                                    <ItemTemplate>
                                        <%# XPath(".") %>
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>

                </asp:DetailsView>






            </div>


        </div>
    </div>
</asp:Content>
