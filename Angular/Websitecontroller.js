/// <reference path="angular.js" />

var app = angular.module('Website', []);

app.factory('Excel', function ($window) {
    var uri = 'data:application/vnd.ms-excel;base64,',
        template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="https://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
        base64 = function (s) { return $window.btoa(unescape(encodeURIComponent(s))); },
        format = function (s, c) { return s.replace(/{(\w+)}/g, function (m, p) { return c[p]; }) };
    return {
        tableToExcel: function (tableId, worksheetName) {
            var table = $(tableId),
                ctx = { worksheet: worksheetName, table: table.html() },
                href = uri + base64(format(template, ctx));
            return href;
        }
    };
})
 


app.controller('WebEnquiry', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.SubCategoryData = "";
    $scope.SubCategorydatalist = "";
    $scope.Categorylist = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.datalist = "";




    var insert = function () {
        var Fullname = document.getElementById("Fname").value +' ' +document.getElementById("Lname").value
        var user = {
            EnquiryName: Fullname,
            EnquiryEmail: document.getElementById("email").value,
            EnquiryMobileNo: document.getElementById("phone_number").value,
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insEnquiry').success(function (response) {
            alert(response.insEnquiryResult);
            $scope.$emit('UNLOAD')
            ///("#myModal").modal('hide');
            cancel();
        });

    }

    var cancel = function () {
        document.getElementById("Fname").value = "";
        document.getElementById("Lname").value = "";
        document.getElementById("email").value = "";
        document.getElementById("phone_number").value = "";
    }


    $scope.submit = function () {

        if (document.getElementById("Fname").value != null && document.getElementById("Fname").value != "" && document.getElementById("email").value != null && document.getElementById("email").value != "" && document.getElementById("phone_number").value != null && document.getElementById("phone_number").value != "") {
            insert();

        }
        else {
            alert("Please,Fill All Mandatory Fileds!");
        }

    }

}])

app.controller('booking', ['$scope', 'AngularService', '$http', function ($scope, AngularService, $http) {

    $scope.jackbtn = "Submit";
    $scope.SubCategoryData = "";
    $scope.SubCategorydatalist = "";
    $scope.Categorylist = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.datalist = "";
    $scope.TimeSlots = [];

    var bind_product = function () {

        var user = {
        };
        AngularService.get(user, 'viewPro').success(function (response) {
            $scope.Productlist = JSON.parse(response.viewProResult);
        });

    }
    bind_product();
    $scope.Getproduct = function (pro) {
        var fruitId = $scope.ddlProduct;
        var fruitName = $.grep($scope.Productlist, function (pro) {
            return pro.Id == fruitId;
        })[0].Name;

        $scope.ProductId = fruitId;
        document.getElementById("service").value = fruitId;
        $scope.ddlProduct = { Id: fruitId }
    }

    $scope.bind_TimeSlot = function () {

        var user = {
            BookingDate: document.getElementById("selectedDates").value
        };
        AngularService.get(user, 'viewTimeSlot').success(function (response) {
            $scope.TimeSlots = JSON.parse(response.viewTimeSlotResult);
        });

    }
    //bind_TimeSlot()

    $scope.selectTime = function (slot) {
        $scope.selectedTime = slot;   // store the selected slot
        $scope.SlotTime = slot.Id
        document.getElementById("TimeName").value = slot.Name

        console.log("Selected time:", slot.Name);
    };

    var insert = function () {
        var user = {
            BookingName: document.getElementById("name").value,
            BookingEmail: document.getElementById("email").value,
            BookingMobile: document.getElementById("phone").value,
            BookingDate: document.getElementById("selectedDates").value,
            BookingTime: $scope.SlotTime,
            BookingLocation: document.getElementById("Location").value,
            BookingProductId: $scope.ProductId,
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'Insbooking').success(function (response) {
            var splitValue = response.InsbookingResult.split(",");
            if (splitValue[0] === "Successfully Done") {
                const bookingData = {
                    BookingName: document.getElementById("name").value,
                    BookingEmail: document.getElementById("email").value,
                    BookingMobile: document.getElementById("phone").value,
                    BookingId: splitValue[1],
                    Recipt: splitValue[3],
                    Amount: splitValue[2]
                };

                // send to server and save session
                $http.post('payment/Payment.aspx/SaveBookingSession', { data: bookingData })
                    .then(function () {
                        window.location.href = "payment/Payment.aspx";
                    });
            }
            $scope.$emit('UNLOAD')
            cancel();
        });

    }

    var cancel = function () {
        document.getElementById("Fname").value = "";
        document.getElementById("Lname").value = "";
        document.getElementById("email").value = "";
        document.getElementById("phone_number").value = "";
    }


    $scope.submit = function () {

        if (document.getElementById("name").value != null && document.getElementById("name").value != "" && document.getElementById("email").value != null && document.getElementById("email").value != "" && document.getElementById("phone").value != null && document.getElementById("phone").value != "") {
            insert();

        }
        else {
            alert("Please,Fill All Mandatory Fileds!");
        }

    }

}])

app.controller('Enquiry', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.EnquiryData = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.datalist = "";



    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }
    //--------------Bind Data--------------//
    var bind_Enquiry = function () {

        var user = {
            StartDate: document.getElementById("Start_Date").value,
            EndDate: document.getElementById("End_Date").value
        };
        AngularService.get(user, 'viewWebenquiry').success(function (response) {
            $scope.EnquiryData = JSON.parse(response.viewWebenquiryResult);
        });

    }
    bind_Enquiry();

    $scope.submit = function () {
        if (document.getElementById("Start_Date").value != null && document.getElementById("Start_Date").value != "" && document.getElementById("End_Date").value != null && document.getElementById("End_Date").value != "") {
            bind_Enquiry();

        }
        else {
            alert("Please,Fill All Mandatory Fileds!");
        }

    }

}])

app.controller('Dashboard', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.jackout = "Logout";
    $scope.EnquiryData = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.datalist = "";
    $scope.selectedscl = [];

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1];
            $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];

        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "/Login/login.aspx";
            }
        }
    }

    var Onload = function () {

    }
    Onload();
}])

app.controller('MasterCategory', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.CategoryData = "";
    $scope.Editid = "";

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }
    //--------------Bind Data--------------//
    var bind_CategoryData = function () {

        var user = {
        };
        AngularService.get(user, 'ViewCategory').success(function (response) {
            $scope.CategoryData = JSON.parse(response.ViewCategoryResult);
        });

    }
    bind_CategoryData();

    $scope.editdata = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'ViewCategory').success(function (response) {
            var Categorydatalist = JSON.parse(response.ViewCategoryResult);
            document.getElementById("Category_Name").value = Categorydatalist[0].CategoryName;
            $scope.Editid = Categorydatalist[0].Id;
            $scope.jackbtn = "Update";


        });
    }

    var insert = function () {

        var user = {
            CatName: document.getElementById("Category_Name").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insCategory').success(function (response) {
            alert(response.insCategoryResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
        });

    }

    var update = function () {

        var user = {
            Id: $scope.Editid,
            CatName: document.getElementById("Category_Name").value,
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'upsCategory').success(function (response) {
            alert(response.upsCategoryResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delCategory').success(function (response) {
            alert(response.delCategoryResult);
            bind_CategoryData();
        });
    }

    var cancel = function () {
        document.getElementById("Category_Name").value = "";

    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != "") {

                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != "") {

                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('SubCategory', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.SubCategoryData = "";
    $scope.SubCategorydatalist = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.kbDetail = "";


    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }

    var bind_Category = function () {

        var user = {

        };
        AngularService.get(user, 'ViewCategory').success(function (response) {
            $scope.Categorylist = JSON.parse(response.ViewCategoryResult);
        });

    }
    bind_Category();
    $scope.GetCategory = function (Cat) {
        var fruitId = $scope.ddlCategory;
        var fruitName = $.grep($scope.Categorylist, function (Cat) {
            return Cat.Id == fruitId;
        })[0].CategoryName;

        $scope.CategoryId = fruitId;
        $scope.ddlCategory = { Id: fruitId }
    }

    //--------------Bind Data--------------//
    var bind_SubCategoryData = function () {

        var user = {
        };
        AngularService.get(user, 'viewSubCat').success(function (response) {
            $scope.SubCategoryData = JSON.parse(response.viewSubCatResult);
        });

    }
    bind_SubCategoryData();

    $scope.editdata = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'viewSubCat').success(function (response) {
            var SubCategorydatalist = JSON.parse(response.viewSubCatResult);
            document.getElementById("SubCategory_Name").value = SubCategorydatalist[0].SubCategoryName;
            $scope.Editid = SubCategorydatalist[0].Id;
            $scope.ddlCategory = { Id: SubCategorydatalist[0].CategoryId };
            $scope.CategoryId = SubCategorydatalist[0].CategoryId;
            CKEDITOR.instances.editor1.setData(SubCategorydatalist[0].CategoryDesc);
            CKEDITOR.instances.editor2.setData(SubCategorydatalist[0].CategoryKeyBenefit);
            document.getElementById("design").value = SubCategorydatalist[0].Image;
            $scope.jackbtn = "Update";


        });
    }

    var insert = function () {

        var user = {
            SCatName: document.getElementById("SubCategory_Name").value,
            SCatId: $scope.CategoryId,
            SCatDesc: $scope.jDetail,
            KeyBenefit: $scope.kbDetail,
            KeyBenefitImg: document.getElementById("design").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insSubCat').success(function (response) {
            alert(response.insSubCatResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_SubCategoryData();
        });

    }

    var update = function () {

        var user = {
            Id: $scope.Editid,
            SCatName: document.getElementById("SubCategory_Name").value,
            cCatId: $scope.CategoryId,
            SCatDesc: $scope.jDetail,
            KeyBenefit: $scope.kbDetail,
            KeyBenefitImg: document.getElementById("design").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'updSubCat').success(function (response) {
            alert(response.updSubCatResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_SubCategoryData();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delSubCategory').success(function (response) {
            alert(response.delSubCategoryResult);
            bind_SubCategoryData();
        });
    }

    var cancel = function () {
        document.getElementById("SubCategory_Name").value = "";
        $scope.CategoryId = "";
        $scope.ddlCategory = "";
        CKEDITOR.instances.editor1.setData('');
        CKEDITOR.instances.editor2.setData('');
        $scope.jDetail = "";
        $scope.kbDetail = "";
        document.getElementById("design").value = "";
        document.getElementById("Image").value = "";
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("SubCategory_Name").value != null && document.getElementById("SubCategory_Name").value != "" && $scope.CategoryId != null
                && $scope.CategoryId != "" && document.getElementById("design").value != null && document.getElementById("design").value != "") {
                $scope.jDetail = CKEDITOR.instances.editor1.getData();
                $scope.kbDetail = CKEDITOR.instances.editor2.getData();
                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("SubCategory_Name").value != null && document.getElementById("SubCategory_Name").value != "" && $scope.CategoryId != null
                && $scope.CategoryId != "" && document.getElementById("design").value != null && document.getElementById("design").value != "") {
                $scope.jDetail = CKEDITOR.instances.editor1.getData();
                $scope.kbDetail = CKEDITOR.instances.editor2.getData();
                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('TextDetail', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.SubCategoryData = "";
    $scope.SubCategorydatalist = "";
    $scope.Categorylist = "";
    $scope.Editid = "";
    $scope.jDetail = "";
    $scope.kbDetail = "";
    $scope.datalist = "";


    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }

    var bind_Category = function () {

        var user = {

        };
        AngularService.get(user, 'ViewCategory').success(function (response) {
            $scope.Categorylist = JSON.parse(response.ViewCategoryResult);
        });

    }
    bind_Category();
    $scope.GetCategory = function (Cat) {
        var fruitId = $scope.ddlCategory;
        var fruitName = $.grep($scope.Categorylist, function (Cat) {
            return Cat.Id == fruitId;
        })[0].CategoryName;

        $scope.CategoryId = fruitId;
        if ($scope.CategoryId != null && $scope.CategoryId != "") {
            bind_SubCategory($scope.CategoryId);
            bind_Detail($scope.CategoryId);
        }
        $scope.ddlCategory = { Id: fruitId }
    }

    var bind_SubCategory = function (id) {

        var user = {
            Id: id
        };
        AngularService.get(user, 'DrpSubCat').success(function (response) {
            $scope.SubCategorylist = JSON.parse(response.DrpSubCatResult);
        });

    }
    $scope.GetSubCategory = function (subcat) {
        var fruitId = $scope.ddlSubCategory;
        var fruitName = $.grep($scope.SubCategorylist, function (subcat) {
            return subcat.Id == fruitId;
        })[0].SubCategoryName;

        $scope.SubCategoryId = fruitId;
        if ($scope.SubCategoryId != null && $scope.SubCategoryId != "") {
            bind_Detail($scope.CategoryId, $scope.SubCategoryId);
        }
        $scope.ddlSubCategory = { Id: fruitId }
    }

    //--------------Bind Data--------------//
    var bind_Detail = function (Cat, sub) {

        var user = {

        };
        AngularService.get(user, 'ViewProduct').success(function (response) {
            $scope.DetailData = JSON.parse(response.ViewProductResult);
        });

    }
    bind_Detail();

    $scope.editdata = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'ViewProduct').success(function (response) {
            var datalist = JSON.parse(response.ViewProductResult);
            document.getElementById("Title").value = datalist[0].Title;
            document.getElementById("design").value = datalist[0].Image;
            document.getElementById("Price").value = datalist[0].Price;
            $scope.Editid = datalist[0].Id;
            $scope.ddlCategory = { Id: datalist[0].CatId };
            $scope.CategoryId = datalist[0].CatId;
            bind_SubCategory(datalist[0].CatId);
            $scope.ddlSubCategory = { Id: datalist[0].SubCatId };
            $scope.SubCategoryId = datalist[0].SubCatId;
            document.getElementById("Keydesign").value = datalist[0].KeyBenefitImg;
            document.getElementById("OrderBy").value = datalist[0].OrderBy;
            CKEDITOR.instances.editor1.setData(datalist[0].Description);
            CKEDITOR.instances.editor2.setData(datalist[0].KeyBenefit);
            $scope.jackbtn = "Update";
        });
    }

    var insert = function () {

        var user = {
            ProductName: document.getElementById("Title").value,
            Productprice: document.getElementById("Price").value,
            ProductDescription: $scope.jDetail,
            ProductImage: document.getElementById("design").value,
            //CatId: $scope.CategoryId,
            ProductSubCatId: $scope.SubCategoryId,
            ProductInsBy: $scope.staffId,
            KeyBenefit: $scope.kbDetail,
            KeyBenefitImg: document.getElementById("Keydesign").value,
            orderby: document.getElementById("OrderBy").value,
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'InsProduct').success(function (response) {
            alert(response.InsProductResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Detail();
        });

    }

    var update = function () {

        var user = {
            ProductId: $scope.Editid,
            ProductName: document.getElementById("Title").value,
            Productprice: document.getElementById("Price").value,
            ProductDescription: $scope.jDetail,
            ProductImage: document.getElementById("design").value,
            //CatId: $scope.CategoryId,
            ProductSubCatId: $scope.SubCategoryId,
            KeyBenefit: $scope.kbDetail,
            KeyBenefitImg: document.getElementById("Keydesign").value,
            orderby: document.getElementById("OrderBy").value,
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'upsProduct').success(function (response) {
            alert(response.upsProductResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Detail();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delDetail = function (id) {
        alert(id);
        var user = {
            ProductId: id
        };
        AngularService.get(user, 'delProduct').success(function (response) {
            alert(response.delProductResult);
            bind_Detail();
        });
    }

    var cancel = function () {
        document.getElementById("Title").value = "";
        document.getElementById("Price").value = "";
        document.getElementById("design").value = "";
        document.getElementById("Image").value = "";
        document.getElementById("keyImage").value = "";
        document.getElementById("Keydesign").value = "";
        document.getElementById("OrderBy").value = "";
        $scope.jDetail = "";
        $scope.kbDetail = "";
        $scope.CategoryId = "";
        $scope.ddlCategory = "";
        $scope.SubCategoryId = "";
        $scope.ddlSubCategory = "";
        CKEDITOR.instances.editor1.setData('');
        CKEDITOR.instances.editor2.setData('');
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if ($scope.CategoryId != null && $scope.CategoryId != "" && $scope.SubCategoryId != null && $scope.SubCategoryId != "") {
                $scope.jDetail = CKEDITOR.instances.editor1.getData();
                $scope.kbDetail = CKEDITOR.instances.editor2.getData();
                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if ($scope.CategoryId != null && $scope.CategoryId != "" && $scope.SubCategoryId != null && $scope.SubCategoryId != "") {
                $scope.jDetail = CKEDITOR.instances.editor1.getData();
                $scope.kbDetail = CKEDITOR.instances.editor2.getData();
                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('Login', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jid = "";
    $scope.jackbtn = "Login";
    $scope.JackIP = "";

    var get_Login = function () {
        if ($scope.UName != null && $scope.Upwd != null) {
            var user = {
                LoginName: $scope.UName,
                password: $scope.Upwd
            };
            AngularService.get(user, 'MasterLogin').success(function (response) {
                var jacklist = JSON.parse(response.MasterLoginResult);

                var getlist = jacklist.split(",");
                if (getlist[0] === "Ok") {
                    sessionStorage.setItem("office-key", jacklist);
                    window.location.href = "../Software/Admin/Default.aspx?log=" + getlist[1] + "&sts=" + getlist[9] + "&name=" + getlist[4] + "&balance=" + getlist[11] + "&type=" + getlist[11];
                }
                else {
                    alert("Invalid UserName or Password");
                }
                $scope.loading = false;

            });
        }
        else {
            alert("Please,Fill All Mendontary Fields!");
        }

    }

    $scope.clickme = function () {
        if (window.sessionStorage) {
            get_Login();
        }
    }
    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }

}])

app.controller('GalleryCat', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.CategoryData = "";
    $scope.Editid = "";

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }
    //--------------Bind Data--------------//
    var bind_CategoryData = function () {

        var user = {
            detailTypeId:"3"
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            $scope.CategoryData = JSON.parse(response.ViewTypeDetailResult);
        });

    }
    bind_CategoryData();

    $scope.editdata = function (id) {
        var user = {
            detailTypeId: "3",
            DetailId: id
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            var Categorydatalist = JSON.parse(response.ViewTypeDetailResult);
            document.getElementById("Category_Name").value = Categorydatalist[0].Name;
            document.getElementById("OrderNo").value = Categorydatalist[0].orderNo;
            $scope.Editid = Categorydatalist[0].Id;
            $scope.jackbtn = "Update";


        });
    }

    var insert = function () {

        var user = {
            detailTypeId: "3",
            DetailName: document.getElementById("Category_Name").value,
            DetailOrderNo: document.getElementById("OrderNo").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insTypeDetail').success(function (response) {
            alert(response.insTypeDetailResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
        });

    }

    var update = function () {

        var user = {
            DetailId: $scope.Editid,
            detailTypeId: "3",
            DetailName: document.getElementById("Category_Name").value,
            DetailOrderNo: document.getElementById("OrderNo").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'updTypeDetail').success(function (response) {
            alert(response.updTypeDetailResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delTypeDetail').success(function (response) {
            alert(response.delTypeDetailResult);
            bind_CategoryData();
        });
    }

    var cancel = function () {
        document.getElementById("Category_Name").value = "";
        document.getElementById("OrderNo").value = ""; 
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != ""
                && document.getElementById("OrderNo").value != null && document.getElementById("OrderNo").value != "") {

                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != ""
                && document.getElementById("OrderNo").value != null && document.getElementById("OrderNo").value != "")
            {

                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('Gallery', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.CategoryData = "";
    $scope.Editid = "";

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }

    var bind_Category = function () {

        var user = {
            detailTypeId:"3"
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            $scope.Categorylist = JSON.parse(response.ViewTypeDetailResult);
        });

    }
    bind_Category();
    $scope.GetCategory = function (Cat) {
        var fruitId = $scope.ddlCategory;
        var fruitName = $.grep($scope.Categorylist, function (Cat) {
            return Cat.Id == fruitId;
        })[0].Name;

        $scope.CategoryId = fruitId;
        $scope.ddlCategory = { Id: fruitId }
    }
    //--------------Bind Data--------------//
    var bind_Data = function () {

        var user = {
            detailTypeId: "3",
        };
        AngularService.get(user, 'viewData').success(function (response) {
            $scope.DataList = JSON.parse(response.viewDataResult);
        });

    }
    bind_Data();

    $scope.editdata = function (id) {
        var user = {
            detailTypeId: "3",
            DetailId: id
        };
        AngularService.get(user, 'viewData').success(function (response) {
            var Categorydatalist = JSON.parse(response.viewDataResult);
            document.getElementById("Image_Name").value = Categorydatalist[0].Name;
            document.getElementById("design").value = Categorydatalist[0].orderNo;
            $scope.ddlCategory = { Id: Categorydatalist[0].DetailId };
            $scope.CategoryId = Categorydatalist[0].DetailId;
            $scope.Editid = Categorydatalist[0].Id;
            $scope.jackbtn = "Update";
        });
    }

    var insert = function () {

        var user = {
            DetailId: $scope.CategoryId,
            Name: document.getElementById("Image_Name").value,
            Image: document.getElementById("design").value,
            Description:""
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insData').success(function (response) {
            alert(response.insDataResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Data();
        });

    }

    var update = function () {

        var user = {
            mdId: $scope.Editid,
            DetailId: $scope.CategoryId,
            Name: document.getElementById("Image_Name").value,
            Image: document.getElementById("design").value,
            Description: ""
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'updData').success(function (response) {
            alert(response.updDataResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Data();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delData').success(function (response) {
            alert(response.delDataResult);
            bind_Data();
        });
    }

    var cancel = function () {
        document.getElementById("Image_Name").value = "";
        document.getElementById("Image").value = "";
        document.getElementById("design").value = "";
        $scope.CategoryId = "";
        $scope.ddlCategory = "";
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("Image_Name").value != null && document.getElementById("Image_Name").value != "" && $scope.CategoryId != null && $scope.CategoryId != ""
                && document.getElementById("design").value != null && document.getElementById("design").value != "") {

                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("Image_Name").value != null && document.getElementById("Image_Name").value != "" && $scope.CategoryId != null && $scope.CategoryId != ""
                && document.getElementById("design").value != null && document.getElementById("design").value != "") {

                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('BlogCat', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.CategoryData = "";
    $scope.Editid = "";

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }
    //--------------Bind Data--------------//
    var bind_CategoryData = function () {

        var user = {
            detailTypeId: "4"
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            $scope.CategoryData = JSON.parse(response.ViewTypeDetailResult);
        });

    }
    bind_CategoryData();

    $scope.editdata = function (id) {
        var user = {
            detailTypeId: "4",
            DetailId: id
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            var Categorydatalist = JSON.parse(response.ViewTypeDetailResult);
            document.getElementById("Category_Name").value = Categorydatalist[0].Name;
            document.getElementById("OrderNo").value = Categorydatalist[0].orderNo;
            $scope.Editid = Categorydatalist[0].Id;
            $scope.jackbtn = "Update";


        });
    }

    var insert = function () {

        var user = {
            detailTypeId: "4",
            DetailName: document.getElementById("Category_Name").value,
            DetailOrderNo: document.getElementById("OrderNo").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insTypeDetail').success(function (response) {
            alert(response.insTypeDetailResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
        });

    }

    var update = function () {

        var user = {
            DetailId: $scope.Editid,
            detailTypeId: "4",
            DetailName: document.getElementById("Category_Name").value,
            DetailOrderNo: document.getElementById("OrderNo").value
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'updTypeDetail').success(function (response) {
            alert(response.updTypeDetailResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_CategoryData();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delTypeDetail').success(function (response) {
            alert(response.delTypeDetailResult);
            bind_CategoryData();
        });
    }

    var cancel = function () {
        document.getElementById("Category_Name").value = "";
        document.getElementById("OrderNo").value = "";
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != ""
                && document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != "") {

                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("Category_Name").value != null && document.getElementById("Category_Name"
                && document.getElementById("Category_Name").value != null && document.getElementById("Category_Name").value != "").value != "") {

                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

app.controller('Blog', ['$scope', 'AngularService', function ($scope, AngularService) {

    $scope.jackbtn = "Submit";
    $scope.CategoryData = "";
    $scope.Editid = "";

    if (window.sessionStorage) {
        if (sessionStorage.getItem("office-key") == null || sessionStorage.getItem("office-key") == "") {

            window.location.href = "../../Login/Login.aspx";

        }
        else {
            var userdetail = sessionStorage.getItem("office-key");
            var getdetail = userdetail.split(",");
            $scope.logname = getdetail[4];
            $scope.sessionId = 1;
            $scope.groupid = getdetail[1]; $scope.branchbalance = getdetail[11];
            $scope.branchcontact = getdetail[10];
            $scope.staffId = getdetail[1];
            // alert($scope.branchcontact);
            //alert($scope.groupid);
            //alert(userdetail);
        }
    }

    //----------------Logout--------------//
    $scope.outme = function () {
        if ($scope.jackout == "Logout") {
            //alert("Enter");
            if (sessionStorage.getItem("office-key") != null) {
                sessionStorage.clear();

                window.location.href = "../Login/login.aspx";
            }
        }
    }

    var bind_Category = function () {

        var user = {
            detailTypeId: "4"
        };
        AngularService.get(user, 'ViewTypeDetail').success(function (response) {
            $scope.Categorylist = JSON.parse(response.ViewTypeDetailResult);
        });

    }
    bind_Category();
    $scope.GetCategory = function (Cat) {
        var fruitId = $scope.ddlCategory;
        var fruitName = $.grep($scope.Categorylist, function (Cat) {
            return Cat.Id == fruitId;
        })[0].Name;

        $scope.CategoryId = fruitId;
        $scope.ddlCategory = { Id: fruitId }
    }
    //--------------Bind Data--------------//
    var bind_Data = function () {

        var user = {
            detailTypeId: "4",
        };
        AngularService.get(user, 'viewData').success(function (response) {
            $scope.DataList = JSON.parse(response.viewDataResult);
        });

    }
    bind_Data();

    $scope.editdata = function (id) {
        var user = {
            detailTypeId: "4",
            DetailId: id
        };
        AngularService.get(user, 'viewData').success(function (response) {
            var Categorydatalist = JSON.parse(response.viewDataResult);
            document.getElementById("Blog_Name").value = Categorydatalist[0].Name;
            document.getElementById("design").value = Categorydatalist[0].orderNo;
            $scope.ddlCategory = { Id: Categorydatalist[0].DetailId };
            $scope.CategoryId = Categorydatalist[0].DetailId;
            $scope.Editid = Categorydatalist[0].Id;
            $scope.jackbtn = "Update";
        });
    }

    var insert = function () {

        var user = {
            DetailId: $scope.CategoryId,
            Name: document.getElementById("Blog_Name").value,
            Image: document.getElementById("design").value,
            Description: $scope.jDetail
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'insData').success(function (response) {
            alert(response.insDataResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Data();
        });

    }

    var update = function () {

        var user = {
            mdId: $scope.Editid,
            DetailId: $scope.CategoryId,
            Name: document.getElementById("Blog_Name").value,
            Image: document.getElementById("design").value,
            Description: $scope.jDetail
        };
        $scope.$emit('LOAD')
        AngularService.get(user, 'updData').success(function (response) {
            alert(response.updDataResult);
            $scope.$emit('UNLOAD')
            cancel();
            bind_Data();
            $scope.jackbtn = "Submit";
        });

    }

    $scope.delClient = function (id) {
        var user = {
            Id: id
        };
        AngularService.get(user, 'delData').success(function (response) {
            alert(response.delDataResult);
            bind_Data();
        });
    }

    var cancel = function () {
        document.getElementById("Blog_Name").value = "";
        document.getElementById("Image").value = "";
        document.getElementById("design").value = "";
        $scope.CategoryId = "";
        $scope.ddlCategory = "";
        CKEDITOR.instances.editor1.setData('');
        $scope.jDetail = "";
    }


    $scope.submit = function () {
        if ($scope.jackbtn != "Update") {
            if (document.getElementById("Blog_Name").value != null && document.getElementById("Blog_Name").value != "" && $scope.CategoryId != null && $scope.CategoryId != ""
                && document.getElementById("design").value != null && document.getElementById("design").value != "") {
                $scope.jDetail = CKEDITOR.instances.editor1.getData();
                insert();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
        else {
            if (document.getElementById("Blog_Name").value != null && document.getElementById("Blog_Name").value != "" && $scope.CategoryId != null && $scope.CategoryId != ""
                && document.getElementById("design").value != null && document.getElementById("design").value != "") {

                update();

            }
            else {
                alert("Please,Fill All Mandatory Fileds!");
            }
        }
    }

}])

    .controller('appController', ['$scope', function ($scope) {

        $scope.$on('LOAD', function () { $scope.loading = true })
        $scope.$on('UNLOAD', function () { $scope.loading = false })
    }])


app.factory('AngularService', ['$http', function ($http) {
    return {
        //load data service    
        get: function (user, mthd) {
            return $http({
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=utf-8'
                },
                url: '../../Service.svc/' + mthd,
                data: user
            });
        },

        ks: function () {
            alert('ks');
        },

        bind_group: function () {

            var user = {
                id: 2
            };
            AngularService.get(user, 'viewMasterGroupdownline').success(function (response) {
                var grplist = JSON.parse(response.viewMasterGroupdownlineResult);
                alert(grplist);
                alert("In BindGroup");
                return grplist;
            });

        }
    };
}]);