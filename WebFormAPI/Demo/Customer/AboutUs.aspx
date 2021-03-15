<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Demo.Customer.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Assets/css/top_bottom.css">
    <link rel="stylesheet" href="Assets/css/gioithieu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="between">
        <div class="between_title" style="background-image: url('Assets/img/anhnen.jpg');background-size: cover; background-position: center; ">
            <div id="title">
                GIỚI THIỆU
            </div>
            <div id="non_title">
                    <a href="Index.aspx">TRANG CHỦ</a>
                    <span id="xuoc">/</span> GIỚI THIỆU
                </div>
            </div>
        <div class="between_content">
            <p>
                Được thành lập ngày 19 tháng 5 năm 2006, trên cơ sở nâng cấp trường Cao đẳng Điện lực. Monamedia.com là đơn vị kinh doanh đồng hồ chính hãng làm việc trực tiếp với các hãng đồng hồ lớn để có được mức giá cạnh tranh nhất. So với giá tại các cửa hàng đồng hồ tại Việt Nam, chúng tôi cam kết giá sẽ thấp hơn từ 30-90%. Đây là một lựa chọn cực kỳ kinh tế cho những người đam mê và yêu thích đồng hồ.
            </p>
            <p>
                Monamedia.com lọt vào top 10 các website thương mại điện tử đáng tin cậy nhất. Với những nỗ lực hơn 20 năm trong ngành đồng hồ, đây là sự đánh giá rất đáng ghi nhận. Và như một lời hứa, monamedia Vietnam cũng sẽ nỗ lực hết mình để mang đến cho những “tín đồ” đồng hồ tại Việt Nam một chất lượng tuyệt vời như thế.
            </p>
            <p>
                Với nhiều năm kinh nghiệm phân phối sản phẩm của monamedia.com; monamedia Vietnam là đơn vị kinh doanh đồng hồ, không phải công ty vận chuyển nên sản phẩm đến tay bạn sẽ được đảm bảo điều kiện tốt nhất, không sợ tráo hàng, đổi hàng. Ngoài ra bạn còn nhận được dịch vụ hậu mãi, tư vấn, bảo hành hoàn hảo từ chúng tôi.
            </p>
            <p>
                Các sản phẩm có link trên monamedia.com đều có sẵn tại Kho hàng trong nước, sản phẩm sẽ đến tay bạn từ 1-2 tuần kể từ khi đặt cọc.
            </p>
            <p id="nghieng">
                XEM THÊM
            </p>
            <ul class="link_menu">
                <li>
                    <a href="#">
                        <p>CÁCH THỨC ĐẶT HÀNG</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <p>CHÍNH SÁCH BẢO HÀNH, ĐỔI TRẢ</p>
                    </a>
                </li>   
            </ul>
            <p id="dam">
                Câu hỏi thường gặp
            </p>
            <ul id="menu">
                
            </ul>

        </div>
        <div class="between_under">
            <div class="under_left">
                <b class="big_under">
                    MONAMEDIA SHOP VIETNAM
                </b>
                <hr>
                <ul>
                    <li>
                        <span>Văn phòng & Showroom</span>: 235-Hoàng Quốc Việt, Đại Học Điện Lực
                    </li>
                    <li>
                        <span>Hotline & Zalo</span>: 0343507124
                    </li>
                    <li>
                        <span>Email</span>: hieplocdev@gmail.com
                    </li>
                    <li>
                        <span>Hỗ trợ</span>: 24/24h
                    </li>
                    <li>
                        <span>Trả góp</span>: qua thẻ tín dụng 22 ngân hàng
                    </li>
                </ul>
            </div>
            <div class="under_right">
                <img src="Assets/img/dl.jpg" alt="">
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        var list_quest = [
            "Monamedia shop thành lập năm nào?",
            "Sản phẩm Monamedia shop từ đâu?",
            "Hàng hóa do Monamedia shop phân phối có được bảo hành chính hãng hay không?",
            "Monamedia shop có sẵn các sản phẩm không?"
        ];
        var infor_ans = [
            "Monamedia shop thành lập năm 2000 và đã đưa về hàng chục ngàn sản phẩm đồng hồ cho các tín đồ hàng hàng fake giá real tại Việt Nam. với MONAMEDIA.VN, cơ hội tiếp cận đồng hồ fake hàng hiệu đã dễ dàng hơn bao giờ hết.",
            "Sản phẩm được nhập lậu từ CHINA fake 99%, giá thì như hàng hiệu.",
            "Tất nhiên là không, hỏng rồi thì đem chỗ khác mà sửa, không sửa được thì vứt.",
            "Hàng lúc nào cũng nhiều vì toàn nhập CHINA số lượng lớn."
        ];

        $(document).ready(function () {

            var new_html = "";
            for (var i = 0; i < list_quest.length; i++) {
                var index = i + 1;
                new_html += "<hr><li id='' onclick='changeTab(" + i + ")' ><span id='list'>" + index + ". " + list_quest[i] + "</span></li><div class='answer' id='hide'>" + infor_ans[i] + "</div>";
            }
            $('#menu').html(new_html);
        });
        function changeTab(index) {
            var items = $('#menu .answer');
            var items1 = $('#menu li');
            for (var i = 0; i < items.length; i++) {
                if ($(items[i]).attr('id') == '') {
                    $(items[i]).attr('id', 'hide');
                    $(items1[i]).attr('id', '');
                }
                else {
                    if (i == index) {
                        $(items[i]).attr('id', '');
                        $(items1[i]).attr('id', 'active_menu');
                    }
                    else {
                        $(items[i]).attr('id', 'hide');
                        $(items1[i]).attr('id', '');
                    }
                }
            }
        }
    </script>
</asp:Content>
