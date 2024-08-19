package group7.springmvc.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.repository.PatientRepository;
import group7.springmvc.repository.ScheduleRepository;
import group7.springmvc.service.VaccineService;

@Controller
@RequestMapping("/admin/statistic")
public class ReportController {

	@Autowired
	private PatientRepository patientRepository;

	@Autowired
	private ScheduleRepository scheduleRepository;

	@Autowired
	private VaccineService vaccineService;

	@GetMapping("/statistic-by-vaccine")
	public String getStatistics(@RequestParam(name = "vaccineId", required = false) Long vaccineId, Model model) {
		//
		Map<String, Long> vaccineStats = vaccineService.getCountPatientsByVaccine();
		model.addAttribute("vaccineStats", vaccineStats);

		// Fetch and convert location stats
		List<Object[]> locationStatsList = scheduleRepository.countVaccinationsByLocation();
		Map<String, Long> locationStats = new HashMap<>();
		for (Object[] row : locationStatsList) {
			String locationName = (String) row[0];
			Long count = ((Number) row[1]).longValue();
			locationStats.put(locationName, count);
		}
		model.addAttribute("locationStats", locationStats);

		/// Lấy thống kê theo nhóm tuổi nếu vaccineId có giá trị
		if (vaccineId != null) {
			List<Map<String, Object>> statistics = scheduleRepository.findVaccineStatistics(vaccineId);
			model.addAttribute("statistics", statistics);
			model.addAttribute("selectedVaccineId", vaccineId);
		}

		// Add all vaccines to model
		model.addAttribute("vaccines", vaccineService.findAll());

		return "admin/thongke/statistic-vaccines";
	}

}
