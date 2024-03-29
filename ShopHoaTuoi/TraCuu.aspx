<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="ShopHoaTuoi.TraCuu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>TRA CUU</h1>
    <div class="form-inline mb-2 ">
        Giá bán từ:<asp:TextBox ID="txtGiaBanTu" runat="server"></asp:TextBox>
        đến:<asp:TextBox ID="txtDen" runat="server"></asp:TextBox>
    </div>


</asp:Content>
