<jsp:include page="/WEB-INF/jsp/common/ForView/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<div id="wrapper">
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bgm" >
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="">
                <!--<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>-->
                <div class="sidebar-brand-text mx-3"><span>Admin</span></div>
            </a>
            <hr class="sidebar-divider my-0">
            <ul class="nav navbar-nav text-light" id="accordionSidebar">

                <li class="nav-item" role="presentation"><a class="nav-link " href="patientpage"><i class="fa fa-database"></i><span style="color: rgb(0,21,211);">Patient Management</span></a></li>

                <li class="nav-item" role="presentation"><a class="nav-link active" href="hospitalpage"><i class="fas fa fa-money"></i><span>Hospital Management</span></a></li>

                <li class="nav-item" role="presentation"><a class="nav-link " href="adminpage"><i class="fas fa-house-leave"></i><span>Admin Management</span></a></li>


            </ul>
            <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
        </div>
    </nav>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>

                    <nav class="navbar navbar-light  ">
                        <div class="container">
                            <p style="color: rgb(66,87,241);font-size: 20px; float: left"><strong>Hospital Management And Information System </strong></p>
                            <ul class="nav navbar-nav flex-nowrap ml-auto">

                            </ul>
                        </div>
                    </nav>
                    <ul class="nav navbar-nav flex-nowrap ml-auto">
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow" role="presentation"><a class="nav-link" href="#"><button class="btn btn-primary" type="button">Logout</button></a></li>
                    </ul>
                </div>
            </nav>
            <div class="container-fluid">
                <div class="container my-4">
                    <p class="font-weight-bold">Admin</p>
                    <div class="row no-gutters text-left justify-content-center align-items-center" style="height: 100%;">
                        <div class="col-md-12 search-table-col" style="margin-top: 0px;">
                            <div class="form-group pull-right col-lg-4">
                                <input type="text" class="search form-control" placeholder="Search by typing here.."></div>
                            <span class="counter pull-right" style="color: rgb(88,82,82);font-size: 22px;"></span>
                            <div class="table-responsive table-bordered table table-hover table-bordered results"
                                 style="width: 100%;">
                                <table class="table table-bordered table-hover">
                                    <thead class="bill-header cs">
                                        <tr>
                                            <th id="trs-hd" class="col-lg-1" style="width: 528px;">ID</th>
                                            <th id="trs-hd-4" class="col-lg-1" style="width: 500px;">Admin NID</th>
                                            <th id="trs-hd-3" class="col-lg-1" style="width: 528px;">Admin Name</th>
                                            <th id="trs-hd-2" class="col-lg-1" style="width: 528px;">Admin Password</th>

                                            <th id="trs-hd" class="col-lg-2" style="width: 558px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="warning no-result">
                                            <td colspan="12"><i class="fa fa-warning"></i>&nbsp; No Result !!!</td>
                                        </tr>
                                        <c:forEach items="${map.admins}" var="admin">
                                            <tr>
                                                <td>${admin.id}</td>
                                                <td>${admin.admin_nid}</td>
                                                <td>${admin.admin_name}</td>
                                                <td>${admin.admin_password}</td>



                                                <td><a href="/info/admin/adminEdit/${admin.id}" ><button class="btn btn-info mb-1"><i class="fa fa-edit" aria-hidden="true"></i></button></a>  
                                                    <a href="/info/admin/adminDelete/${admin.id}" ><button class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button></a>

                                                    <!--                                                <button class="btn btn-success" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button>
                                                                                                    <button class="btn btn-danger" style="margin-left: 5px;width: 36px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button>-->
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>




                    </div>

                </div>
            </div>







        </div>

    </div>
</div>




<jsp:include page="/WEB-INF/jsp/common/ForView/footer.jsp" />
