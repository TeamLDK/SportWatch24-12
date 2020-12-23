<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="BlogDetail.aspx.cs" Inherits="Demo.Customer.BlogDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!--====== App Content ======-->
        <div class="app-content">

            <!--====== Section 1 ======-->
            <div class="u-s-p-y-90" id="blog-area">

                <!--====== Detail Post ======-->
            </div>
        </div>
        <!--====== End - App Content ======-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">

    <script>
        $(document).ready(function () {
            let searchParams = new URLSearchParams(window.location.search);
            if (searchParams.has('id_blog')) {
                let param = searchParams.get('id_blog');
                getBlogDetail(param);
            }
            else {
                window.location = "Blog.aspx";
            }
        });

        getBlogDetail = (id_blog) => {
            let urlStr = `https://localhost:44344/api/Blogs/` + id_blog;
            $.ajax({
                url: urlStr,
                success: function (response) {
                    if (response == null) {
                        window.location = "Blog.aspx";
                    }
                    else {
                        let contentBlog = $('#blog-area');
                        $(
                            `
                                <div class="detail-post">
                                    <div class="bp-detail">
                                        <div class="bp-detail__thumbnail">

                                            <!--====== Image Code ======-->
                                            <div class="aspect aspect--bg-grey aspect--1366-768">

                                                <img class="aspect__img" src="../Uploads/AnhBlog/`+ response.image +`" alt=""></div>
                                            <!--====== End - Image Code ======-->
                                        </div>
                                        <div class="bp-detail__info-wrap">
                                            <div class="bp-detail__stat">

                                                <span class="bp-detail__stat-wrap">

                                                    <span class="bp-detail__publish-date">

                                                        <a href="Blog.aspx?time=`+ response.time + `">

                                                            <span>`+ getStrDate(response.time) +`</span></a></span></span>

                                                <span class="bp-detail__stat-wrap">

                                                    <span class="bp-detail__author">

                                                        <a href="Blog.aspx?username=`+ response.username + `">`+ response.username +`</a></span></span></div>

                                            <span class="bp-detail__h1" style="font-size: 50px;color:black;">

                                                `+ response.title +`</span>
                                            <p class="bp-detail__p">
                                                `+ response.content +`
                                            </p>
                                            <div class="post-center-wrap">
                                                <ul class="bp-detail__social-list">
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
                                            <div class="gl-l-r bp-detail__postnp">
                                                <div>

                                                    <a href="blog-detail.html">Previous Post</a></div>
                                                <div>

                                                    <a href="blog-detail.html">Next Post</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
                        ).appendTo(contentBlog);
                    }
                },
                error: function (error) {
                    console.error(error)
                    window.location = "Blog.aspx";
                }
            });
        }
    </script>
</asp:Content>
