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
        if ($scope.staffId != 1) {
            document.getElementById("Franchise").style.display = "block";
            document.getElementById("Admin").style.display = "none";
            /*document.getElementById("clientmsg").style.display = "none";*/
        }
        else {
            document.getElementById("Franchise").style.display = "none";
            document.getElementById("Admin").style.display = "block";
            /*document.getElementById("clientmsg").style.display = "block";*/
        }

    }
    Onload();
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