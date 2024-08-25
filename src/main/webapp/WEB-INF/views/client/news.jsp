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
	
<style type="text/css">
body {
  overflow-x: hidden;
}
.backgroud {
    position: relative;
    width: 100%;
    height: 350px;
    background-image: url(/vacxin-system/resources/assets/images/banner/banner3.jpg);
    background-size: cover;
    background-position: 20% 30%;
}


.backgroud .overlap {
    width: 100%;
    height: 100%;
    background-color: #00000059;
}

.backgroud .text-wrapper-6 {
    position: absolute;
    width: 100%;
    text-align: center;
    line-height: 300px;
    font-family: "Outfit", Helvetica;
    font-weight: 700;
    color: #ffffff;
    font-size: 60px;
    letter-spacing: 0;

}

 section{
	margin: 30px;
} 

.card{
	display: flex;
    flex-direction: column;
    height: 100%;
	border-radius: 10px;
  	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.card-title{
	height: 50px;
}

.card-text.content {
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* Giới hạn số dòng là 4 */
    -webkit-box-orient: vertical;
    transition: max-height 0.3s ease-in-out;
    max-height: 6em; /* Điều chỉnh chiều cao tương ứng với 4 dòng */
}

.card-text.content.expanded {
    -webkit-line-clamp: unset; /* Hiển thị toàn bộ nội dung */
    max-height: none; /* Không giới hạn chiều cao */
}

</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<div class="border-bottom pb-5">
		<jsp:include page="layout/header.jsp" />
		<jsp:include page="layout/mega-menu.jsp" />
	</div>


	
	
	<div class="container my-4">
        <div class="backgroud">
	        <div class="overlap">
	          <div class="text-wrapper-6">Tin tức</div>
	          
	        </div>
	    </div>
	    
	    <section > 
	
		<div class="card mb-3" style="width: 100%;">
		  <div class="row g-0">
		    <div class="col-md-6">
		      <img src="https://vnvc.vn/wp-content/uploads/2024/08/talkshow-benh-soi.jpg" class="img-fluid rounded-start" alt="..." style="height: 100%;">
		    </div>
		    <div class="col-md-6">
		      <div class="card-body">
		        <h5 class="card-title">
				    <a href="/vacxin-system/news_details" class="text-decoration-none">Sởi tăng nhanh, diễn biến nguy hiểm, chủ động phòng ngừa sớm!</a>
				</h5>
		        <p class="card-text">Tình hình dịch sởi đang diễn biến phức tạp và trở nên ngày càng nghiêm trọng tại nhiều địa phương. Theo Cục Y tế dự phòng, số ca mắc sởi đã tăng hơn 8 lần so với cùng kỳ năm trước. HCDC ghi nhận chỉ từ cuối tháng 5 cho đến nay, cả thành phố xuất hiện nhiều ca sốt phát ban nghi sởi, hàng trăm ca dương tính và đã có 3 trẻ không qua khỏi, hầu hết đều chưa tiêm vắc xin phòng sởi hoặc đã tiêm vắc xin nhưng chưa đầy đủ. Khảo sát mới nhất cho thấy chỉ có 86% trẻ em từ 9 tháng đến dưới 5 tuổi tại TP.HCM có kháng thể phòng sởi, thấp hơn nhiều so với ngưỡng 95% cần thiết để đạt miễn dịch cộng đồng.</p>
		        <p class="card-text">
		        	<small class="text-body-secondary">
		        		<i class="fa-solid fa-calendar-days"></i> 23/08/2024
		        	</small>
		        </p>
		      </div>
		    </div>
		  </div>
		</div>
	</section>

        <!-- Container để hiển thị tin tức -->
        <section>
            <div class="row row-cols-1 row-cols-md-3 g-8" id="news-container"></div>
        </section>

        <!-- Nút phân trang -->
        <div id="pagination" class="d-flex justify-content-center my-4">
            <button onclick="previousPage()" id="prev-btn" class="btn btn-primary mx-2" disabled>Previous</button>
            <span id="page-number" class="mx-2">1</span>
            <button onclick="nextPage()" id="next-btn" class="btn btn-primary mx-2">Next</button>
        </div>
    </div>
	
	 <script>
        // Dữ liệu tin tức (HTML block cho mỗi thẻ tin tức)
        const newsItems = [
        	`<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bạch hầu vẫn diễn biến phức tạp</h5>
	                    <p class="card-text content">Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc và miền Trung, chưa rõ nguồn lây, đã có trường hợp không qua khỏi cùng hàng trăm ca F1 được cách ly theo dõi. UBND tỉnh Thanh Hóa công bố dịch bạch hầu tại thị xã biên giới Mường Lát.</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</h5>
	                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</h5>
	                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Liên tục ghi nhận nhiều ca mắc ho gà</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Một thai phụ vừa được xác định mắc bạch hầu</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Liên tục ghi nhận nhiều ca mắc ho gà</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Một thai phụ vừa được xác định mắc bạch hầu</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
            `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-benh-cho-be.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Bạch hầu vẫn diễn biến phức tạp</h5>
	                    <p class="card-text content">Nhiều ca bạch hầu xuất hiện tại các địa phương miền Bắc và miền Trung, chưa rõ nguồn lây, đã có trường hợp không qua khỏi cùng hàng trăm ca F1 được cách ly theo dõi. UBND tỉnh Thanh Hóa công bố dịch bạch hầu tại thị xã biên giới Mường Lát.</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</h5>
	                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
	                    <h5 class="card-title">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</h5>
	                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi...</p>
	                    <a href="/vacxin-system/news_details" class="btn btn-primary">Xem thêm</a> 
	                </div>
	            </div>
	        </div>`
        ];

        // Số lượng tin tức mỗi trang
        const itemsPerPage = 6;
        let currentPage = 1;
        const totalPages = Math.ceil(newsItems.length / itemsPerPage);

        // Hiển thị tin tức dựa trên trang hiện tại
        function displayNews(page) {
            const start = (page - 1) * itemsPerPage;
            const end = start + itemsPerPage;
            const newsContainer = document.getElementById('news-container');
            newsContainer.innerHTML = newsItems.slice(start, end).join('');

            // Cập nhật số trang và trạng thái của các nút điều hướng
            document.getElementById('page-number').innerText = page;
            document.getElementById('prev-btn').disabled = page === 1;
            document.getElementById('next-btn').disabled = page === totalPages;
        }

        // Chuyển sang trang tiếp theo
        function nextPage() {
            if (currentPage < totalPages) {
                currentPage++;
                displayNews(currentPage);
            }
        }

        // Quay lại trang trước đó
        function previousPage() {
            if (currentPage > 1) {
                currentPage--;
                displayNews(currentPage);
            }
        }

        // Hiển thị tin tức đầu tiên khi trang tải
        displayNews(currentPage);
    </script>

	
	


	<!-- ======= FOOTER ======= -->
	<jsp:include page="layout/footer.jsp" />

	<!-- ======= JS ======= -->
	<jsp:include page="layout/jsLink.jsp" />
	<!--Start of Fchat.vn--><script type="text/javascript" src="https://cdn.fchat.vn/assets/embed/webchat.js?id=66c8ada9f388e47b452b4a72" async="async"></script><!--End of Fchat.vn-->
	
</body>
</html>