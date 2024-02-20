<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="CRUD_P2_Ellis.Confirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>

        <div class="label1">
            <asp:Label ID="L1" Text="Welcome " Font-Size="XX-Large" runat="server" />
            <asp:Label ID="firstandlastname" Font-Size="XX-Large" runat="server" />
            <asp:Label ID="L2" Text=", your customer number is " Font-Size="XX-Large" runat="server" />
            <asp:Label ID="customernumber" Text="Welcome " Font-Size="XX-Large" runat="server" />
            <asp:Label ID="L3" Text=" and your order number is " Font-Size="XX-Large" runat="server" />
            <asp:Label ID="ordernumber" Text="" Font-Size="XX-Large" runat="server" />
            <asp:Label ID="L4" Text="." Font-Size="XX-Large" runat="server" />
        </div>

        <div class="label1">
            <asp:Label ID="L5" Text="Your order of " Font-Size="X-Large" runat="server" />
            <asp:Label ID="productname" Font-Size="X-Large" runat="server" />
            <asp:Label ID="L6" Text=" is on the way!" Font-Size="X-Large" runat="server" />
        </div>

        <asp:Label ID="L7" Text="Order History:" Line-Height="1.5px" Font-Size="X-Large" runat="server" />

        <asp:GridView ID="orderhistory" BorderColor="Black" GridLines="Both" CellPadding="5" Wiadth="100%" BorderStyle="Solid" BorderWidth="1px" runat="server">
        </asp:GridView>

    </main>
</asp:Content>

