<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e购首页</title>
<%@ include file="/public/head.jspf"%>
<style type="text/css">
.header_search {border: 1px solid #E1E1E1; cursor: pointer; float: right; height: 23px;
    margin: 30px 0; padding: 3px; width: 230px;}
.header_search  input{background: none repeat scroll 0 0 rgba(0, 0, 0, 0);border: 0 none; color: #B4B4B4; padding: 4px; width: 82%;}
.header .header_search button {background: url("images/search_btn.png") no-repeat scroll center center rgba(0, 0, 0, 0);
    border: 0 none; float: right; height: 20px; margin: 2px;width: 20px;cursor: pointer;}

</style>
</head>
<body>
<div class="wrapper">
        <div class="header">
            <div class="header_container">
                <!--头部开始-->
                        <div class="top_bar clear">
                            <!--头部小导航-->
                            <div class="welcom fl">欢迎光临e购 SHOP! </div>
                            <ul class="top_links fr">
                                <li class="highlight"><a href="#">首页</a></li>
                                <li><a href="#">我的账户</a></li>
                                <li><a href="#">购物车</a></li>
                                <li><a href="${shop}/ulogin.jsp">注册</a></li>
                                <li ><a href="${shop}/ulogin.jsp">登录</a></li>
                            </ul>
                            <!--头部小导航结束-->
                            <!-- logo -->
                            <h1 class="logo clear fl"> <a href="index.html"><img src="images/logo.png" /></a> </h1>
                            <!-- 购物车 -->
                            <div class="minicart">
                                <a class="minicart_link" href="#">
                                    <span class="item">
                                        <b>2${applicationScope.aptes}${applicationScope.testap}</b> 件/
                                    </span>
                                    <span class="price">
                                        <b>￥199.80</b>
                                    </span>
                                </a>
                            </div>
                            <!-- 购物车结束 -->
                            <!-- 搜索框 -->
                            <div class="header_search">
                                <div class="form-search ">
                                    <input  value="请输入商品名称" class="input-text"  type="text"/>
                                    <button type="submit" title="Search"></button>
                                </div>
                            </div>
                   
                        </div>
                    
            </div>
        </div>
        <!-- 头部结束 -->

        <!-- 导航栏 -->
        <div class="navigation_container">
        <!---->
         <div class="nav">
            <ul class="primary_nav">
                <li class="active highlight"><a href="#">女装</a>
                    <!--二级菜单-->
                    <ul class="sub_menu">
                        <li > <a href="#">裙装</a>
                            <ul>
                                <li><a href="#">短裙</a></li>
                                <li><a href="#">短裤 </a></li>
                                <li><a href="#">裤子</a></li>
                                <li><a href="#">卡其裤</a></li>
                                <li><a href="#">休闲裤</a></li>
                                <li><a href="#">牛仔裤</a></li>
                                <li><a href="#">风衣 & 运动夹克</a></li>
                            </ul>
                        </li>
                        <li> <a href="#">装饰品 </a>
                            <ul>
                                <li><a href="#"> 太阳镜</a></li>
                                <li><a href="#">围巾 </a></li>
                                <li><a href="#">发饰品 </a></li>
                                <li><a href="#">帽子和手套 </a></li>
                                <li><a href="#">生活时尚 </a></li>
                                <li><a href="#">牛仔系列 </a></li>
                                <li><a href="#">风衣 & 西服</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                    <!--二级菜单结束-->
                
                <li><a href="#">男装</a>
                    <!--二级菜单-->
                    <ul class="sub_menu">
                        <li> <a href="#">男士夏装</a>
                            <ul>
                                <li><a href="#">裤子</a></li>
                                <li><a href="#">休闲裤</a></li>
                                <li><a href="#">卡其裤</a></li>
                                <li><a href="#">牛仔裤</a></li>
                                <li><a href="#">风衣 & 运动夹克</a></li>
                            </ul>
                        </li>
                         <li> <a href="#">装饰品 </a>
                            <ul>
                                <li><a href="#"> 太阳镜</a></li>
                                <li><a href="#">围巾 </a></li>
                                <li><a href="#">发饰品 </a></li>
                                <li><a href="#">帽子和手套 </a></li>
                                <li><a href="#">生活时尚 </a></li>
                                <li><a href="#">牛仔系列 </a></li>
                                <li><a href="#">风衣 & 西服</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!--二级菜单结束-->
                </li>
                <li><a href="#">儿童</a></li>
                <li><a href="#">时尚</a></li>
                <li><a href="#">装饰品 </a></li>
            </ul>
        </div>
        </div>
        <!--导航栏结束-->

        
        <div class="section_container">
            <!--左侧导航-->
            <div id="side_nav">
                <div class="sideNavCategories">
                    <h1>女装</h1>
                    <ul class="category departments">
                        <li class="header">分类</li>
                        <li><a href="#">毛衣</a></li>
                        <li><a href="#">针织衫 </a></li>
                        <li><a href="#">衬衫 </a></li>
                        <li><a href="#">T恤</a></li>
                        <li><a href="#">短裤</a></li>
                        <li><a href="#">牛仔 </a></li>
                        <li><a href="#">连身裙</a></li>
                        <li><a href="#">短裙 </a></li>
                    </ul>
                </div>
                
            </div>
            <!-- 右侧焦点图区域 -->
            <div id="main_content ">
                <div > <img src="images/lm_banner_1.jpg" /> </div>
            </div>
        </div>

            <!-- 产品列表 -->
            <c:forEach var="list" items="${applicationScope.alllist}">
            <div class="products_list products_slider clear">
            <!-- 循环查询回来的所有类别商品-->
  			
                <h2 class="sub_title">${list[0].category.type}</h2>
                <ul id="first-carousel" class="first-and-second-carousel jcarousel-skin-tango">
					    <!--循环类别list中的商品-->
					    <c:forEach var="product" items="${list}">
					    <li> <a  href="${shop}/usershop/productAction!detailProduct.action?id=${product.id}" class="product_image"><img src="${shop}/image/${product.pic}" /></a>
                        	<div class="product_info">
                            <h3>
                            <a href="#">${product.name}</a>
                            </h3>
                            <small>${product.remark}</small>
                             </div>
	                        <div class="price_info"> 
	                            <button><span class="pr_add">添加购物车</span></button>
	                            <button class="price_add" title="" type="button">
	                            <span class="pr_price">￥${product.price}</span></button>
	                        </div>
                        </li>
                        </c:forEach>
                         <!--循环类别list中的商品结束-->
                </ul>
               
            </div>
             </c:forEach>
                <!-- 循环查询回来的所有类别商品结束-->
        <!--产品列表结束  -->
        
        <!-- 导航栏结束 -->
            <div class="footer_container">


        <div class="footer">
            <ul class="footer_links">
                <li> <span>收藏本店</span>
                    <ul>
                        <li><a href="#">服装</a></li>
                        <li><a href="#">鞋子</a></li>
                        <li><a href="#">包包</a></li>
                        <li><a href="#">装饰品</a></li>
                        <li><a href="#">channel</a></li>
                        <li><a href="#">prada</a></li>
                        <li><a href="#">LV</a></li>
                    </ul>
                </li>
                <li class="seperator"> <span>出售的品牌</span>
                    <ul>
                        <li><a href="#">Elle</a></li>
                        <li><a href="#">Reallxe</a></li>
                        <li><a href="#">Fabric</a></li>
                        <li><a href="#">Mayflower</a></li>
                        <li><a href="#">Levis Strauss</a></li>
                        <li><a href="#">Anzonica</a></li>
                        <li><a href="#">Reallxe</a></li>
                        <li><a href="#">Fabric</a></li>
                    </ul>
                </li>
                <li> <span>客户服务</span>
                    <ul>
                        <li><a href="#">帮助</a></li>
                        <li><a href="#">速递</a></li>
                        <li><a href="#">退换货</a></li>
                        <li><a href="#">付款方式</a></li>
                        <li><a href="#">订单跟踪</a></li>
                        <li><a href="#">礼物包选项</a></li>
                        <li><a href="#">国际服务</a></li>
                        <li><a href="#">退运险</a></li>
                    </ul>
                </li>
                <li> <span>个人账户</span>
                    <ul>
                        <li><a href="#">个人账户信息</a></li>
                        <li><a href="#">用户密码</a></li>
                        <li><a href="#">订单历史</a></li>
                        <li><a href="#">付款方式</a></li>
                        <li><a href="#">我的收货地址</a></li>
                        <li><a href="#">我的通知</a></li>
                    </ul>
                </li>
            </ul>
            </div>
            </div>
    </div>
</body>
</html>