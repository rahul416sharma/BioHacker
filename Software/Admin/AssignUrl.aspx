<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AssignUrl.aspx.cs" Inherits="Software_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <script src="../../Angular/excelexportjs.js"></script>

    <div class="container" data-ng-app="Website">
        <div class="row" data-ng-controller="MasterCategory">
            <div class="pagee">
                <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                    <div class="card-body">
                        <h1>Assign Url</h1>
                        <br />
                        <div class="form-row">
                            <div class="col-6">
                                <h4>Employee List</h4>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="emp1">
                                    <label class="form-check-label" for="emp1">Admin</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <h4>Menu Name List</h4>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="menu1">
                                    <label class="form-check-label" for="menu1">Add Menu</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="menu2">
                                    <label class="form-check-label" for="menu2">Add Detail </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="menu3">
                                    <label class="form-check-label" for="menu3">Enquiry</label>
                                </div>
                            </div>

                            <div class="col-4">
                                <br />
                                <input id="submit" ng-modal="submit" type="button" ng-click="submit()" class="btn btn-danger" value="Submit" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

