<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adjustment.aspx.cs" Inherits="SalesReportingWebsite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading text-center">
        <h3>Adjustment</h3>
    </div>

    <div class="form-horizontal">
        <div class="row">
            <button type="button" class="btn btn-primary">Add new Adjustments</button>
        </div>
        <div class="row">
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="FromDate">From Date</label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" id="FromDate" runat="server" />
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="ToDate">To Date</label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" id="ToDate" runat="server" />
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="Period">Period</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="Period" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="FromQuantity">From Quantity</label>
                <div class="col-sm-9">
                    <input type="number" id="FromQuantity" class="form-control" runat="server" />
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="ToQuantity">To Quantity</label>
                <div class="col-sm-9">
                    <input type="number" id="ToQuantity" class="form-control" runat="server" />
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="FromAmount">From Amount</label>
                <div class="col-sm-9">
                    <input type="number" id="FromAmount" class="form-control" runat="server" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="ToAmount">To Amount</label>
                <div class="col-sm-9">
                    <input type="number" id="ToAmount" class="form-control" runat="server" />
                </div>
            </div>

            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="AdjustmentType">Adjustment Type</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="AdjustmentType" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="CountryName">Country Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="CountryName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="SubBusiessUnitName">Sub Business Unit Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="SubBusiessUnitName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="CompanyName">Company Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="CompanyName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="SubSegmentName">Sub Segment Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="SubSegmentName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="AccountSubTypeName">Account Sub Type Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="AccountSubTypeName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <label class="control-label col-sm-3" for="SubCategoryName">Sub Category Name</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="SubCategoryName" CssClass="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-4 form-group">
                <div>
                    <label class="radio-inline">
                        <input type="radio" name="optradio">Daily</label>
                    <label class="radio-inline">
                        <input type="radio" name="optradio">Monthly
                    </label>
                </div>
            </div>
        </div>

        <div class="row">            
           <button type="submit" class="btn btn-primary">Adjustments</button>            
            <button type="submit" class="btn btn-primary">Export Excel</button>
        </div>
    </div>
</asp:Content>
