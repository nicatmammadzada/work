

<header class="site-header bg-dark text-white-0_5">
    <div class="container">
        <div class="row align-items-center justify-content-between mx-0">
            <ul class="list-inline d-none d-lg-block mb-0">
                <li class="list-inline-item mr-3">
                    <div class="d-flex align-items-center">
                        <i class="ti-email mr-2"></i>
                        <a href="mailto:support@educati.com">support@educati.com</a>
                    </div>
                </li>
                <li class="list-inline-item mr-3">
                    <div class="d-flex align-items-center">
                        <i class="ti-headphone mr-2"></i>
                        <a href="tel:+8801740411513">+8801740411513</a>
                    </div>
                </li>
            </ul>
            <ul class="list-inline mb-0">
                <li class="list-inline-item mr-0 p-3 border-right border-left border-white-0_1">
                    <a href="#"><i class="ti-facebook"></i></a>
                </li>
                <li class="list-inline-item mr-0 p-3 border-right border-white-0_1">
                    <a href="#"><i class="ti-twitter"></i></a>
                </li>
                <li class="list-inline-item mr-0 p-3 border-right border-white-0_1">
                    <a href="#"><i class="ti-vimeo"></i></a>
                </li>
                <li class="list-inline-item mr-0 p-3 border-right border-white-0_1">
                    <a href="#"><i class="ti-linkedin"></i></a>
                </li>
            </ul>
            <ul class="list-inline mb-0">
                <li class="list-inline-item mr-0 p-md-3 p-2 border-right border-left border-white-0_1">
                    <a href="page-login.html">Login</a>
                </li>
                <li class="list-inline-item mr-0 p-md-3 p-2 border-right border-white-0_1">
                    <a href="page-signup.html">Register</a>
                </li>
            </ul>
        </div> <!-- END END row-->
    </div> <!-- END container-->
</header><!-- END site header-->


<nav class="ec-nav sticky-top bg-white">
    <div class="container">
        <div class="navbar p-0 navbar-expand-lg">
            <div class="navbar-brand">
                <a class="logo-default" href="index.html"><img alt="" src="/front/assets/img/logo-black.png"></a>
            </div>
            <span aria-expanded="false" class="navbar-toggler ml-auto collapsed" data-target="#ec-nav__collapsible"
                  data-toggle="collapse">
        <div class="hamburger hamburger--spin js-hamburger">
          <div class="hamburger-box">
            <div class="hamburger-inner"></div>
          </div>
        </div>
      </span>
            <div class="collapse navbar-collapse when-collapsed" id="ec-nav__collapsible">
                <ul class="nav navbar-nav ec-nav__navbar ml-auto">

                    <li class="nav-item nav-item__has-megamenu megamenu-col-2">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Home</a>
                        <div class="dropdown-menu left-auto p-2 p-md-4">
                            <div class="row mx-0">
                                <div class="col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a class="nav-link__list px-0" href="index-school-default.html">Demo
                                                School</a></li>
                                        <li><a class="nav-link__list px-0" href="index-school-online.html">Demo Online
                                                School</a></li>
                                        <li><a class="nav-link__list px-0" href="index-college.html">Demo College</a>
                                        </li>
                                        <li><a class="nav-link__list px-0" href="index-university.html">Demo Harvard
                                                University</a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-unstyled">
                                        <li><a class="nav-link__list px-0" href="index-online-university.html">Demo
                                                Online University</a></li>
                                        <li><a class="nav-link__list px-0" href="index-lynda.html">Demo Lynda</a></li>
                                        <li><a class="nav-link__list px-0" href="index-udemy.html">Demo Udemy</a></li>
                                        <li><a class="nav-link__list px-0" href="index-one-course.html">Demo One
                                                Course</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item nav-item__has-dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Courses</a>
                        <ul class="dropdown-menu">
                            <li><a href="{{route('cource.index',$lang)}}" class="nav-link__list">All Courses</a></li>
                            @foreach($categorys as $category)
                                <li><a href="page-sp-all-courcess-list.html" class="nav-link__list">{{$category->translation->name ?? ''}}</a>
                                </li>
                            @endforeach

                        </ul>
                    </li>

                    <li class="nav-item nav-item__has-dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">pages</a>
                        <div class="dropdown-menu">
                            <ul class="list-unstyled">
                                <li><a class="nav-link__list" href="page-about.html">About</a></li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown">
                                        Events </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-events.html"> Events </a></li>
                                            <li><a class="nav-link__list" href="page-event-details.html"> Events
                                                    Details</a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown">
                                        Support </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-help-%26-support.html">
                                                    Support </a></li>
                                            <li><a class="nav-link__list" href="page-help-%26-support-topics.html">
                                                    Support Topic</a></li>
                                            <li><a class="nav-link__list" href="page-help-%26-support-details.html">
                                                    Support Details</a></li>
                                            <li><a class="nav-link__list" href="page-terms-and-privacy-policy.html">
                                                    Privacy Policy </a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown"> User </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-login.html"> Login </a></li>
                                            <li><a class="nav-link__list" href="page-signup.html"> Sign up</a></li>
                                            <li><a class="nav-link__list" href="page-recover-password.html"> Reset
                                                    Password</a></li>
                                            <li><a class="nav-link__list" href="page-sp-student-profile.html"> Students
                                                    Profile</a></li>
                                            <li><a class="nav-link__list" href="page-user-profile.html"> Instructors
                                                    Profile</a></li>
                                            <li><a class="nav-link__list" href="page-sp-become-instructor.html"> Become
                                                    Instructors</a></li>
                                            <li><a class="nav-link__list" href="page-sp-order-details.html"> Order
                                                    Details</a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown">
                                        Notice </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-notice.html"> Notices </a></li>
                                            <li><a class="nav-link__list" href="page-notice-details.html"> Notics
                                                    Details</a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown">
                                        Faculty </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-sp-faculty.html"> Faculty </a></li>
                                            <li><a class="nav-link__list" href="page-sp-research.html"> Research </a>
                                            </li>
                                            <li><a class="nav-link__list" href="page-sp-research-details.html"> Research
                                                    Details</a></li>
                                            <li><a class="nav-link__list" href="page-sp-scholarship.html">
                                                    Scholarship</a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item__has-dropdown">
                                    <a class="nav-link__list dropdown-toggle" href="#" data-toggle="dropdown">
                                        Career </a>
                                    <div class="dropdown-menu">
                                        <ul class="list-unstyled">
                                            <li><a class="nav-link__list" href="page-career.html"> Careers </a></li>
                                            <li><a class="nav-link__list" href="page-career-details.html"> Career
                                                    Details </a></li>
                                        </ul>
                                    </div>
                                </li>

                                <li>
                                    <a class="nav-link__list" href="page-sp-vc.html">VC</a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="page-faq.html"> FAQs </a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="page-contact.html">Contact</a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="page-404.html"> 404 </a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="page-coming-soon.html">Coming Soon</a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="nav-item nav-item__has-dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> News </a>

                    </li>

                    <li class="nav-item nav-item__has-dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> Shop </a>
                        <div class="dropdown-menu">
                            <ul class="list-unstyled">
                                <li>
                                    <a class="nav-link__list" href="shop.html"> Shop </a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="shop-single.html"> Shop Single</a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="shop-cart.html"> Cart</a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="shop-checkout.html"> Checkout</a>
                                </li>
                                <li>
                                    <a class="nav-link__list" href="shop-order-success.html">Order Success</a>
                                </li>

                            </ul>
                        </div>
                    </li>

                    <li class="nav-item nav-item__has-megamenu">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Contact</a>

                    </li>
                </ul>
            </div>
            <div class="nav-toolbar">
                <ul class="navbar-nav ec-nav__navbar">
                    <li class="nav-item nav-item__has-dropdown">
                        <a class="nav-link dropdown-toggle no-caret" href="#" data-toggle="dropdown"><i
                                class="ti-shopping-cart"></i></a>
                        <ul class="dropdown-menu dropdown-cart" aria-labelledby="navbarDropdown">
                            <li class="dropdown-cart__item">
                                <div class="media">
                                    <img class="dropdown-cart__img" src="/front/assets/img/shop/products/2.jpg" alt="">
                                    <div class="media-body pl-3">
                                        <a href="#" class="h6">Quick intro to Python</a>
                                        <span class="text-primary">$199.00</span>
                                    </div>
                                </div>
                                <a href="#" class="dropdown-cart__item-remove">
                                    <i class="ti-close"></i>
                                </a>
                            </li>
                            <li class="dropdown-cart__item">
                                <div class="media">
                                    <img class="dropdown-cart__img" src="/front/assets/img/shop/products/4.jpg" alt="">
                                    <div class="media-body pl-3">
                                        <a href="#" class="h6">Gentel intro to C++</a>
                                        <span class="text-primary">$45.00</span>
                                    </div>
                                </div>
                                <a href="#" class="dropdown-cart__item-remove">
                                    <i class="ti-close"></i>
                                </a>
                            </li>
                            <li class="dropdown-cart__item">
                                <div class="media">
                                    <img class="dropdown-cart__img" src="/front/assets/img/shop/products/3.jpg" alt="">
                                    <div class="media-body pl-3">
                                        <a href="#" class="h6">Programming 101</a>
                                        <span class="text-primary">$79.00</span>
                                    </div>
                                </div>
                                <a href="#" class="dropdown-cart__item-remove">
                                    <i class="ti-close"></i>
                                </a>
                            </li>
                            <li class="px-2 py-4 text-center">
                                Subtotal: <span class="text-primary font-weight-semiBold"> $275.00</span>
                            </li>
                            <li class="px-2 pb-4 text-center">
                                <button class="btn btn-outline-primary mx-1">View Cart</button>
                                <button class="btn btn-primary mx-1">Checkout</button>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link site-search-toggler" href="#">
                            <i class="ti-search"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div> <!-- END container-->
</nav> <!-- END ec-nav -->

<div class="site-search">
    <div class="site-search__close bg-black-0_8"></div>
    <form class="form-site-search" action="#" method="POST">
        <div class="input-group">
            <input type="text" placeholder="Search" class="form-control py-3 border-white" required="">
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit"><i class="ti-search"></i></button>
            </div>
        </div>
    </form>
</div> <!-- END site-search-->
