<%@ Page Title="" Language="C#" MasterPageFile="~/mpPrincipal.Master" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="Agenda.cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lblApres" runat="server" Font-Size="Large" ForeColor="Black" Text="Cadastrando novo Contato"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblNome" runat="server" Font-Size="Medium" Text="Nome:           "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Height="14px" Font-Size="Small" OnTextChanged="txtNome_TextChanged" Width="320px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblTel" runat="server" Text="Telefone: "></asp:Label>
        <asp:TextBox ID="txtTel" runat="server" Font-Size="Small" Height="14px" Width="100px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEnd" runat="server" Text="Endereço: "></asp:Label>
        <asp:TextBox ID="txtEnd" runat="server" Height="14px" Width="300px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnCad" runat="server" Height="20px" OnClick="btnCad_Click" Text="Cadastrar" />
    </p>
    <p>
        <asp:Label ID="lblMess" runat="server" Enabled="False" Text="Contato Inserido com Sucesso!" Visible="False"></asp:Label>
    </p>
</asp:Content>
