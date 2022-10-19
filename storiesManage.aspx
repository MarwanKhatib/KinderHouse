﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storiesManage.aspx.cs"
Inherits="web__marwan.storiesManage" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title></title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./CSS/style_edit.css" />
    <style>
      input[type="text"] {
        width: 100%;
      }
      tr {
        height: 50px;
        text-align: center;
      }
      table {
        max-width: 100%;
        margin: 0 auto;
        border-color: #bab8b8;
      }

      a {
        width: 45px !important;
        padding: 2px 21px;
        border-radius: 19px;
        text-decoration: none;
        background-color: #dd47e7;
        color: #fff !important;
        text-decoration: none;
      }
      a:hover {
        text-decoration: none;
        color: #fff;
        box-shadow: 0px 0px 3px black;
      }
      h1 {
        padding-bottom: 15px;
        text-align: center;
        font-size: 2.5rem;
        background: #9534f2;
        font-family: cursive;
        color: #fff;
      }
    </style>
    <script>
      $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
      });
    </script>
  </head>

  <body>
    <h1>Stories Manage</h1>
    <form runat="server">
      <asp:GridView
        ID="storiesG"
        runat="server"
        AutoGenerateDeleteButton="True"
        AutoGenerateEditButton="True"
        AutoGenerateColumns="False"
        DataKeyNames="Id"
        DataSourceID="story"
        CellPadding="4"
        ForeColor="#333333"
        GridLines="None"
      >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <asp:BoundField
            DataField="Id"
            HeaderText="Id"
            ReadOnly="True"
            SortExpression="Id"
          />
          <asp:BoundField
            DataField="name"
            HeaderText="name"
            SortExpression="name"
          />
          <asp:BoundField
            DataField="description"
            HeaderText="description"
            SortExpression="description"
          />
          <asp:BoundField
            DataField="img_link"
            HeaderText="img_link"
            SortExpression="img_link"
          />
          <asp:BoundField
            DataField="file_link"
            HeaderText="file_link"
            SortExpression="file_link"
          />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#9534f2" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#9534f2" Font-Bold="True" ForeColor="White" />
        <PagerStyle
          BackColor="#2461BF"
          ForeColor="White"
          HorizontalAlign="Center"
        />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle
          BackColor="#D1DDF1"
          Font-Bold="True"
          ForeColor="#333333"
        />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
      <asp:SqlDataSource
        ID="story"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [stories]"
        UpdateCommand="UPDATE [stories] SET [name]=@name ,[description]=@description, [img_link]=@img_link , [file_link]=@file_link WHERE [id]=@id"
        DeleteCommand="DELETE FROM [stories] WHERE [id]=@id"
      ></asp:SqlDataSource>
    </form>
  </body>
</html>
