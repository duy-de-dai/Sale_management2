var app = angular.module('myApp', ['ngMaterial', 'ngRoute'])

app.config(function ($routeProvider, $locationProvider) {

    $locationProvider.html5Mode(true);

    $routeProvider
    .when('/', {
        templateUrl: 'pages/product_list.html',
        controller: 'productListController',
    })

    .when('/danh_sach_san_pham', {
        templateUrl: 'pages/product_list.html',
        controller: 'productListController'
    })

    .when('/them_san_pham', {
        templateUrl: 'pages/add_product.html',
        controller: 'addProductController'
    })
    .when('/login', {
        templateUrl: 'pages/login.html',

        controller: 'loginController'
    })
    .when('/thong_ke', {
        templateUrl: 'pages/stats.html',

        controller: 'statsController'
    })

    .otherwise({ redirectTo: '/' })
})

// controller chinh
app.controller('MyController', function ($scope, $mdToast, $rootScope, $location) {
    $rootScope.dangxuat = function () {
        localStorage.setItem('loggedIn', '');
        $location.path('/login');
    }
})


// xu li dang nhap
app
.controller('loginController', function ($scope, $mdToast, $rootScope, $http, $location) {
    $rootScope.menubentrai = 'd-none';
    $rootScope.menutren = 'd-none';

    $scope.dangnhap = function (nguoidung) {
        console.log(nguoidung.username);
        console.log(nguoidung.password);

        var dulieu = $.param({
            username: nguoidung.username,
            password: nguoidung.password

        });
        var urlAPI = 'http://localhost/Sale_management/API/Dienthoai/ApiLogin';
        console.log(dulieu);
        var config = {
            headers: {
                'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
            }
        }
        $http.post(urlAPI, dulieu, config)
        .then(function (res) {
            if (res.data.trangthai == 'dntc') {
                        //chuyen huong
                localStorage.setItem('loggedIn', 'roi');
                $location.path('/');

                        // hien thi lai menu tren
                $rootScope.menutren = '';
                $rootScope.menubentrai = '';
                $scope.trangthai('Đăng nhập thành công');

            }
            else {
                $scope.trangthai('Đăng nhập thất bại, kiểm tra lại mật khẩu hoặc tên đăng nhập');

            }
        }, function (er) {
            console.log(er.data);
        })
    }
})

// danh sach dien thoai
app.controller('productListController', function ($scope, $mdToast, $rootScope, $location, $http) {

    if (localStorage.getItem('loggedIn') != 'roi') {
        $location.path('/login');
    }
    
    //duong dan api
    var urlAPI = "http://localhost/Sale_management/API/Dienthoai/APIgetdata";

    
    //lay du lieu
    $http.get(urlAPI).then(function (res) {
        $rootScope.productData = res.data;

    }, function (er) {

    })

    // lay du lieu cho bang thong ke( dat day de fix bug)
    $http.get("http://localhost/Sale_management/API/Thongke/APIgetData").then(function (res) {

        $rootScope.thongkeData = res.data;
    }, function (er) {

    })

    $scope.doihienthi = function (dienthoai) {
        dienthoai.hienthi = !dienthoai.hienthi;
    }
    $scope.luudulieu = function (dienthoai) {
        dienthoai.hienthi = !dienthoai.hienthi;
        //lay du lieu ve da

        var dulieu = $.param({
            id: dienthoai.id,
            name: dienthoai.name,
            cost: dienthoai.cost,
            image: dienthoai.image,
            size: dienthoai.size,
            storage: dienthoai.storage,
            details: dienthoai.details

        })

        console.log(dulieu);
        var urlAPI = 'http://localhost/Sale_management/API/Dienthoai/APIupdateData';



        var config = {
            headers: {
                'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
            }
        }
        $http.post(urlAPI, dulieu, config)
        .then(function (res) {
                //console.log(res.data);
            $scope.trangthai('Cập nhật dữ liệu thành công');
        }, function (er) {
            console.log(er.data);
            $scope.trangthai('Cập nhật dữ liệu thất bại');

        })

    }
    //hien thi modal
    $scope.openModal = function() {
        $('#deleteModal').modal('show');
    }

    $scope.xoadulieu = function(dienthoai)
    {

        var urlAPI = 'http://localhost/Sale_management/API/Dienthoai/deleteData';
        var config = {
            headers: {
                'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
            }
        }
        var dulieu = $.param({
            id: dienthoai.id,
        })
        $http.post(urlAPI, dulieu, config)
        .then(function (res) {
            //thong bao
            $scope.trangthai('Xóa thành công');

            // xu li modal
            $('#deleteModal').modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();

            $http.get("http://localhost/Sale_management/API/Dienthoai/APIgetdata").then(function (res) {
                $rootScope.productData = res.data;

            })

        }, function (er) {
            console.log(er.data);
            $scope.trangthai('Xóa thất bại');

        })
    }

})  


// Thêm sản phẩm
app.controller('addProductController', function ($scope, $http, $rootScope, $location) {
    if (localStorage.getItem('loggedIn') != 'roi') {
        $location.path('/login');
    }
    $scope.addProduct = function () {

        var dulieu1 = $.param({
            name: $scope.name,
            cost: $scope.cost,
            image: $scope.image,
            size: $scope.size,
            storage: $scope.storage,
            details: $scope.details

        })

        var dulieu2 = $.param({
            name: $scope.name,
            image: $scope.image,
            gia_ban: $scope.cost,
            gia_nhap: $scope.gia_nhap,
            da_ban: $scope.da_ban,
            ton_kho: $scope.ton_kho
        })

        var urlAPI1 = "http://localhost/Sale_management/API/Dienthoai/addDienthoai";
        var urlAPI2 = "http://localhost/Sale_management/API/Thongke/addDienthoai";

        var config = {
            headers: {
                'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
            }
        }

        $http.post(urlAPI1, dulieu1, config)
        .then(function (res) {
            $http.post(urlAPI2, dulieu2, config)
            .then(function(res){
                $http.get("http://localhost/Sale_management/API/Thongke/APIgetData").then(function (res) {
                    $rootScope.thongkeData = res.data;
                })

                $scope.trangthai("Thành công");
            })


        },
        function (er) {
            console.log(er.data);
            $scope.trangthai("Thất bại");

        })

        
    }
})


// Thống kê
app.controller('statsController', function ($scope, $location, $http, $rootScope) {


    if (localStorage.getItem('loggedIn') != 'roi') {
        $location.path('/login');
    }

    var i = 0;
    var length = Object.keys($rootScope.thongkeData).length;
    var Body = document.getElementById('Body');

    while (i < length) {

        var tr = document.createElement('tr');

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].id;
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].name;
        tr.appendChild(td);

        var td = document.createElement('td');
        var image=document.createElement('IMG');
        image.setAttribute("src",$rootScope.thongkeData[i].image);
        image.setAttribute("style","height: 5rem; width: auto");
        td.appendChild(image);
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].gia_nhap;
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].gia_ban;
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].da_ban;
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].loi_nhuan;
        tr.appendChild(td);

        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].ton_kho;
        tr.appendChild(td);
        
        var td = document.createElement('td');
        td.innerHTML = $rootScope.thongkeData[i].createdate;
        tr.appendChild(td);
        
        Body.appendChild(tr);
        i++;
    }
})


// controler xu li thong bao
app.controller('notificationController', function ($scope, $mdToast, $http, $rootScope, $anchorScroll) {


    var last = {
        bottom: false,
        top: true,
        left: false,
        right: true
    };

    $scope.toastPosition = angular.extend({}, last);

    $scope.getToastPosition = function () {
        sanitizePosition();

        return Object.keys($scope.toastPosition)
        .filter(function (pos) { return $scope.toastPosition[pos]; })
        .join(' ');
    };

    function sanitizePosition() {
        var current = $scope.toastPosition;

        if (current.bottom && last.top) current.top = false;
        if (current.top && last.bottom) current.bottom = false;
        if (current.right && last.left) current.left = false;
        if (current.left && last.right) current.right = false;

        last = angular.extend({}, current);
    }

    $scope.trangthai = function (thongbao) {
        var pinTo = $scope.getToastPosition();

        $mdToast.show(
            $mdToast.simple()
            .textContent(thongbao)
            .position(pinTo)
            .hideDelay(1500)
            );
        $anchorScroll();
    };


    $scope.showActionToast = function () {
        var pinTo = $scope.getToastPosition();
        var toast = $mdToast.simple()
        .textContent('Marked as read')
        .action('UNDO')
        .highlightAction(true)
            .highlightClass('md-accent')// Accent is used by default, this just demonstrates the usage.
            .position(pinTo);

            $mdToast.show(toast).then(function (response) {
                if (response == 'ok') {
                    alert('You clicked the \'UNDO\' action.');
                }
            });
        };


    })