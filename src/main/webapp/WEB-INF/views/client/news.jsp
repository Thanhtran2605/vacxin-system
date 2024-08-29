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
  /*   height: 100%; */
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


.card-title a{
	color: black;
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
.card-img-top {
    width: 100%;
    height: 170px;
    object-fit: cover;
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
       <!--  <div class="backgroud">
	        <div class="overlap">
	          <div class="text-wrapper-6">Tin tức</div>
	          
	        </div>
	    </div> -->
	    
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
            <button onclick="previousPage()" id="prev-btn" class="btn btn-primary mx-2" disabled><i class="fa-solid fa-chevron-left"></i></button>
            <span id="page-number" class="mx-2">1</span>
            <button onclick="nextPage()" id="next-btn" class="btn btn-primary mx-2"><i class="fa-solid fa-chevron-right"></i></button>
        </div>
    </div>
	
	 <script>
        // Dữ liệu tin tức (HTML block cho mỗi thẻ tin tức)
        const newsItems = [
        	`<div class="col">
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
	        </div>`,
	        `<div class="col">
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
	        </div>`,
	        `<div class="col">
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
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</a>
						</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não, viêm não Nhật Bản… có diễn biến phức tạp trên cả nước. Trong khi đó, hàng triệu trẻ em đang chuẩn bị quay trở lại trường học nhưng chưa được tiêm vắc xin đầy đủ, đây là nguyên nhân khiến trẻ đối diện với các loại virus, vi khuẩn dễ mắc nhiều bệnh nguy hiểm, ảnh hưởng đến sức khoẻ và khả năng học tập.</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Liên tục ghi nhận nhiều ca mắc ho gà</a>
						</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin nhưng từ đầu năm đến nay cả nước có gần 700 ca mắc, chủ yếu là ở trẻ em. Mới đây bệnh viện Bạch Mai thông báo về 1 ca ho gà ở người lớn tuổi sau nhiều năm không ghi nhận ca mắc. Tiêm vắc xin ho gà đầy đủ cho người lớn tuổi, người có bệnh nền giúp phòng bệnh, biến chứng nặng, tránh trở thành nguồn lây cho gia đình. </p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Một thai phụ vừa được xác định mắc bạch hầu</a>
						</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát (Thanh Hoá). Hiện Sở Y tế tỉnh đang khẩn trương vào cuộc truy vết, khoanh vùng, làm rõ nguồn lây.

	                    Theo báo cáo của Trung tâm kiểm soát bệnh tật (CDC) tỉnh Thanh Hóa, bệnh nhân được xác định là chị P.L.M (sinh năm 2007, ngụ tại huyện Mường Lát, tỉnh Thanh Hóa) hiện đang mang thai tháng thứ 8. Theo đó, từ ngày 1/8, bệnh nhân đã có biểu hiện đau rát họng, tự ý mua thuốc điều trị tại nhà nhưng tình trạng không đỡ. Đến ngày 4/8, bệnh nhân có biểu hiện sốt nhẹ, đau rát họng, nuốt vướng, niêm mạc họng đỏ xung huyết. Bệnh nhân đến khám tại một phòng khám tư nhân, nghi mắc bệnh bạch hầu nên chuyển sang Bệnh viện Đa khoa huyện Mường Lát cùng ngày để theo dõi, điều trị.
	                    </p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tvtt-vac-xin-can-tiem-cho-tre-truoc-khi-di-hoc-lai.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Bảo vệ sức khỏe cho trẻ đến trường bằng vắc xin</a>
						</h5>
	                    <p class="card-text content">Ho gà xuất hiện ở khu vực miền Bắc, sởi quay trở lại tại nhiều địa phương, các bệnh như bạch hầu, viêm màng não...</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ghi-nhan-ca-benh-ho-ga-hiem-gap.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Liên tục ghi nhận nhiều ca mắc ho gà</a>
						</h5>
	                    <p class="card-text content">Ho gà là một bệnh truyền nhiễm cấp tính có khả năng lây lan nhanh qua đường hô hấp. Mặc dù bệnh đã có thể phòng được bằng vắc xin...</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/thai-phu-mac-bach-hau-o-thanh-hoa.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
			            <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Một thai phụ vừa được xác định mắc bạch hầu</a>
						</h5>
	                    <p class="card-text content">Sở Y tế tỉnh Thanh Hóa cho biết, địa bàn vừa ghi nhận một bệnh nhân mắc bệnh bạch hầu là thai phụ ở huyện vùng cao Mường Lát...</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
            `<div class="col">
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
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/tiem-vac-xin-phong-soi-cho-tre-nho.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Trẻ chưa đến tuổi tiêm vắc xin sởi cần làm gì để phòng bệnh?</a>
						</h5>
	                    <p class="card-text content">TP.HCM đang đứng trước nguy cơ dịch sởi bùng phát khi số ca bệnh gia tăng nhanh chóng, đã có 3 ca tử vong, các ca mắc chủ yếu là trẻ chưa tiêm vắc xin và chưa đủ tuổi để tiêm vắc xin...</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
	                </div>
	            </div>
	        </div>`,
	        `<div class="col">
	            <div class="card">
	                <img src="https://vnvc.vn/wp-content/uploads/2024/08/ben-trong-kho-lanh-cua-vnvc.jpg" class="card-img-top" alt="...">
	                <div class="card-body">
		                <h5 class="card-title">
						    <a href="/vacxin-system/news_details" class="text-decoration-none">Trẻ sơ sinh, trẻ nhỏ có nên tiêm vắc xin phế cầu không?</a>
						</h5>
	                    <p class="card-text content">Nhiễm phế cầu khuẩn là mối đe dọa đối với sức khỏe của cộng đồng, nhất là với người có hệ miễn dịch yếu kém như trẻ nhỏ và người cao tuổi...</p>
	                     <a href="/vacxin-system/news_details" class="btn btn-custom">Xem thêm <span class="arrow">→</span></a>
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
	
</body>
</html>