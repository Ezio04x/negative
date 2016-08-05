<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="webpages_Misc_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="Server">
    <div id="form">

        <form id="theForm" runat="server">

            

            <div class="row">
                <label for="email"> Email:    </label>
                <asp:TextBox ID="email" runat="server" BackColor="#FFCC99" BorderColor="#663300" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                <%--<input type="email" id="email" name="email">--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter a valid Email" ControlToValidate="email"></asp:RequiredFieldValidator>
                
                <label for="passwod"> Password: </label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" BackColor="#FFCC99" BorderColor="#000099" ForeColor="#663300"></asp:TextBox>
                <%--<input type="email" id="email" name="email">--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter the correct Password" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>

            <div>
                
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" BackColor="#000066" Height="34px" Width="110px" />

                <hr />
            </div>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

        </form>
    </div>

</asp:Content>

