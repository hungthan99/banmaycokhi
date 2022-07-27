<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<body>
	<div class="heade_menunav">
		<div class="wrap_main d-none d-lg-block d-xl-block">
			<div class="bg-header-nav">
				<div class="row">
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<nav class="header-nav ">
							<ul class="item_big">
								<li class="nav-item  active "><a class="a-img"
									href="/nhom14/home/trangchu" title="Trang chủ"> <span>Trang
											chủ</span>
								</a></li>
								<li class="nav-item "><a class="a-img" href=""
									title="Sản phẩm"> <span>Sản phẩm</span><i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="item_small">
										<li><a href="/nhom14/home/maybao" title="Máy Bào">Máy bào</a></li>
										<li><a href="/nhom14/home/maycat"
											title="Máy Cắt">Máy Cắt</a></li>
										<li><a href="/nhom14/home/maychuot"
											title="Máy Chuốt">Máy Chuốt</a></li>
										<li><a href="/nhom14/home/maymai"
											title="Máy Mài">Máy Mài</a></li>
										<li><a href="/nhom14/home/maytien"
											title="Máy Tiện">Máy Tiện</a></li>
										<li><a href="/nhom14/home/trangchu"
											title="tất cả sản phẩm">Tất cả sản phẩm</a></li>
										<li>
									</ul></li>
								<li class="nav-item "><a class="a-img"
									href="/nhom14/home/lienhe" title="Liên hệ"> <span>Liên
											hệ</span>
								</a></li>
								<li class="nav-item "><a class="a-img"
									href="/nhom14/muahang/xemdondathang" title="Đơn hàng"> <span>Đơn
											hàng</span>
								</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
						<div class="serachpc">
							<div class="searchform">
								<form action="/nhom14/home/timkiem" method="get"
									class="input-group search-bar" role="search">
									<input type="text" name="timkiem" value="" autocomplete="off"
										placeholder="Tìm kiếm..."
										class="input-group-field auto-search visible_index">
									<button type="submit"
										class="visible_index btn icon-fallback-text">
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>
						</div>

					</div>
					<ul>
						<security:authorize access="isAuthenticated()==false">
							<security:authentication property="principal" var="user" />
							<li><a href="/nhom14/auth/dangnhap" style="color: white;"><span>Đăng
										nhập</span></a></li>

							<li><a href="/nhom14/auth/showformdangki"
								style="color: white;"><span>Đăng ký</span></a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<security:authentication property="principal" var="user" />
							<li><a href="/nhom14/auth/dangxuat" style="color: white;"><span>Đăng
										xuất</span></a></li>
							<li><a href="/nhom14/muahang/showInfor" style="color: white;"><span>Thông
										tin cá nhân</span></a></li>
						</security:authorize>

					</ul>


				</div>
			</div>
		</div>
	</div>
</body>
</html>