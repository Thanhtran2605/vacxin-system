<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8" />
<title>Vacxin System</title>
<!-- ======= JS ======= -->
<jsp:include page="layout/cssLink.jsp" />
<link rel="icon" href="<c:url value="/resources/images/logo.png" />" />
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/logo.png" />" />
	
<style>
.banner{
	height: 500px;;
}
.category-slider .item {
    padding: 0 10px;
}
.card-product {
    border: none;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}
.card-body {
    padding: 20px;
    
}
.shorten-text {
    font-weight: bold;
    font-size: 16px;
}
.text-muted {
    color: #6c757d;
}

span{
	color: #0AAC0A;
}

.btn-outline-primary {
    color: #009B22;  
    border-color: #009B22;  
    border-radius: 20px;  
    width: 30%;
}

.btn-outline-primary:hover {
    background-color: #458FF6;  
    color: white;  
    border-color: #458FF6;  
}

.card-img-top{
	width: 100%;
	height: 170px;
}

.service{
	flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    border-radius: 10px;  
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    height: 240px;
}


/* tin tức */
.card-title{
	height: 50px;
}

.card-title a{
	color: black;
}

.card-text.content {
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 4; 
    -webkit-box-orient: vertical;
    transition: max-height 0.3s ease-in-out;
    max-height: 6em; 
}

.card-text.content.expanded {
    -webkit-line-clamp: unset; 
    max-height: none;
}

.btn-custom {
    background: none;
    color: #009B22; 
    border: none;
    text-decoration: none;
    font-size: 16px; 
    padding: 10px 15px; 
    display: inline-flex;
    align-items: center;
    transition: color 0.3s;
}

.btn-custom:hover {
    color: #009B22;
}

.arrow {
    margin-left: 8px;
    font-size: 18px; 
}

/*QA  */

.QA{
    background-color: #ebf2ed;
    padding-left: 60px;
    padding-top: 40px;
    padding-bottom: 40px;
}

.QA hr{
    border-top: 1px solid #212529;
    margin: 13px;
}
.QA .question {
    /* cursor: pointer; */
    font-size: 12pt;
}

.ques{
    cursor: pointer;
}

.answer {
    display: none;
    font-size: 11pt;
    color: #545454;
    padding-top: 15px;
}

.answer.show {
    display: block;
}

.arrow {
    display: inline-block;
    width: 15px;
    transition: transform 0.3s;
}

.active.arrow {
    transform: rotate(90deg);
}

.anyquestion{
    font-size: 30pt;
    text-align: center;
    font-weight: 500;
    padding: 20px;
}

.QA .container .row .text{
    font-size: 13pt;
    text-align: justify;
}


</style>
</head>

<body>
    <!-- ======= Header ======= -->
    <div class="border-bottom pb-5">
        <jsp:include page="layout/header.jsp" />
        <jsp:include page="layout/mega-menu.jsp" />
    </div>


    <!-- Carousel Section Start -->
    <div id="carouselExampleIndicators" class="container carousel slide mt-5">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="1" aria-label="Slide 2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<c:url value="/resources/assets/images/banner/banner2.png" />" width="1200px" height="628px" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<c:url value="/resources/assets/images/banner/banner1.png" />" width="1200px" height="628px" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span> <span
                class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- Carousel Section End -->

    <!-- Giới thiệu ngắn về hệ thống -->
   
    <!-- Category Section Start-->
    <section class="mb-lg-10 mt-lg-14 my-8">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-6">
                    <h2 class="mb-0">DANH MỤC VACXIN</h2>
                </div>
            </div>
            <div class="category-slider">
                <c:forEach var="item" items="${listVacxin}">
                    <div class="item">
                        <a href="#" class="text-decoration-none text-inherit">
                            <div class="card card-product mb-4">
                                <div class="card-body text-center py-8">
                                    <img src="${item.image}" class="mb-3" width="150">
                                    <div class="shorten-text">${item.name}</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>

    <!-- Hướng dẫn sử dụng -->
    <section class="container my-5" style="padding-left: 40px;">
         <h2 class="mb-6">HƯỚNG DẪN SỬ DỤNG HỆ THỐNG</h2>
        <p>Để đăng ký tiêm vacxin, hãy làm theo các bước sau:</p>
        <ol>
            <li>Đăng nhập vào hệ thống bằng tài khoản của bạn.</li>
            <li>Chọn loại vacxin và lịch tiêm phù hợp với bạn.</li>
            <li>Điền thông tin cần thiết và xác nhận đăng ký.</li>
            <li>Đến trung tâm y tế vào ngày đã đăng ký để thực hiện tiêm chủng.</li>
        </ol>
        <p>Hệ thống sẽ tự động cập nhật lịch sử tiêm vacxin của bạn sau khi hoàn tất quá trình tiêm chủng.</p>
    </section>

	
	<!-- Giowis thiệu-->
	<section class="mb-lg-10 mt-lg-14 my-8">
		<div class="container">
			<div class="row">
				<div class="col-12 mb-6">

					<h2 class="mb-0" style="padding-left: 30px;"><span>GIỚI THIỆU</span></h2>

				</div>
			</div>
			<div class="card mb-3" style="width: 100%; border: none;">
			  <div class="row g-0">
			    <div class="col-md-6">
			      <div class="card-body">
			        
			        <p class="card-text">
			        	Chúng tôi tự hào giới thiệu hệ thống vaccine tiên tiến của mình, được thiết kế để bảo vệ sức khỏe cộng đồng và giúp bạn dễ dàng quản lý thông tin về tiêm chủng. Hệ thống của chúng tôi cung cấp thông tin chi tiết về các loại vaccine, lịch tiêm chủng, và các hướng dẫn quan trọng nhằm đảm bảo bạn và gia đình luôn được bảo vệ tốt nhất.

						Với giao diện thân thiện và dễ sử dụng, hệ thống của chúng tôi cho phép bạn theo dõi lịch tiêm, nhắc nhở các mũi tiêm sắp tới, và cung cấp các tài liệu hướng dẫn để bạn có thể đưa ra các quyết định thông thái về sức khỏe. Đảm bảo sức khỏe và sự an toàn của bạn là ưu tiên hàng đầu của chúng tôi. Hãy để chúng tôi đồng hành cùng bạn trên con đường chăm sóc sức khỏe toàn diện.
					</p>
			        <p class="card-text">
			        	 <a href="#" class="btn btn-outline-primary" >Tìm hiểu</a>
			        </p>
			      </div>
			    </div>
			    <div class="col-md-6">
			      <img src="<c:url value='/resources/images/img1.jpg' />" class="img-fluid rounded-start" alt="..." style="height: 100%;">
			    </div>
			  </div>
			</div>
		</div>
	</section>
	
	
	<!-- Các dịch vụ-->
	<section class="mb-lg-10 mt-lg-14 my-8" style="background-color: #ebf2ed; padding-bottom: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-12 mb-6">

					<h2 class="mb-7 text-center" style="padding-top: 30px"><span>DỊCH VỤ</span></h2>

				</div>
			</div>
			<div class="card mb-3" style="width: 100%; border: none;">
			  <div class="row row-cols-1 row-cols-md-4 g-8" style="background-color: #ebf2ed;">
				  <div class="col">
				    <div class="card">
				      <img src="<c:url value='/resources/images/img4.png' />" class="card-img-top" alt="...">
				      <div class="card-body service">
				        <h5 class="card-title">Tra cứu thông tin</h5>
				        <p class="card-text">Tra cứu dễ dàng hơn với những từ khóa đơn giản, ngoài ra việc tra cứu sẽ giúp người dùng có thể nắm bắt được tình hình dịch vụ cũng như vaccine để có những kiến thức hơn.</p>
				      </div>
				    </div>
				  </div>
				  <div class="col">
				    <div class="card">
				      <img src="<c:url value='/resources/images/img5.png' />" class="card-img-top" alt="...">
				      <div class="card-body service">
				        <h5 class="card-title">Điều trị</h5>
				        <p class="card-text">Chuẩn đoán kịp thời để có thể ngăn ngừa các loại bênh một cách nhanh chóng. Dịch vụ chúng tôi là nơi uy tín chất lượng và đảm bảo quý khách có thể yên tâm sử dụng.</p>
				      </div>
				    </div>
				  </div>
				  <div class="col">
				    <div class="card">
				      <img src="<c:url value='/resources/images/img6.png' />" class="card-img-top" alt="...">
				      <div class="card-body service">
				        <h5 class="card-title">Chuẩn đoán bệnh</h5>
				        <p class="card-text">Cung cấp các dịch vụ chuẩn đoán nhanh chóng, kịp thời để xử lý các vấn đề cấp bách hơn, nhanh chóng hơn và hiệu quả hơn.</p>
				      </div>
				    </div>
				  </div>
				  <div class="col">
				    <div class="card">
				      <img src="<c:url value='/resources/images/img7.png' />" class="card-img-top" alt="...">
				      <div class="card-body service">
				        <h5 class="card-title">Dịch vụ uy tín 24h</h5>
				        <p class="card-text">Gọi đâu có đấy, chúng tôi sẵn sàng phục vụ quý khách 24/7 quý khách có thể yên tâm và sử dụng</p>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Đánh giá & cảm nhận -->
	<section class="container my-5">
		<div class="row mb-6">
			<h2>ĐÁNH GIÁ VÀ CẢM NHẬN</h2>
		</div>
	    
	    <div class="row">
	        <!-- Đánh giá 1 -->
	        <div class="col-md-4 mb-4">
	            <div class="card">
	                <div class="card-body">
	                    <h5 class="card-title">Nguyễn Văn A</h5>
	                    <p class="card-text">Hệ thống rất tiện lợi và dễ sử dụng. Tôi đã đăng ký tiêm chủng một cách nhanh chóng.</p>
	                    <p class="text-muted">Đánh giá: 5/5</p>
	                </div>
	            </div>
	        </div>
	        
	        <!-- Đánh giá 2 -->
	        <div class="col-md-4 mb-4">
	            <div class="card">
	                <div class="card-body">
	                    <h5 class="card-title">Trần Thị B</h5>
	                    <p class="card-text">Tôi rất hài lòng với dịch vụ của hệ thống. Quy trình đăng ký và tiêm chủng rất nhanh gọn.</p>
	                    <p class="text-muted">Đánh giá: 4.5/5</p>
	                </div>
	            </div>
	        </div>
	
	
	        <!-- Đánh giá 3 -->
	        <div class="col-md-4 mb-4">
	            <div class="card">
	                <div class="card-body">
	                    <h5 class="card-title">Lê Văn C</h5>
	                    <p class="card-text">Hệ thống cần cải thiện một số tính năng, nhưng tổng quan vẫn rất tốt.</p>
	                    <p class="text-muted">Đánh giá: 4/5</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	
	<!-- Các tin tức-->
	<section class="mb-lg-10 mt-lg-14 my-8" style="padding-bottom: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-12 mb-6">

					<h2 class="mb-0 text-center" ><span>TIN TỨC</span></h2>

				</div>
			</div>
			<div class="card mb-3" style="width: 100%; border: none;">
			  <div class="row row-cols-1 row-cols-md-3 g-8">
				  <div class="col">
		            <div class="card">
		                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg" class="card-img-top" alt="...">
		                <div class="card-body">
		                	<h5 class="card-title">
							    <a href="/vacxin-system/news_details" class="text-decoration-none">Bạch hầu vẫn diễn biến phức tạp</a>
							</h5>
		                    <p class="card-text content">Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc và miền Trung, chưa rõ nguồn lây, đã có trường hợp không qua khỏi cùng hàng trăm ca F1 được cách ly theo dõi. UBND tỉnh Thanh Hóa công bố dịch bạch hầu tại thị xã biên giới Mường Lát.</p>
		                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
		                </div>
		            </div>
		        </div>
		        <div class="col">
		            <div class="card">
		                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
		                <div class="card-body">
			                <h5 class="card-title">
							    <a href="/vacxin-system/news_details" class="text-decoration-none">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</a>
							</h5>
		                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin. Ghi nhận từ Sở Y tế TP.HCM cho thấy, trong số các ca mắc và tử vong do sởi trong năm nay, có tới 25% bệnh nhi là trẻ dưới 9 tháng tuổi, trong khi đó vắc xin sởi được chỉ định tiêm cho trẻ từ 9 tháng trở lên. Vậy trẻ dưới 9 tháng, chưa đến tuổi tiêm vắc xin sởi thì cần làm gì để phòng bệnh?</p>
		                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
		                </div>
		            </div>
		        </div>
		        <div class="col">
		            <div class="card">
		                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
		                <div class="card-body">
		                	<h5 class="card-title">
							    <a href="/vacxin-system/news_details" class="text-decoration-none">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</a>
							</h5>
		                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi. Theo Trung tâm kiểm soát và phòng ngừa dịch bệnh, phế cầu khuẩn gây ra khoảng 2.000 trường hợp mắc bệnh nghiêm trọng như nhiễm khuẩn huyết, viêm phổi, viêm màng não ở trẻ dưới 5 tuổi tại Hoa Kỳ. Các chuyên gia khuyến cáo trẻ nhỏ cần được tiêm vắc xin phòng phế cầu đầy đủ, đúng lịch để hạn chế gánh nặng bệnh tật do phế cầu gây ra. </p>
		                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
		                </div>
		            </div>
		        </div>
				 
			</div>
			<div class="row center">
			    <div class="col text-center" style="margin: 30px; border: none;"> 
			        <a href="/vacxin-system/news" class="btn btn-outline-primary" style=" width: 150px;">Xem thêm</a>
			    </div>
			</div>
			</div>
		</div>
	</section>
	
	
	<!-- QA -->
    <section class="QA" id="QA">
        <div class="container justify-content-center">
        	<div class="row">
				<div class="col-12 mb-6">

					<h2 class="mb-0 text-center" >Các <span>câu hỏi</span> thường gặp</h2>

				</div>
			</div>
            <div class="row">
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">Health in other Countries?
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">We Build and Create?
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">Water Delivery in Africa?
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">How to became a volunteer?
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">How Do I Make Donation
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">How Do I Make Donation
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-11">
                            <div class="faq">
                                <div class="question">Health in other Countries?
                                </div>
                                <div class="answer">
                                    Veniam quae. Nostrum facere repellendus minus quod aut aliquam neque reiciendis.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-auto ques">
                            <i class="fa-solid fa-chevron-right arrow"></i>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <img src="<c:url value='/resources/images/QA.jpg' />" style="width: 350px;">
                    <div class="anyquestion"> Any Question ?</div>
                    <p class="text">
                        "The meaning of life is to find your gift. The purpose of life is to give it away."
                    </p>
                </div>
            </div>
        </div>
        <script>
	        window.addEventListener('DOMContentLoaded', (event) => {
	            const arrows = document.querySelectorAll('.arrow');
	
	            arrows.forEach(arrow => {
	                arrow.addEventListener('click', () => {
	                    arrow.classList.toggle('active');
	                    const faq = arrow.parentNode.parentNode;
	                    const answer = faq.querySelector('.answer');
	                    answer.classList.toggle('show');
	                });
	            });
	        });
	    </script>

    </section>
    
    
	<!-- ======= FOOTER ======= -->
	<jsp:include page="layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="layout/jsLink.jsp" />
	<!--Start of Fchat.vn--><script type="text/javascript" src="https://cdn.fchat.vn/assets/embed/webchat.js?id=66c8ada9f388e47b452b4a72" async="async"></script><!--End of Fchat.vn-->
	

</body>
</html>
