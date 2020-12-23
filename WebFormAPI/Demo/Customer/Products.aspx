<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Demo.Customer.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="Assets/images/favicon.png" rel="shortcut icon">
    <title>Ludus - Electronics, Apparel, Computers, Books, DVDs & more</title>

    <!--====== Google Font ======-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">

    <!--====== Vendor Css ======-->
    <link rel="stylesheet" href="Assets/css/vendor.css">

    <!--====== Utility-Spacing ======-->
    <link rel="stylesheet" href="Assets/css/utility.css">

    <!--====== App ======-->
    <link rel="stylesheet" href="Assets/css/app.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="app-content">
        <!--====== Section 1 ======-->
        <div class="u-s-p-y-90">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="shop-w-master">
                            <h1 class="shop-w-master__heading u-s-m-b-30"><i class="fas fa-filter u-s-m-r-8"></i>

                                <span>FILTERS</span></h1>
                            <div class="shop-w-master__sidebar">
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">CATEGORY</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-category" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-category">
                                            <ul class="shop-w__category-list gl-scroll">
                                                <li class="has-list">

                                                    <a href="#">Electronics</a>

                                                    <span class="category-list__text u-s-m-l-6">(23)</span>

                                                    <span class="js-shop-category-span is-expanded fas fa-plus u-s-m-l-6"></span>
                                                    <ul style="display:block">
                                                        <li class="has-list">

                                                            <a href="#">3D Printer & Supplies</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">3d Printer</a></li>
                                                                <li>

                                                                    <a href="#">3d Printing Pen</a></li>
                                                                <li>

                                                                    <a href="#">3d Printing Accessories</a></li>
                                                                <li>

                                                                    <a href="#">3d Printer Module Board</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Home Audio & Video</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">TV Boxes</a></li>
                                                                <li>

                                                                    <a href="#">TV Receiver & Accessories</a></li>
                                                                <li>

                                                                    <a href="#">3d Printing Accessories</a></li>
                                                                <li>

                                                                    <a href="#">3d Printer Module Board</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Media Players</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Earphones</a></li>
                                                                <li>

                                                                    <a href="#">Mp3 Players</a></li>
                                                                <li>

                                                                    <a href="#">Speakers & Radios</a></li>
                                                                <li>

                                                                    <a href="#">Microphones</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Video Game Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Nintendo Video Games Accessories</a></li>
                                                                <li>

                                                                    <a href="#">Sony Video Games Accessories</a></li>
                                                                <li>

                                                                    <a href="#">Xbox Video Games Accessories</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Security & Protection</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Security Cameras</a></li>
                                                                <li>

                                                                    <a href="#">Alarm System</a></li>
                                                                <li>

                                                                    <a href="#">Security Gadgets</a></li>
                                                                <li>

                                                                    <a href="#">CCTV Security Accessories</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Home Audio & Video</a>

                                                            <span class="js-shop-category-span is-expanded fas fa-plus u-s-m-l-6"></span>
                                                            <ul style="display:block">
                                                                <li>

                                                                    <a href="#">TV Boxes</a></li>
                                                                <li>

                                                                    <a href="#">TV Receiver & Accessories</a></li>
                                                                <li>

                                                                    <a href="#">3d Printing Accessories</a></li>
                                                                <li>

                                                                    <a href="#">3d Printer Module Board</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Photography & Camera</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Digital Cameras</a></li>
                                                                <li>

                                                                    <a href="#">Sport Camera & Accessories</a></li>
                                                                <li>

                                                                    <a href="#">Camera Accessories</a></li>
                                                                <li>

                                                                    <a href="#">Lenses & Accessories</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Arduino Compatible</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Raspberry Pi & Orange Pi</a></li>
                                                                <li>

                                                                    <a href="#">Module Board</a></li>
                                                                <li>

                                                                    <a href="#">Smart Robot</a></li>
                                                                <li>

                                                                    <a href="#">Board Kits</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">DSLR Camera</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Nikon Camera</a></li>
                                                                <li>

                                                                    <a href="#">Canon Camera</a></li>
                                                                <li>

                                                                    <a href="#">Sony Camera</a></li>
                                                                <li>

                                                                    <a href="#">DSLR Lenses</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Necessary Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Flash Cards</a></li>
                                                                <li>

                                                                    <a href="#">Memory Cards</a></li>
                                                                <li>

                                                                    <a href="#">Flash Pins</a></li>
                                                                <li>

                                                                    <a href="#">Compact Discs</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="has-list">

                                                    <a href="#">Women's Clothing</a>

                                                    <span class="category-list__text u-s-m-l-6">(5)</span>

                                                    <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                    <ul>
                                                        <li class="has-list">

                                                            <a href="#">Hot Categories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Dresses</a></li>
                                                                <li>

                                                                    <a href="#">Blouses & Shirts</a></li>
                                                                <li>

                                                                    <a href="#">T-shirts</a></li>
                                                                <li>

                                                                    <a href="#">Rompers</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Intimates</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Bras</a></li>
                                                                <li>

                                                                    <a href="#">Brief Sets</a></li>
                                                                <li>

                                                                    <a href="#">Bustiers & Corsets</a></li>
                                                                <li>

                                                                    <a href="#">Panties</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Wedding & Events</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Wedding Dresses</a></li>
                                                                <li>

                                                                    <a href="#">Evening Dresses</a></li>
                                                                <li>

                                                                    <a href="#">Prom Dresses</a></li>
                                                                <li>

                                                                    <a href="#">Flower Dresses</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Bottoms</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Skirts</a></li>
                                                                <li>

                                                                    <a href="#">Shorts</a></li>
                                                                <li>

                                                                    <a href="#">Leggings</a></li>
                                                                <li>

                                                                    <a href="#">Jeans</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Outwear</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Blazers</a></li>
                                                                <li>

                                                                    <a href="#">Basic Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Trench</a></li>
                                                                <li>

                                                                    <a href="#">Leather & Suede</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Jackets</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Denim Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Trucker Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Windbreaker Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Leather Jackets</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Tech Accessories</a></li>
                                                                <li>

                                                                    <a href="#">Headwear</a></li>
                                                                <li>

                                                                    <a href="#">Baseball Caps</a></li>
                                                                <li>

                                                                    <a href="#">Belts</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Other Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Bags</a></li>
                                                                <li>

                                                                    <a href="#">Wallets</a></li>
                                                                <li>

                                                                    <a href="#">Watches</a></li>
                                                                <li>

                                                                    <a href="#">Sunglasses</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="has-list">

                                                    <a href="#">Men's Clothing</a>

                                                    <span class="category-list__text u-s-m-l-6">(5)</span>

                                                    <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                    <ul>
                                                        <li class="has-list">

                                                            <a href="#">Hot Sale</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">T-Shirts</a></li>
                                                                <li>

                                                                    <a href="#">Tank Tops</a></li>
                                                                <li>

                                                                    <a href="#">Polo</a></li>
                                                                <li>

                                                                    <a href="#">Shirts</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Outwear</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Hoodies</a></li>
                                                                <li>

                                                                    <a href="#">Trench</a></li>
                                                                <li>

                                                                    <a href="#">Parkas</a></li>
                                                                <li>

                                                                    <a href="#">Sweaters</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Bottoms</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Casual Pants</a></li>
                                                                <li>

                                                                    <a href="#">Cargo Pants</a></li>
                                                                <li>

                                                                    <a href="#">Jeans</a></li>
                                                                <li>

                                                                    <a href="#">Shorts</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Underwear</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Boxers</a></li>
                                                                <li>

                                                                    <a href="#">Briefs</a></li>
                                                                <li>

                                                                    <a href="#">Robes</a></li>
                                                                <li>

                                                                    <a href="#">Socks</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Jackets</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Denim Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Trucker Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Windbreaker Jackets</a></li>
                                                                <li>

                                                                    <a href="#">Leather Jackets</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Sunglasses</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Pilot</a></li>
                                                                <li>

                                                                    <a href="#">Wayfarer</a></li>
                                                                <li>

                                                                    <a href="#">Square</a></li>
                                                                <li>

                                                                    <a href="#">Round</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Eyewear Frames</a></li>
                                                                <li>

                                                                    <a href="#">Scarves</a></li>
                                                                <li>

                                                                    <a href="#">Hats</a></li>
                                                                <li>

                                                                    <a href="#">Belts</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="has-list">

                                                            <a href="#">Other Accessories</a>

                                                            <span class="js-shop-category-span fas fa-plus u-s-m-l-6"></span>
                                                            <ul>
                                                                <li>

                                                                    <a href="#">Bags</a></li>
                                                                <li>

                                                                    <a href="#">Wallets</a></li>
                                                                <li>

                                                                    <a href="#">Watches</a></li>
                                                                <li>

                                                                    <a href="#">Tech Accessories</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>

                                                    <a href="#">Food & Supplies</a>

                                                    <span class="category-list__text u-s-m-l-6">(0)</span></li>
                                                <li>

                                                    <a href="#">Furniture & Decor</a>

                                                    <span class="category-list__text u-s-m-l-6">(0)</span></li>
                                                <li>

                                                    <a href="#">Sports & Game</a>

                                                    <span class="category-list__text u-s-m-l-6">(0)</span></li>
                                                <li>

                                                    <a href="#">Beauty & Health</a>

                                                    <span class="category-list__text u-s-m-l-6">(0)</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">PRICE</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-price" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-price">
                                            <form class="shop-w__form-p">
                                                <div class="shop-w__form-p-wrap">
                                                    <div>

                                                        <label for="price-min"></label>

                                                        <input class="input-text input-text--primary-style" type="text" id="price-min" placeholder="Min"></div>
                                                    <div>

                                                        <label for="price-max"></label>

                                                        <input class="input-text input-text--primary-style" type="text" id="price-max" placeholder="Max"></div>
                                                    <div>

                                                        <button class="btn btn--icon fas fa-angle-right btn--e-transparent-platinum-b-2" type="submit"></button></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="u-s-m-b-30">
                                    <div class="shop-w shop-w--style">
                                        <div class="shop-w__intro-wrap">
                                            <h1 class="shop-w__h">MANUFACTURER</h1>

                                            <span class="fas fa-minus shop-w__toggle" data-target="#s-manufacturer" data-toggle="collapse"></span>
                                        </div>
                                        <div class="shop-w__wrap collapse show" id="s-manufacturer">
                                            <ul class="shop-w__list-2">
                                                <li>
                                                    <div class="list__content">

                                                        <input type="checkbox" checked>

                                                        <span>Calvin Klein</span></div>

                                                    <span class="shop-w__total-text">(23)</span>
                                                </li>
                                                <li>
                                                    <div class="list__content">

                                                        <input type="checkbox">

                                                        <span>Diesel</span></div>

                                                    <span class="shop-w__total-text">(2)</span>
                                                </li>
                                                <li>
                                                    <div class="list__content">

                                                        <input type="checkbox">

                                                        <span>Polo</span></div>

                                                    <span class="shop-w__total-text">(2)</span>
                                                </li>
                                                <li>
                                                    <div class="list__content">

                                                        <input type="checkbox">

                                                        <span>Tommy Hilfiger</span></div>

                                                    <span class="shop-w__total-text">(9)</span>
                                                </li>
                                                <li>
                                                    <div class="list__content">

                                                        <input type="checkbox">

                                                        <span>Ndoge</span></div>

                                                    <span class="shop-w__total-text">(3)</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12">
                        <div class="shop-p">
                            <div class="shop-p__toolbar u-s-m-b-30">
                                <div class="shop-p__tool-style">
                                    <div class="tool-style__group u-s-m-b-8">

                                        <span class="js-shop-grid-target is-active">Grid</span>

                                        <span class="js-shop-list-target">List</span></div>
                                    <form>
                                        <div class="tool-style__form-wrap">
                                            <div class="u-s-m-b-8"><select class="select-box select-box--transparent-b-2">
                                                    <option>Show: 8</option>
                                                    <option selected>Show: 12</option>
                                                    <option>Show: 16</option>
                                                    <option>Show: 28</option>
                                                </select></div>
                                            <div class="u-s-m-b-8"><select class="select-box select-box--transparent-b-2">
                                                    <option selected>Sort By: Newest Items</option>
                                                    <option>Sort By: Latest Items</option>
                                                    <option>Sort By: Best Selling</option>
                                                    <option>Sort By: Best Rating</option>
                                                    <option>Sort By: Lowest Price</option>
                                                    <option>Sort By: Highest Price</option>
                                                </select></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="shop-p__collection">
                                <div class="row is-grid-active" id="product">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/men/product6.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Men Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Fashion B Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/women/product5.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Women Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Dress A Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/women/product6.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Women Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Dress B Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/women/product7.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Women Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Dress C Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/men/product9.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Men Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Fashion E Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="product-detail.html">

                                                    <img class="aspect__img" src="Assets/images/product/men/product10.jpg" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">Men Clothing</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">New Fashion F Nice Elegant</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">$125.00</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="u-s-p-y-60">

                                <!--====== Pagination ======-->
                                <ul class="shop-p__pagination">
                                    <li class="is-active">

                                        <a href="shop-side-version-2.html">1</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">2</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">3</a></li>
                                    <li>

                                        <a href="shop-side-version-2.html">4</a></li>
                                    <li>

                                        <a class="fas fa-angle-right" href="shop-side-version-2.html"></a></li>
                                </ul>
                                <!--====== End - Pagination ======-->
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
            getProducts();
        });
        // call api img product {id}
        getImageProduct = (id) => {
            let urlStr = "https://localhost:44344/api/GetImageProduct/" + id;
            let img = '';
            $.ajax({
                url: urlStr,
                async: false,
                success: function (response) {
                    img = response.url;
                },
                error: function (error) {
                    console.error(error)
                }
            });
            return img;
        }
        // ajax call api getCategory{id}
        getCategory = () => {
            let urlSt = "https://localhost:44344/api/DanhMucSanPhams";

        }
        // ajax call api Products
        getProducts = () => {
            $.ajax({
                url: 'https://localhost:44344/api/SanPhams',
                success: function (response) {
                    let productList = $('#product')
                    productList.html('');

                    $.each(response, function (_, item) {
                        $(
                            `
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product-m">
                                            <div class="product-m__thumb">

                                                <a class="aspect aspect--bg-grey aspect--square u-d-block" href="DetailProduct.aspx?id=${item.id_san_pham}">

                                                    <img class="aspect__img" src="../Uploads/AnhSP/`+ getImageProduct(item.id_san_pham) + `" alt=""></a>
                                                <div class="product-m__quick-look">

                                                    <a class="fas fa-search" data-modal="modal" data-modal-id="#quick-look" data-tooltip="tooltip" data-placement="top" title="Quick Look"></a></div>
                                                <div class="product-m__add-cart">

                                                    <a class="btn--e-brand" data-modal="modal" data-modal-id="#add-to-cart">Add to Cart</a></div>
                                            </div>
                                            <div class="product-m__content">
                                                <div class="product-m__category">

                                                    <a href="shop-side-version-2.html">`+ getCategory(item.id_danh_muc) + `</a></div>
                                                <div class="product-m__name">

                                                    <a href="product-detail.html">`+ item.ten_san_pham + `</a></div>
                                                <div class="product-m__rating gl-rating-style"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i><i class="far fa-star"></i>

                                                    <span class="product-m__review">(23)</span></div>
                                                <div class="product-m__price">`+ item.gia_san_pham + `</div>
                                                <div class="product-m__hover">
                                                    <div class="product-m__preview-description">

                                                        <span>`+ item.mo_ta_san_pham + `</span></div>
                                                    <div class="product-m__wishlist">

                                                        <a class="far fa-heart" href="#" data-tooltip="tooltip" data-placement="top" title="Add to Wishlist"></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            `
                        ).appendTo(productList);
                    })
                },
                error: function (error) {
                    console.error(error)
                }
            })
        }

    </script>

</asp:Content>
