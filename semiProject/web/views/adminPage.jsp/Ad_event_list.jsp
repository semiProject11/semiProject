<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<<<<<<< HEAD
</head>
<body>

<jsp:include page="../common/menubar.jsp" />
=======
	 <style>
        #jin {
            background: black;
            border: none;
        }
>>>>>>> refs/remotes/origin/master

  <!--side nav start-->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                <!--≈¨∏Ø«“∂ß ±€¿⁄ªˆªÛ¿Ã ∆ƒ∂ıªˆ¿Ã∂Û colorπŸ≤„¡‹-->
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">
                            <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                              xmlns="http://www.w3.org/2000/svg">
                              <path fill-rule="evenodd"
                                d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                                clip-rule="evenodd" />
                            </svg>
                            ∞¸∏Æ¿⁄ºæ≈Õ</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                                aria-expanded="false" aria-controls="collapseUsers">
                                <svg class="bi bi-people-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                    fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"
                                        clip-rule="evenodd" />
                                </svg>
                                &nbsp;ªÁøÎ¿⁄ ∞¸∏Æ
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseUsers" aria-labelledby="headingOne"
                                data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="admin_grade.html">∆«∏≈¿⁄ µÓ±ﬁ ∞¸∏Æ</a>
                                    <a class="nav-link" href="admin_transaction.html">∞≈∑°≥ªø™ ∞¸∏Æ</a>
                                    <a class="nav-link" href="admin_review.html">¿¸√º ∏Æ∫‰ ∞¸∏Æ</a>
                                    <a class="nav-link" href="admin_inquiry.html">πÆ¿« ªÁ«◊ ∞¸∏Æ</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReport"
                                aria-expanded="false" aria-controls="collapseReport">
                                <svg class="bi bi-brightness-alt-high-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                    fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
                                        clip-rule="evenodd" />
                                </svg>
                                &nbsp;Ω≈∞Ì√≥∏Æ
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseReport" aria-labelledby="headingOne"
                                data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_report.html">Ω≈∞Ì
                                        ≥ªø™ ∞¸∏Æ</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePoints"
                                aria-expanded="false" aria-controls="collapsePoints">

                                <svg class="bi bi-server" width="1em" height="1em" viewBox="0 0 16 16"
                                    fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M13 2c0-1.105-2.239-2-5-2S3 .895 3 2s2.239 2 5 2 5-.895 5-2z"
                                        clip-rule="evenodd" />
                                    <path fill-rule="evenodd"
                                        d="M13 3.75c-.322.24-.698.435-1.093.593C10.857 4.763 9.475 5 8 5s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 3.75V6c0 1.105 2.239 2 5 2s5-.895 5-2V3.75z"
                                        clip-rule="evenodd" />
                                    <path fill-rule="evenodd"
                                        d="M13 7.75c-.322.24-.698.435-1.093.593C10.857 8.763 9.475 9 8 9s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 7.75V10c0 1.105 2.239 2 5 2s5-.895 5-2V7.75z"
                                        clip-rule="evenodd" />
                                    <path fill-rule="evenodd"
                                        d="M13 11.75c-.322.24-.698.435-1.093.593-1.05.42-2.432.657-3.907.657s-2.857-.237-3.907-.657A4.883 4.883 0 0 1 3 11.75V14c0 1.105 2.239 2 5 2s5-.895 5-2v-2.25z"
                                        clip-rule="evenodd" />
                                </svg>
                                &nbsp;∆˜¿Œ∆Æ/»Ø∫“
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePoints" aria-labelledby="headingOne"
                                data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_point.html">∆˜¿Œ∆Æ
                                        ∞¸∏Æ</a><a class="nav-link" href="admin_refund.html">»Ø∫“ ∞¸∏Æ</a></nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNotice"
                                aria-expanded="false" aria-controls="collapseNotice">
                                <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                                    <path fill-rule="evenodd"
                                        d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
                                        clip-rule="evenodd" />
                                </svg>
                                &nbsp;∞¯¡ˆªÁ«◊/¿Ã∫•∆Æ
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseNotice" aria-labelledby="headingOne"
                                data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link"
                                        href="admin_notice.html">∞¯¡ˆªÁ«◊ ∞¸∏Æ</a><a class="nav-link"
                                        href="admin_event.html">¿Ã∫•∆Æ ∞¸∏Æ</a></nav>
                            </div>
                    </div>
                </div>
                <!--side nav footer start-->
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    Start Bootstrap
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <!--side nav end-->


            <!--contents-->
            <div class="container mt-5">

                <head>
                    <h2>¿Ã∫•∆Æ ∞¸∏Æ</h2>
                    <hr>
                </head>

                <div class="container my-4">

                    <div>
                        <!--ªÛ¥‹ πˆ∆∞-->
                        <button type="button" class="btn" style="background:black; color:white; width:95px;"><a
                                href="admin_event_write.html" id="wh">±€æ≤±‚</a></button>
                        <button type="button" class="btn" style="background:black; color:white; width:95px;">ªË
                            ¡¶</button>
                        <!--ªÛ¥‹ ∞Àªˆ√¢-->
                        <form
                            class="d-none d-md-inline-block form-inline float-right ml-auto mr-0 mr-md-3 my-2 my-md-0">

                            <div class="input-group">


                                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search"
                                    aria-describedby="basic-addon2" />
                                <div class="input-group-append"></div>
                                <button class="btn btn-primary" type="button" id="jin">
                                    <i class="fas fa-search"></i></i></button>
                            </div>
                        </form>
                    </div>



                    <!--¿Ø¿˙ ∏ÆΩ∫∆Æ-->
                    <div class="table-responsive mt-3">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>No</th>
                                    <th>¡¶∏Ò</th>
                                    <th>¿€º∫¿œ¿⁄</th>

<<<<<<< HEAD
                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                    <td>
                                        <div class="form-check form-check-inline">
                                            <input type="checkbox" class="form-check-input" id="checkall"
                                                style="width:18px; height:18px;">

                                        </div>
                                    </td>
                                    <td>1</td>
                                    <td> <a href="admin_event_read.html" id="bk">BTSøÕ «‘≤≤«œ¥¬ 5ø˘ ¿Ã∫•∆Æ </a></td>
                                    <td>2020-05-01</td>

                                </tr>






                            </tbody>
                        </table>
                    </div>
                </div>





                <!------∆‰¿Ã¬° √≥∏Æ----->
                <div class="page-center">
                    <ul class="pagination-t">

                        <!-- disabled: ∆‰¿Ã¡ˆ ∫Ò»∞º∫»≠ -->
                        <li class="page-item-t disabled-t"><a class="page-link-t" href="#">Previous</a></li>

                        <li class="page-item-t"><a class="page-link-t" href="#">1</a></li>

                        <!-- disabled: «ÿ¥Á πˆ∆∞ »∞º∫»≠ -->
                        <li class="page-item-t active-t" aria-current="page-t">
                            <a class="page-link-t" href="#">2 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item-t"><a class="page-link-t" href="#">3</a></li>
                        <li class="page-item-t"><a class="page-link-t" href="#">Next</a></li>
                    </ul>

                </div>



            </div>


























            <!--footer-->
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2019</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>


=======
        }
    </style>
</head>
<body>
<jsp:include page="../common/menubar4.jsp" />	
	
	<div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                <!--ÌÅ¥Î¶≠Ìï†Îïå Í∏ÄÏûêÏÉâÏÉÅÏù¥ ÌååÎûÄÏÉâÏù¥Îùº colorÎ∞îÍøîÏ§å-->
                <div class="sb-sidenav-menu">
                    <div class="nav">

                        <div class="sb-sidenav-menu-heading">
                            <svg class="bi bi-list" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M2.5 11.5A.5.5 0 013 11h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 7h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5zm0-4A.5.5 0 013 3h10a.5.5 0 010 1H3a.5.5 0 01-.5-.5z"
                                    clip-rule="evenodd" />
                            </svg>
                            Í¥ÄÎ¶¨ÏûêÏÑºÌÑ∞</div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                            aria-expanded="false" aria-controls="collapseUsers">
                            <svg class="bi bi-people-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;ÏÇ¨Ïö©Ïûê Í¥ÄÎ¶¨
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseUsers" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="admin_grade.html">ÌåêÎß§Ïûê Îì±Í∏â Í¥ÄÎ¶¨</a>
                                <a class="nav-link" href="admin_transaction.html">Í±∞ÎûòÎÇ¥Ïó≠ Í¥ÄÎ¶¨</a>
                                <a class="nav-link" href="admin_review.html">Ï†ÑÏ≤¥ Î¶¨Î∑∞ Í¥ÄÎ¶¨</a>
                                <a class="nav-link" href="admin_inquiry.html">Î¨∏Ïùò ÏÇ¨Ìï≠ Í¥ÄÎ¶¨</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReport"
                            aria-expanded="false" aria-controls="collapseReport">
                            <svg class="bi bi-brightness-alt-high-fill" width="1em" height="1em" viewBox="0 0 16 16"
                                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M4 11a4 4 0 118 0 .5.5 0 01-.5.5h-7A.5.5 0 014 11zm4-8a.5.5 0 01.5.5v2a.5.5 0 01-1 0v-2A.5.5 0 018 3zm8 8a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zM3 11a.5.5 0 01-.5.5h-2a.5.5 0 010-1h2a.5.5 0 01.5.5zm10.657-5.657a.5.5 0 010 .707l-1.414 1.414a.5.5 0 11-.707-.707l1.414-1.414a.5.5 0 01.707 0zM4.464 7.464a.5.5 0 01-.707 0L2.343 6.05a.5.5 0 01.707-.707l1.414 1.414a.5.5 0 010 .707z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;Ïã†Í≥†Ï≤òÎ¶¨
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseReport" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_report.html">Ïã†Í≥†
                                    ÎÇ¥Ïó≠ Í¥ÄÎ¶¨</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePoints"
                            aria-expanded="false" aria-controls="collapsePoints">

                            <svg class="bi bi-server" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M13 2c0-1.105-2.239-2-5-2S3 .895 3 2s2.239 2 5 2 5-.895 5-2z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 3.75c-.322.24-.698.435-1.093.593C10.857 4.763 9.475 5 8 5s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 3.75V6c0 1.105 2.239 2 5 2s5-.895 5-2V3.75z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 7.75c-.322.24-.698.435-1.093.593C10.857 8.763 9.475 9 8 9s-2.857-.237-3.907-.657A4.881 4.881 0 0 1 3 7.75V10c0 1.105 2.239 2 5 2s5-.895 5-2V7.75z"
                                    clip-rule="evenodd" />
                                <path fill-rule="evenodd"
                                    d="M13 11.75c-.322.24-.698.435-1.093.593-1.05.42-2.432.657-3.907.657s-2.857-.237-3.907-.657A4.883 4.883 0 0 1 3 11.75V14c0 1.105 2.239 2 5 2s5-.895 5-2v-2.25z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;Ìè¨Ïù∏Ìä∏/ÌôòÎ∂à
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePoints" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_point.html">Ìè¨Ïù∏Ìä∏
                                    Í¥ÄÎ¶¨</a><a class="nav-link" href="admin_refund.html">ÌôòÎ∂à Í¥ÄÎ¶¨</a></nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNotice"
                            aria-expanded="false" aria-controls="collapseNotice">
                            <svg class="bi bi-bell" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16a2 2 0 002-2H6a2 2 0 002 2z" />
                                <path fill-rule="evenodd"
                                    d="M8 1.918l-.797.161A4.002 4.002 0 004 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 00-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 111.99 0A5.002 5.002 0 0113 6c0 .88.32 4.2 1.22 6z"
                                    clip-rule="evenodd" />
                            </svg>
                            &nbsp;Í≥µÏßÄÏÇ¨Ìï≠/Ïù¥Î≤§Ìä∏
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseNotice" aria-labelledby="headingOne"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="admin_notice.html">Í≥µÏßÄÏÇ¨Ìï≠
                                    Í¥ÄÎ¶¨</a><a class="nav-link" href="admin_event.html">Ïù¥Î≤§Ìä∏ Í¥ÄÎ¶¨</a></nav>
                        </div>
                    </div>
                </div>

                <!--side nav footer start-->
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    Start Bootstrap
                </div>
            </nav>
        </div>
	
	
		<div id="layoutSidenav_content">
		
		
		
		
		
		
		
		
		
		
		
		
		</div>
		</div>
>>>>>>> refs/remotes/origin/master
</body>
</html>