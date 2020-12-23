<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Demo.Customer.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="app-content">
        <!--====== Section 1 ======-->
        <div class="u-s-p-y-90">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-8 col-sm-12" id="blog-area">
                        <!-- blog area tab -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-12">
                        <div class="blog-w-master">
                            <div class="u-s-m-b-60">
                                <div class="blog-w">

                                    <span class="blog-w__h">SEARCH</span>
                                    <div class="blog-search-form">

                                        <label for="post-search"></label>

                                        <input class="input-text input-text--primary-style" type="text" id="post-search" placeholder="Search">

                                        <a id="link-search"><button class="btn btn--icon fas fa-search"  onclick="searchClick()"></button></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====== End - Section 1 ======-->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        $(document).ready(function () {
            let searchParams = new URLSearchParams(window.location.search);
            if (searchParams.has('time')) {
                let param = searchParams.get('time');
                if (param == '') {
                    window.location = "Blog.aspx";
                }
                else {
                    getBlogByDate(param);
                }
            }
            else if (searchParams.has('username')) {
                let param = searchParams.get('username');
                if (param == '') {
                    window.location = "Blog.aspx";
                }
                else {
                    getBlogByUsername(param);
                }
            }
            else if (searchParams.has('search')) {
                let param = searchParams.get('search');
                if (param == '') {
                    window.location = "Blog.aspx";
                }
                else {
                    getBlogBySearch(param);
                }
            }
            else {
                getBlogs();
            }
        });

        getBlogs = () => {
            $.ajax({
                url: 'https://localhost:44344/api/Blogs',
                success: function (response) {
                    let blogs = $('#blog-area');
                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="bp bp--img u-s-m-b-30">
                                    <div class="bp__wrap">
                                        <div class="bp__thumbnail">

                                            <!--====== Image Code ======-->

                                            <a class="aspect aspect--bg-grey aspect--1366-768 u-d-block" href="BlogDetail.aspx?id_blog=`+ item.id_blog +`">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ item.image +`" alt=""></a>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp__info-wrap">
                                            <div class="bp__stat">

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__publish-date">

                                                        <a href="Blog.aspx?time=`+ item.time +`">

                                                            <span>`+ getStrDate(item.time) +`</span></a></span></span>

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__author" >

                                                        <a href="Blog.aspx?username=`+ item.username+`">`+ item.username +`</a></span></span>

                                            </div>

                                            <span class="bp__h1">

                                                <a href="BlogDetail.aspx?id_blog=`+ item.id_blog +`">`+ item.title + `</a></span>
                                            <p class="bp__p">`+ getShortStr(item.content) +`</p>
                                            <div class="gl-l-r">
                                                <div>

                                                    <span class="bp__read-more">

                                                        <a href="BlogDetail.aspx?id_blog=`+ item.id_blog +`">READ MORE</a></span></div>
                                                <ul class="bp__social-list">
                                                    <li>

                                                        <a class="s-fb--color" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li>

                                                        <a class="s-tw--color" href="#"><i class="fab fa-twitter"></i></a></li>
                                                    <li>

                                                        <a class="s-insta--color" href="#"><i class="fab fa-instagram"></i></a></li>
                                                    <li>

                                                        <a class="s-wa--color" href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                    <li>

                                                        <a class="s-gplus--color" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo(blogs);
                    })
                    $(
                        `
                        <nav class="post-center-wrap u-s-p-y-60">

                            <!--====== Pagination ======-->
                            <ul class="blog-pg">
                                <li class="blog-pg--active">

                                    <a href="#">1</a></li>
                                <li>

                                    <a href="#">2</a></li>
                                <li>

                                    <a href="#">3</a></li>
                                <li>

                                    <a href="#">4</a></li>
                                <li>

                                    <a class="fas fa-angle-right" href="#"></a></li>
                            </ul>
                            <!--====== End - Pagination ======-->
                        </nav>
                    `
                    ).appendTo(blogs);
                },
                error: function (error) {
                    console.error(error)
                }
            });
        }

        getBlogByUsername = (username) => {
            let urlStr = 'https://localhost:44344/api/Blogs?username=' + username + '&date=&search=';
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let blogs = $('#blog-area');
                    if (response == '') {
                        window.location = "Blog.aspx";
                    }
                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="bp bp--img u-s-m-b-30">
                                    <div class="bp__wrap">
                                        <div class="bp__thumbnail">

                                            <!--====== Image Code ======-->

                                            <a class="aspect aspect--bg-grey aspect--1366-768 u-d-block" href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ item.image + `" alt=""></a>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp__info-wrap">
                                            <div class="bp__stat">

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__publish-date">

                                                        <a href="Blog.aspx?time=`+ item.time + `">

                                                            <span>`+ getStrDate(item.time) + `</span></a></span></span>

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__author" >

                                                        <a href="Blog.aspx?username=`+ item.username + `">` + item.username + `</a></span></span>

                                            </div>

                                            <span class="bp__h1">

                                                <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">` + item.title + `</a></span>
                                            <p class="bp__p">`+ getShortStr(item.content) + `</p>
                                            <div class="gl-l-r">
                                                <div>

                                                    <span class="bp__read-more">

                                                        <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">READ MORE</a></span></div>
                                                <ul class="bp__social-list">
                                                    <li>

                                                        <a class="s-fb--color" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li>

                                                        <a class="s-tw--color" href="#"><i class="fab fa-twitter"></i></a></li>
                                                    <li>

                                                        <a class="s-insta--color" href="#"><i class="fab fa-instagram"></i></a></li>
                                                    <li>

                                                        <a class="s-wa--color" href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                    <li>

                                                        <a class="s-gplus--color" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo(blogs);
                    })
                    $(
                        `
                        <nav class="post-center-wrap u-s-p-y-60">

                            <!--====== Pagination ======-->
                            <ul class="blog-pg">
                                <li class="blog-pg--active">

                                    <a href="#">1</a></li>
                                <li>

                                    <a href="#">2</a></li>
                                <li>

                                    <a href="#">3</a></li>
                                <li>

                                    <a href="#">4</a></li>
                                <li>

                                    <a class="fas fa-angle-right" href="#"></a></li>
                            </ul>
                            <!--====== End - Pagination ======-->
                        </nav>
                    `
                    ).appendTo(blogs);
                },
                error: function (error) {
                    window.location = "Blog.aspx";
                    console.error(error)
                }
            });
        }

        getBlogByDate = (date) => {
            let urlStr = 'https://localhost:44344/api/Blogs?username=&date=' + date + '&search=';
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let blogs = $('#blog-area');
                    if (response == '') {
                        window.location = "Blog.aspx";
                    }
                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="bp bp--img u-s-m-b-30">
                                    <div class="bp__wrap">
                                        <div class="bp__thumbnail">

                                            <!--====== Image Code ======-->

                                            <a class="aspect aspect--bg-grey aspect--1366-768 u-d-block" href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ item.image + `" alt=""></a>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp__info-wrap">
                                            <div class="bp__stat">

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__publish-date">

                                                        <a href="Blog.aspx?time=`+ item.time + `">

                                                            <span>`+ getStrDate(item.time) + `</span></a></span></span>

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__author" >

                                                        <a href="Blog.aspx?username=`+ item.username + `">` + item.username + `</a></span></span>

                                            </div>

                                            <span class="bp__h1">

                                                <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">` + item.title + `</a></span>
                                            <p class="bp__p">`+ getShortStr(item.content) + `</p>
                                            <div class="gl-l-r">
                                                <div>

                                                    <span class="bp__read-more">

                                                        <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">READ MORE</a></span></div>
                                                <ul class="bp__social-list">
                                                    <li>

                                                        <a class="s-fb--color" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li>

                                                        <a class="s-tw--color" href="#"><i class="fab fa-twitter"></i></a></li>
                                                    <li>

                                                        <a class="s-insta--color" href="#"><i class="fab fa-instagram"></i></a></li>
                                                    <li>

                                                        <a class="s-wa--color" href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                    <li>

                                                        <a class="s-gplus--color" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo(blogs);
                    })
                    $(
                        `
                        <nav class="post-center-wrap u-s-p-y-60">

                            <!--====== Pagination ======-->
                            <ul class="blog-pg">
                                <li class="blog-pg--active">

                                    <a href="#">1</a></li>
                                <li>

                                    <a href="#">2</a></li>
                                <li>

                                    <a href="#">3</a></li>
                                <li>

                                    <a href="#">4</a></li>
                                <li>

                                    <a class="fas fa-angle-right" href="#"></a></li>
                            </ul>
                            <!--====== End - Pagination ======-->
                        </nav>
                    `
                    ).appendTo(blogs);
                },
                error: function (error) {
                    console.error(error);
                    window.location = "Blog.aspx";
                }
            });
        }

        getBlogBySearch = (search) => {
            let urlStr = 'https://localhost:44344/api/Blogs?username=&date=&search=' + search;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    let blogs = $('#blog-area');
                    if (response == '') {
                        window.location = "Blog.aspx";
                    }
                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="bp bp--img u-s-m-b-30">
                                    <div class="bp__wrap">
                                        <div class="bp__thumbnail">

                                            <!--====== Image Code ======-->

                                            <a class="aspect aspect--bg-grey aspect--1366-768 u-d-block" href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ item.image + `" alt=""></a>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp__info-wrap">
                                            <div class="bp__stat">

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__publish-date">

                                                        <a href="Blog.aspx?time=`+ item.time + `">

                                                            <span>`+ getStrDate(item.time) + `</span></a></span></span>

                                                <span class="bp__stat-wrap">

                                                    <span class="bp__author" >

                                                        <a href="Blog.aspx?username=`+ item.username + `">` + item.username + `</a></span></span>

                                            </div>

                                            <span class="bp__h1">

                                                <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">` + item.title + `</a></span>
                                            <p class="bp__p">`+ getShortStr(item.content) + `</p>
                                            <div class="gl-l-r">
                                                <div>

                                                    <span class="bp__read-more">

                                                        <a href="BlogDetail.aspx?id_blog=`+ item.id_blog + `">READ MORE</a></span></div>
                                                <ul class="bp__social-list">
                                                    <li>

                                                        <a class="s-fb--color" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li>

                                                        <a class="s-tw--color" href="#"><i class="fab fa-twitter"></i></a></li>
                                                    <li>

                                                        <a class="s-insta--color" href="#"><i class="fab fa-instagram"></i></a></li>
                                                    <li>

                                                        <a class="s-wa--color" href="#"><i class="fab fa-whatsapp"></i></a></li>
                                                    <li>

                                                        <a class="s-gplus--color" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo(blogs);
                    })
                    $(
                        `
                        <nav class="post-center-wrap u-s-p-y-60">

                            <!--====== Pagination ======-->
                            <ul class="blog-pg">
                                <li class="blog-pg--active">

                                    <a href="#">1</a></li>
                                <li>

                                    <a href="#">2</a></li>
                                <li>

                                    <a href="#">3</a></li>
                                <li>

                                    <a href="#">4</a></li>
                                <li>

                                    <a class="fas fa-angle-right" href="#"></a></li>
                            </ul>
                            <!--====== End - Pagination ======-->
                        </nav>
                    `
                    ).appendTo(blogs);
                },
                error: function (error) {
                    console.error(error);
                    window.location = "Blog.aspx";
                }
            });
        }

        searchClick = () => {
            let valSearch = $('#post-search').val();
            if (valSearch == '') {
                return;
            }
            let linkSearch = $('#link-search');
            linkSearch.attr('href', 'Blog.aspx?search=' + valSearch);
        }
    </script>
</asp:Content>
