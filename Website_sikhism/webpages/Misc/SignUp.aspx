<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="webpages_Misc_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" Runat="Server">
    <div id="form">
        
        <form id="theForm" runat="server">

            <div class="row">
                <label for="name"> Name: <asp:TextBox ID="TextBox6" runat="server" Height="20px"></asp:TextBox>
                <label for="phone"></label>
                <asp:RequiredFieldValidator ID="name" runat="server" ErrorMessage="Please Enter the Name" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                
                <br />
               <br />
                </label>

                <label for="address"> &nbsp; Address:</label><asp:TextBox ID="TextBox2" runat="server" Height="20px"></asp:TextBox>
                <label for="phone"> Phone:</label>
                <asp:RequiredFieldValidator ID="address" runat="server" ErrorMessage="Please Enter the address" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                
                <br />
                <br />
 
                <asp:TextBox ID="TextBox3" runat="server" Height="20px"></asp:TextBox>
                <%--<input type="tel" id="phone" name="phone">--%>
                <asp:RequiredFieldValidator ID="phone" runat="server" ErrorMessage="Please Enter the Phone Number" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                <br>
            </div>
                <br />
                <br />

            <div class="row">
                <label for="email"> Email:</label><asp:TextBox ID="TextBox4" runat="server" Height="20px"></asp:TextBox>
                <%--<input type="email" id="email" name="email">--%>
                <asp:RequiredFieldValidator ID="email" runat="server" ErrorMessage="Please Enter the E-mail" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </div>
                <br />
                <br />
              <div class="row">
                  <label for="passwod">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</label>
                  <asp:TextBox ID="password" runat="server" Height="20px" Visible="False"></asp:TextBox>
                  <%--<input type="email" id="email" name="email">--%>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter the Password" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
                <br />
                <br />
            <div>
            <asp:Button ID="lblMsg" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#000066" Height="35px" Width="127px" />
                </>
                <br />
            </div>

        </form>
    </div>

</asp:Content>

