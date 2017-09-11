<%@ Page Title="" Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



 <style>
input[type=text]{
    height: 25px;
    width: 275px;
    border: 1px solid #B9BDC1;
    color: #797979;
    -moz-box-shadow: 0 2px 4px #bbb inset;
    -webkit-box-shadow: 0 2px 4px #BBB inset;
    box-shadow: 0 2px 4px #BBB inset;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
}
 input[type=text]:focus {
    background-color: #E7E8E7;
    outline: 0;
}
</style>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
        width: 573px;
    }
    .newStyle1 {
        font-family: "Copperplate Gothic Bold";
    }
    .newStyle2 {
        font-family: "Monotype Corsiva";
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <h1 class="auto-style1"><span class="newStyle1">Register With Us</span></h1>
<p class="auto-style1"><span class="newStyle2">&quot;Donate Blood&nbsp; Be a Real Hero&quot;</span></p>
    <p class="text-left">
        
        <table border="0">
            <tr>
                <td class="auto-style2"><asp:TextBox ID="TextBox1" placeholder="name" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter a Valid Name!" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="number" ></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please a Enter valid Number!" ForeColor="#33CCFF" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid No." ForeColor="#33CCFF" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Blood Group:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>Rare Blood</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select a Blood Group" ForeColor="#33CCFF" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">State: <asp:DropDownList ID="DropDownList2" runat="server" Width="145px">
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Telengana</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select a State" ForeColor="#33CCFF" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="city"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter a City" ForeColor="#33CCFF" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder="district"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter a District" ForeColor="#33CCFF" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;<asp:TextBox ID="TextBox5" placeholder="area" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter a Area" ForeColor="#33CCFF" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <input id="Checkbox1" type="checkbox" />&nbsp;I hereby agree to help Blood Assist and Allow them to Provide My Information to Needy.</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" BorderColor="White" ForeColor="#3399FF" Height="31px" OnClick="Button1_Click" Text="Register" Width="95px" PostBackUrl="~/register.aspx" />
                </td>
            </tr>
        </table>
        
    </p>
        </form>
    
</asp:Content>

