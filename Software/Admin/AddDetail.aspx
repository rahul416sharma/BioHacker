<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddDetail.aspx.cs" Inherits="Software_Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

 
	<script src="../../Angular/excelexportjs.js"></script>

	<script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>

	<script>

		$(function () {


			$("#Image").on("change", function () {
				//alert("success");
				var fileUpload = $("#Image").get(0);
				var files = fileUpload.files;
				var test = new FormData();
				for (var i = 0; i < files.length; i++) {
					test.append(files[i].name, files[i]);
				}
				$.ajax({
					url: "../../ImageUpload.ashx",
					type: "POST",
					contentType: false,
					processData: false,
					data: test,
					// dataType: "json",
					success: function (result) {

						var getstr = result;
						var getme = getstr.replace(/\\/g, '/');


						//var str = getme; //"fakepath/boost/job.jpb";
						var n = getme.indexOf("AgentImage");

						$("#design").val("../" + getme.substring(n));
						//$("#lblfile").css("color", "green");
						alert("Photo Uploaded Successfully");
						//alert(document.getElementById("design").value);
					},
					error: function (err) {
						alert(err.statusText);
					}
				});
			});
		})

        $(function () {
            $("#keyImage").on("change", function () {
                //alert("success");
                var fileUpload = $("#keyImage").get(0);
                var files = fileUpload.files;
                var test = new FormData();
                for (var i = 0; i < files.length; i++) {
                    test.append(files[i].name, files[i]);
                }
                $.ajax({
                    url: "../../ImageUpload.ashx",
                    type: "POST",
                    contentType: false,
                    processData: false,
                    data: test,
                    // dataType: "json",
                    success: function (result) {

                        var getstr = result;
                        var getme = getstr.replace(/\\/g, '/');


                        //var str = getme; //"fakepath/boost/job.jpb";
                        var n = getme.indexOf("AgentImage");

                        $("#Keydesign").val("../" + getme.substring(n));
                        //$("#lblfile").css("color", "green");
                        alert("Photo Uploaded Successfully");
                        //alert(document.getElementById("design").value);
                    },
                    error: function (err) {
                        alert(err.statusText);
                    }
                });
            });
        })
    </script>

	<div class="container" data-ng-app="Website">
		<div class="row" data-ng-controller="TextDetail">
			<div class="card">
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Add Detail</h1>
						<br />
						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Category Name*</label>
									<select class="form-control" style="height: 43px;" ng-options="Cat.Id as Cat.CategoryName for Cat in Categorylist track by Cat.Id" ng-model="ddlCategory" ng-change="GetCategory(value)">

										<option value="">--Select Category--</option>

									</select>
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Sub-Category Name*</label>
									<select class="form-control" style="height: 43px;" ng-options="subcat.Id as subcat.SubCategoryName for subcat in SubCategorylist track by subcat.Id" ng-model="ddlSubCategory" ng-change="GetSubCategory(value)">

										<option value="">--Select Sub-Category--</option>

									</select>
								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Title*</label>
									<input type="text" id="Title" ng-modal="Title" class="form-control" placeholder="Title">
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Price*</label>
									<input type="text" id="Price" ng-modal="Sub-Title" class="form-control" placeholder="Price">
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Image</label>
									<input type="file" id="Image" ng-modal="Front_Design" class="form-control" placeholder="Image">
									<input id="design" type="hidden" />
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Key Benefit Image</label>
									<input type="file" id="keyImage" ng-modal="Front_Design" class="form-control" placeholder="Image">
									<input id="Keydesign" type="hidden" />
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Order By*</label>
									<input type="text" id="OrderBy" ng-modal="Sub-Title" class="form-control" placeholder="Order By">
								</div>
							</div>
							<br />
							<div class="col-12">
								<div class="mb-3">
									<label for="inputEmail4">Description*</label>
									<textarea class="form-control" id="editor1" name="editor1" rows="6"></textarea>
									<div id="editor_error"></div>
									<script>
										CKEDITOR.replace('editor1');
									</script>
								</div>
							</div>
							<div class="col-12">
								<div class="mb-3">
									<label for="inputEmail4">Key Benifit*</label>
									<textarea class="form-control" id="editor2" name="editor2" rows="6"></textarea>
									<div id="editor_error1"></div>
									<script>
										CKEDITOR.replace('editor2');
									</script>
								</div>
							</div>
							<div class="col-4">
								<br />
								<input id="submit" ng-modal="submit" type="button" ng-click="submit()" class="btn btn-danger" value="{{jackbtn}}" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Detail Information</h1>
						<br />
						<div class="card-block table-border-style">
							<div class="table-responsive">
								<table id="demo-foo-addrow" class="table table-bordered table-hover toggle-circle" data-page-size="50" style="overflow-x: scroll;">
									<thead>
										<tr class="success">
											<th data-sort-initial="true" data-toggle="true">Sr.No</th>
											<th>Category Name</th>
											<th>Sub-Category Name</th>
											<th>Title</th>
											<th>Price</th>
											<th>Description</th>
											<th>Key Benefit Description</th>
											<th>Image</th>
											<th>Key Benefit Image</th>
											<th>Order By</th>
											<th>Ins Date</th>
											<th data-sort-ignore="true" class="min-width">Action</th>
										</tr>
									</thead>
									<div class="form-inline padding-bottom-15">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="exportexcel1()">Export To Excel</a>
												</div>
											</div>
											<div class="col-sm-6 text-right m-b-20">
												<div class="form-group">
													<input id="demo-input-search2" ng-model="search" type="text" placeholder="Search" class="form-control"
														autocomplete="off">
												</div>

											</div>
										</div>
									</div>
									<tbody>
										<tr ng-repeat="d in DetailData  | filter : search">
											<td>{{$index+1}}</td>
											<td>{{d.CategoryName}}</td>
											<td>{{d.SubCategoryName}}</td>
											<td>{{d.Title}}</td>
											<td>{{d.Price}}</td>
											<td>{{d.Description}}</td>
											<td>{{d.KeyBenefit}}</td>
											<td>
												<img src="../{{d.Image}}" style="height: 100px; width: 100px" /></td>
											<td>
												<img src="../{{d.KeyBenefitImg}}" style="height: 100px; width: 100px" /></td>
											<td>{{d.OrderBy}}</td>
											<td>{{d.InsDate}}</td>
											<td style="text-align: center">
												<a class="btn btn-soft-primary btn-sm" href="#" data-original-title="Edit Task" ng-click="editdata(d.Id);"><iconify-icon icon="solar:pen-2-broken" class="align-middle fs-18"></iconify-icon></a>
												&nbsp<a class="btn btn-soft-danger btn-sm" href="#" data-original-title="Delete" data-ng-click="delDetail(d.Id);"><iconify-icon icon="solar:trash-bin-minimalistic-2-broken" class="align-middle fs-18"></iconify-icon></a>
												&nbsp
											</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="8">
												<div class="text-right">
													<ul class="pagination" style="display: inline-block; list-style: none;">
													</ul>
												</div>
											</td>
										</tr>
									</tfoot>
								</table>

								<script>

									function exportexcel1() {
										$("#demo-foo-addrow").table2excel({
											name: "Table2Excel",
											filename: "FranchiseDetail",
											fileext: ".xls"
										});
									}
								</script>

								<script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

