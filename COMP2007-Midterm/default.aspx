﻿<%@ Page Title="CoursList" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Midterm.Courses.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="content-body">
        <h2>Courses List</h2>
        <p>
            <asp:HyperLink runat="server" NavigateUrl="Courses/Insert" Text="Create new" />
        </p>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Id"
                ItemType="COMP2007_Midterm.Models.Cours"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Courses
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div class="panel panel-default">
                        <table class="table">
                            <thead class="hidden-xs">
                                <tr>
                                    <th>
                                        <asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="CourseID" CommandName="Sort" CommandArgument="CourseID" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="CourseName" CommandName="Sort" CommandArgument="CourseName" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="CourseDescription" CommandName="Sort" CommandArgument="CourseDescription" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="CourseCost" CommandName="Sort" CommandArgument="CourseCost" runat="Server" />
                                    </th>
                                    <th id="table-controls">Controls</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr runat="server" id="itemPlaceholder" />
                            </tbody>
                        </table>
                    </div>
                    <asp:DataPager PageSize="5" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="hidden-xs">
                            <asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
                        </td>
                        <td class="hidden-xs">
                            <asp:DynamicControl runat="server" DataField="CourseID" ID="CourseID" Mode="ReadOnly" />
                        </td>
                        <td class="hidden-xs">
                            <asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName" Mode="ReadOnly" />
                        </td>
                        <td class="hidden-xs">
                            <asp:DynamicControl runat="server" DataField="CourseDescription" ID="CourseDescription" Mode="ReadOnly" />
                        </td>
                        <td class="hidden-xs">
                            <asp:DynamicControl runat="server" DataField="CourseCost" ID="CourseCost" Mode="ReadOnly" />
                        </td>
                        <td class="hidden-xs">
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Details", Item.Id) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Edit", Item.Id) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Delete", Item.Id) %>' Text="Delete" />
                        </td>

                        <!--Responsive List-->
                        <ul class="list-group visible-xs">
                            <li class="list-group-item">
                                <p>
                                    <strong>Id: </strong>
                                    <asp:DynamicControl runat="server" DataField="Id" ID="Id2" Mode="ReadOnly" />
                                </p>
                            </li>
                            <li class="list-group-item">
                                <p><strong>Course ID: </strong>
                                    <asp:DynamicControl runat="server" DataField="CourseID" ID="CourseID2" Mode="ReadOnly" />
                                </p>
                            </li>
                            <li class="list-group-item">
                                <p><strong>Course Name: </strong>
                                    <asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName2" Mode="ReadOnly" />
                                </p>
                            </li>
                            <li class="list-group-item">
                                <p><strong>Course Description: </strong>
                                    <asp:DynamicControl runat="server" DataField="CourseDescription" ID="CourseDescription2" Mode="ReadOnly" />
                                </p>
                            </li>
                            <li class="list-group-item">
                                <p><strong>Course Cost: </strong>
                                    <asp:DynamicControl runat="server" DataField="CourseCost" ID="CourseCost2" Mode="ReadOnly" />
                                </p>
                            </li>
                            <li class="list-group-item">
                                <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Details", Item.Id) %>' Text="Details" />
                                |
                                <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Edit", Item.Id) %>' Text="Edit" />
                                |
                                <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Courses/Delete", Item.Id) %>' Text="Delete" />
                            </li>
                        </ul>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

