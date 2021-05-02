<%@ Page Title="" Language="C#" MasterPageFile="~/mpPrincipal.Master" AutoEventWireup="true" CodeBehind="exibir.aspx.cs" Inherits="Agenda.exibir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceContatos" DataKeyNames="nome">
    <AlternatingItemTemplate>
        <tr style="background-color: #FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
            </td>
            <td>
                <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color: #008A8C; color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </td>
            <td>
                <asp:Label ID="nomeLabel1" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
            </td>
            <td>
                <asp:TextBox ID="enderecoTextBox" runat="server" Text='<%# Bind("endereco") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>Nenhum Contato foi retornado.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </td>
            <td>
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            </td>
            <td>
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
            </td>
            <td>
                <asp:TextBox ID="enderecoTextBox" runat="server" Text='<%# Bind("endereco") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color: #DCDCDC; color: #000000;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
            </td>
            <td>
                <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">nome</th>
                            <th runat="server">telefone</th>
                            <th runat="server">endereco</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
            </td>
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="telefoneLabel" runat="server" Text='<%# Eval("telefone") %>' />
            </td>
            <td>
                <asp:Label ID="enderecoLabel" runat="server" Text='<%# Eval("endereco") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nome], [telefone], [endereco] FROM [Contato]" DeleteCommand="DELETE FROM [Contato] WHERE [nome] = @nome" InsertCommand="INSERT INTO [Contato] ([nome], [telefone], [endereco]) VALUES (@nome, @telefone, @endereco)" UpdateCommand="UPDATE [Contato] SET [telefone] = @telefone, [endereco] = @endereco WHERE [nome] = @nome">
    <DeleteParameters>
        <asp:Parameter Name="nome" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
        <asp:Parameter Name="nome" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
