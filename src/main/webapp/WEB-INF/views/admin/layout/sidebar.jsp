<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link "
			href="/vacxin-system/admin/"> <i class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-menu-button-wide"></i><span>Quản lý người
					dùng</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/qluser/"> <i
						class="bi bi-circle"></i><span>Quản lý người dùng</span>
				</a></li>
			</ul>
			
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/QLchinhanh/"> <i
						class="bi bi-circle"></i><span>Quản lý chi nhánh</span>
				</a></li>
			</ul>
			
			</li>
		<!-- End Components Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#employee-management-nav" data-bs-toggle="collapse"
			href="#"> <i class="bi bi-menu-button-wide"></i><span>Quản
					lý nhân viên</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="employee-management-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/doctor"> <i
						class="bi bi-circle"></i><span>Quản lý Bác sĩ</span>
				</a></li>
				<li><a href="/vacxin-system/admin/receptionist"> <i
						class="bi bi-circle"></i><span>Quản lý Lễ tân</span>
				</a></li>
			</ul></li>
		<!-- End Components Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-journal-text"></i><span>Quản lý cơ sở y tế</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="forms-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/qlvaccinelocation/"> <i
						class="bi bi-circle"></i><span>Danh sách địa điểm tiêm</span>
				</a></li>

			</ul></li>
		<!-- End Forms Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-layout-text-window-reverse"></i><span>Quản lý
					Vaccine</span><i class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="tables-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/vaccines/"> <i
						class="bi bi-circle"></i><span>Danh Sách Vaccine</span>
				</a></li>
					<li><a href="/vacxin-system/admin/vaccines/create"> <i
						class="bi bi-circle"></i><span>Thêm Vaccine</span>
				</a></li>
			</ul></li>
		<!-- End Tables Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-gem"></i><span>Quản lý tiêm chủng</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<c:if test="${ sessionScope.role == 'RECEPTIONIST' || sessionScope.role == 'ADMIN' }">
				<li><a href="/vacxin-system/admin/schedules"> <i
						class="bi bi-circle"></i><span>Danh sách lịch tiêm</span>
				</a></li>
				<li><a href="/vacxin-system/admin/schedules/add"> <i
						class="bi bi-circle"></i><span>Thêm lịch tiêm chủng</span>
				</a></li>
				</c:if>
				<c:if test="${ sessionScope.role == 'DOCTOR' || sessionScope.role == 'ADMIN' }">
					<li>
						<a class="dropdown-item d-flex align-items-center"
							href="/vacxin-system/admin/my-schedule"> <i class="bi bi-circle"></i> <span>Lịch tiêm của tôi</span>
						</a>
					</li>
				</c:if>
			</ul></li>
		<!-- End Icons Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-bar-chart"></i><span>Báo cáo - Thống kê</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="charts-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="/vacxin-system/admin/statistic/by-hour"> <i
						class="bi bi-circle"></i><span>Thống kê tiêm chủng</span>
				</a></li>

				<li><a
					href="/vacxin-system/admin/statistic/statistic-by-vaccine"> <i
						class="bi bi-circle"></i><span>Thống kê Vaccine</span>
				</a></li>

			</ul></li>
		<!-- End Charts Nav -->

		<li class="nav-heading">Pages</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="/vacxin-system/admin/profile"> <i class="bi bi-person"></i>
				<span>Hồ sơ</span>
		</a></li>
		<!-- End Profile Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed" href="/vacxin-system/admin/contact">
				<i class="bi bi-envelope"></i> <span>Liên hệ</span>
		</a></li>
		<!-- End Contact Page Nav -->

	</ul>

</aside>
<!-- End Sidebar-->