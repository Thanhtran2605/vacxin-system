<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <title>Giới thiệu về Hệ thống Quản lý Tiêm chủng</title>
    <!-- ======= CSS và Bootstrap ======= -->
    <jsp:include page="../layout/cssLink.jsp" />
    <style>
        /* Thiết lập nền trắng cho toàn bộ trang */
        body {
            background-color: #ffffff; /* Thay đổi nền thành màu trắng */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            padding: 20px 0;
        }
        

        .intro-container {
            padding: 30px;
            margin: 30px auto;
            max-width: 900px;
            border-radius: 15px;
            background-color: rgba(255, 255, 255, 0.9); /* Nền trắng với độ trong suốt nhẹ */
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .intro-title {
            color: #007bff;
            margin-bottom: 30px;
            text-align: center;
            font-size: 2rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: bold;
        }

        .intro-section {
            margin-bottom: 25px;
        }

        .intro-text {
            font-size: 1.1rem;
            line-height: 1.8;
            margin-bottom: 20px;
            text-align: justify;
            color: #555;
        }

        .highlight {
            font-weight: bold;
            color: #28a745;
        }

        /* Tạo phong cách nút ấn tượng */
        .btn-primary-custom {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-transform: uppercase;
            font-weight: bold;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            cursor: pointer;
        }

        .btn-primary-custom:hover {
            background-color: #0056b3;
            text-decoration: none;
        }

        /* Hình ảnh minh họa */
        .intro-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 25px;
        }

        /* Phần thông tin chi tiết */
        .more-info {
            display: none;
            margin-top: 20px;
            font-size: 1rem;
            line-height: 1.7;
            color: #444;
        }

        .more-info h4 {
            color: #007bff;
            font-weight: bold;
            margin-bottom: 15px;
        }

        /* Thiết kế các biểu tượng trong hàng ngang */
        .intro-icons {
            display: flex;
            justify-content: space-around; /* Giãn cách đều các biểu tượng */
            margin-top: 30px;
        }

        .intro-icon {
            text-align: center;
            flex: 1; /* Mỗi biểu tượng sẽ chiếm một phần bằng nhau */
        }

        .intro-icon img  {
            max-width: 100px; /* Kích thước biểu tượng */
            height: auto;
            margin-bottom: 10px;
            transition: transform 0.3s ease;
              	
        }
         .intro-icon img:hover {
            transform: scale(1.1);
    }
     /* Hiệu ứng parallax cho các phần */
    .parallax {
        background-image: url('resources/images/qldd.jpg');
        height: 400px;
        background-attachment: fixed;
        background-size: cover;
        background-position: center;
    }

        .intro-icon p {
            font-size: 1rem;
            color: #333;
            font-weight: bold;
        }
       /* Phần video giới thiệu */
.intro-video {
    width: 100%;
    max-width: 800px; /* Kích thước tối đa của video */
    margin: 20px auto; /* Căn giữa video */
    border-radius: 10px; /* Góc bo tròn */
    overflow: hidden; /* Ẩn các phần của video tràn ra ngoài vùng chứa */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Đổ bóng nhẹ cho video */
}

.intro-video video {
    width: 100%; /* Đảm bảo video chiếm toàn bộ chiều rộng của phần chứa */
    height: auto; /* Đảm bảo tỉ lệ khung hình không bị biến dạng */
}

    /* Phần câu chuyện thành công */
    .success-stories {
        background-color: #f8f9fa;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    }

    .success-stories h4 {
        color: #007bff;
    }

    .success-stories p {
        font-size: 1rem;
        color: #444;
    }
    </style>

    <!-- Thêm jQuery cho hiệu ứng -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".btn-primary-custom").click(function () {
                $(".more-info").slideToggle();  // Hiển thị hoặc ẩn phần thông tin chi tiết
            });
        });
    </script>
</head>

<body>
    <!-- ======= Header ======= -->
    <div class="border-bottom pb-5">
        <jsp:include page="../layout/header.jsp" />
        <jsp:include page="../layout/mega-menu.jsp" />
    </div>

    <section class="mt-5">
        <div class="container intro-container">
            <h3 class="intro-title">Giới thiệu về Hệ thống Quản lý Tiêm chủng Vắc-xin</h3>
            
            <!-- Hình ảnh minh họa -->
            <img src="${pageContext.request.contextPath}/resources/images/tc-cho-tre-em-3.jpg" alt="Vaccine Illustration" class="intro-image" />

            <div class="intro-section">
                <p class="intro-text">
                    Hệ thống Quản lý Tiêm chủng Vắc-xin của TP Đà Nẵng là một giải pháp công nghệ thông tin hiện đại, 
                    nhằm hỗ trợ công tác quản lý và giám sát quá trình tiêm chủng của cư dân. Hệ thống được phát triển với 
                    mục tiêu nâng cao hiệu quả và an toàn trong việc tiêm chủng, từ khâu đăng ký đến giám sát phản ứng sau tiêm.
                </p>
                <p class="intro-text">
                    Với sự hỗ trợ của hệ thống này, các cơ quan y tế và chính quyền địa phương có thể quản lý thông tin 
                    tiêm chủng một cách chính xác và kịp thời. Hệ thống cung cấp các công cụ để theo dõi lịch sử tiêm chủng, 
                    lên lịch hẹn, và gửi thông báo nhắc nhở cho người dân. Điều này giúp giảm thiểu tình trạng quên lịch tiêm 
                    và đảm bảo mọi người dân đều được tiêm chủng đầy đủ và đúng thời gian.
                </p>
                <p class="intro-text highlight">
                    Chúng tôi cam kết mang đến một hệ thống an toàn, bảo mật, và dễ sử dụng, nhằm phục vụ tốt nhất cho sức khỏe của người dân TP Đà Nẵng.
                </p>
            </div>

            <!-- Phần biểu tượng giới thiệu -->
            <div class="intro-icons">
                <div class="intro-icon">
                    <img src="resources/images/qldd.jpg" alt="" />
                    <p>Quản lý dễ dàng</p>
                </div>
                <div class="intro-icon">
                    <img src="resources/images/bqvx.jpg" alt="" />
                    <p>An toàn và bảo mật</p>
                </div>
                <div class="intro-icon">
                    <img src="resources/images/hqc1.png" alt="" />
                    <p>Hiệu quả cao</p>
                </div>
            </div>

            <!-- Nút Tìm hiểu thêm -->
            <div class="text">
                <a class="btn-primary-custom">Tìm hiểu thêm</a>
            </div>

            <!-- Phần thông tin chi tiết ẩn ban đầu -->
            <div class="more-info">
                <h4>Chi tiết về các tính năng của hệ thống:</h4>
                <p>
                    Hệ thống Quản lý Tiêm chủng Vắc-xin không chỉ đơn thuần là một công cụ quản lý, mà còn tích hợp nhiều tính năng hữu ích:
                </p>
                <ul>
                    <li><strong>Quản lý lịch tiêm chủng:</strong> Hệ thống tự động sắp xếp và quản lý lịch tiêm chủng, giúp người dân dễ dàng theo dõi và tuân thủ đúng lịch trình.</li>
                    <li><strong>Thông báo nhắc nhở:</strong> Hệ thống gửi thông báo qua email hoặc tin nhắn SMS để nhắc nhở người dân về các lịch tiêm sắp tới.</li>
                    <li><strong>Quản lý hồ sơ y tế:</strong> Tích hợp với các cơ sở dữ liệu y tế để cung cấp thông tin toàn diện về lịch sử sức khỏe và tiêm chủng của từng cá nhân.</li>
                    <li><strong>Báo cáo và thống kê:</strong> Cung cấp các báo cáo chi tiết và thống kê giúp các cơ quan y tế theo dõi tình hình tiêm chủng và đưa ra các quyết định chính xác.</li>
                    <li><strong>Hỗ trợ đa nền tảng:</strong> Hệ thống có thể truy cập từ máy tính, điện thoại di động và các thiết bị khác, đảm bảo tính tiện lợi và linh hoạt.</li>
                </ul>
            </div>
            <div class="intro-video">
             <video controls>
        <source src="${pageContext.request.contextPath}/resources/videos/vd.mp4" type="video/mp4">
     	
    </video>
    </div>
    <div class="success-stories">
     <h4>Câu chuyện thành công</h4>
    <p>
        Hệ thống Quản lý Tiêm chủng đã giúp hàng nghìn người dân TP Đà Nẵng tiêm chủng đúng lịch và an toàn. 
        Dưới đây là một số câu chuyện thành công từ người dùng và các cơ sở y tế.
    </p>
    <p>
      Tại TP Đà Nẵng, hệ thống Quản lý Tiêm chủng Vắc-xin đã giúp giảm đáng kể tỷ lệ quên lịch tiêm chủng. Trước khi triển khai hệ thống, nhiều gia đình thường xuyên quên lịch tiêm chủng của trẻ em, dẫn đến việc bỏ lỡ các mũi tiêm quan trọng. Sau khi hệ thống được đưa vào sử dụng, các thông báo nhắc nhở tự động đã giúp người dân nhớ đúng thời điểm và đảm bảo rằng các trẻ em được tiêm chủng đầy đủ và đúng lịch.

      Kết quả: Tỷ lệ quên lịch tiêm chủng đã giảm xuống chỉ còn 5%, so với mức 20% trước đây
    </p>
    <p>
       Trước khi có hệ thống mới, việc quản lý thông tin tiêm chủng tại Đà Nẵng chủ yếu dựa trên hồ sơ giấy tờ, gây khó khăn trong việc theo dõi và thống kê. Hệ thống Quản lý Tiêm chủng Vắc-xin đã thay đổi cách thức quản lý này bằng cách cung cấp một nền tảng số hóa cho các cơ quan y tế. Nhờ đó, việc truy cập và cập nhật thông tin về lịch sử tiêm chủng của mỗi cá nhân trở nên nhanh chóng và dễ dàng hơn.

       Kết quả: Thời gian xử lý và cập nhật thông tin đã giảm từ 3 ngày xuống chỉ còn vài giờ, và các báo cáo tiêm chủng có thể được tạo ra trong thời gian thực.
    </p>
    </div>
            </div>
        
    </section>

    <!-- ======= FOOTER ======= -->
    <jsp:include page="../layout/footer.jsp" />

    <!-- ======= JS ======= -->
    <jsp:include page="../layout/jsLink.jsp" />
</body>

</html>
