<%@ Page Title="" Language="C#" MasterPageFile="~/Software/StudentPannel/MasterPage.master" AutoEventWireup="true" CodeFile="StudentDetail.aspx.cs" Inherits="Software_Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../../Angular/Angular.js"></script>
    <script src="../../Angular/Studentcontroller.js"></script>

    <div class="container" data-ng-app="Student">
        <div class="row" data-ng-controller="StudentDetail">
            <div class="pagee">
                <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                    <div class="card-body">
                        <h1 style="text-align:center">Add Student Detail</h1>
                        <br />
                        <div class="form-row">
                            <div class="col-6">
                                <label for="inputEmail4">Branch Name*</label>
                                <label> <strong>{{BranchName}}</strong></label>

                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Course Name*</label>
                                <label> <strong>{{CourseName}}</strong></label>
                            </div>

                            <div class="col-6">
                                <label for="inputEmail4">Session Name*</label>
                                <label> <strong>{{SessionName}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Student Name*</label>
                                <label> <strong>{{StudentName}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Father Name*</label>
                                <label> <strong>{{FatherName}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Mother Name*</label>
                                <label> <strong>{{MotherName}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Dob*</label>
                                <label> <strong>{{Dob}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Email*</label>
                                <label> <strong>{{Email}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Mobile*</label>
                                <label> <strong>{{Mobile}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">Student Image(Max Size 80 KB)*</label>
                                <img src="{{StudentImage}}" style="width:100px;height:100px"/>
                            </div>
                            <div class="col-12">
                                <label for="inputEmail4">Address*</label>
                                <label> <strong>{{Address}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">State Name*</label>
                                <label> <strong>{{State}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">District Name*</label>
                                <label> <strong>{{District}}</strong></label>
                            </div>
                            <div class="col-6">
                                <label for="inputEmail4">City Name*</label>
                                <label> <strong>{{City}}</strong></label>
                            </div>

                            <div class="col-6">
                                <label for="inputEmail4">Category*</label>
                                <label> <strong>{{Category}}</strong></label>
                            </div>

                            <div class="col-6">
                                <label for="inputEmail4">Gender*</label>
                                <label> <strong>{{Gender}}</strong></label>
                            </div>

                            <div class="col-6">
                                <label for="inputEmail4">Document Image(Max Size 100 KB)*</label>
                                <img src="{{DocumentImage}}" style="width:100px;height:100px"/>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

