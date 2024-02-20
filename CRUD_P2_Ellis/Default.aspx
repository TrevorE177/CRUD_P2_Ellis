<%@ Page Title="New Customer and Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_P2_Ellis.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

        <h2 id="title"><%: Title %></h2>

        <h5>First Name: </h5>
        <asp:TextBox ID="txtfirstname" CssClass="form-control" placeholder="First Name" runat="server">Trevor</asp:TextBox>

        <h5>Last Name: </h5>
        <asp:TextBox ID="txtlastname" CssClass="form-control" placeholder="Last Name" runat="server">Ellis</asp:TextBox>

        <h5>City: </h5>
        <asp:TextBox ID="txtcity" CssClass="form-control" placeholder="City" runat="server">Centralia</asp:TextBox>

        <h5>Country: </h5>
        <asp:TextBox ID="txtcountry" CssClass="form-control" placeholder="Country" runat="server">USA</asp:TextBox>

        <h5>Phone Number: </h5>
        <asp:TextBox ID="txtphonenumber" CssClass="form-control" placeholder="Phone Number" runat="server">(555) 1234</asp:TextBox>

        <h5>Product: </h5>
        <asp:DropDownList ID="productsDropdown" runat="server" AppendDataBoundItems="true">
        <asp:ListItem Text="Select Product" Value="0"></asp:ListItem>
        </asp:DropDownList>

        <div class="modal-footer">
            <asp:Button ID="btnsubmitorder" CssClass="btn btn-primary" OnClick="btnsubmitorder_Click" Text="Submit Order" runat="server" />
        </div>

    </main>
</asp:Content>


