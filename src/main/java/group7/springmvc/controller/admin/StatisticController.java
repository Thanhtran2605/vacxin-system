/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 15, 2024
 *	@version 1.0
*/
package group7.springmvc.controller.admin;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import group7.springmvc.service.ScheduleService;

@Controller
@RequestMapping("admin/statistic")
public class StatisticController {

	@Autowired
	private ScheduleService scheduleService;

	@GetMapping("/by-hour")
	public String getStatisticsByHour(Model model) {
		List<Object[]> data = scheduleService.getStatisticsByHour();

		List<Integer> hours = new ArrayList<>();
		List<Long> counts = new ArrayList<>();

		for (Object[] result : data) {
			hours.add((Integer) result[0]);
			counts.add((Long) result[1]);
		}

		model.addAttribute("hours", hours);
		model.addAttribute("counts", counts);

		return "admin/thongke/statistic-vaccination";
	}

	@GetMapping("/by-date")
	public String getStatisticsByDate(
			@RequestParam("date") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date localDate, Model model) throws JsonProcessingException {

		List<Object[]> dataDay = scheduleService.getStatisticsByDay(localDate);
		List<Object[]> dataMonth = scheduleService.getStatisticsByMonth(getYear(localDate), getMonth(localDate));
		List<Object[]> dataYear = scheduleService.getStatisticsByYear(getYear(localDate));
		List<Object[]> statusData = scheduleService.getStatusPercentage();

		ObjectMapper objectMapper = new ObjectMapper();
		model.addAttribute("statusLabels", objectMapper.writeValueAsString(extractLabels(statusData)));
		model.addAttribute("statusPercentages", objectMapper.writeValueAsString(extractPercentages(statusData)));

		System.out.println("Status Labels: " + extractLabels(statusData));
		System.out.println("Status Percentages: " + extractPercentages(statusData));

		model.addAttribute("labelsDay", extractLabels(dataDay));
		model.addAttribute("countsDay", extractCounts(dataDay));
		model.addAttribute("labelsMonth", extractLabels(dataMonth));
		model.addAttribute("countsMonth", extractCounts(dataMonth));
		model.addAttribute("labelsYear", extractLabels(dataYear));
		model.addAttribute("countsYear", extractCounts(dataYear));
		model.addAttribute("selectedDate", localDate);
		return "admin/thongke/statistic-vaccination";
	}

	private int getYear(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(Calendar.YEAR);
	}

	private int getMonth(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(Calendar.MONTH) + 1;
	}

	private List<String> extractLabels(List<Object[]> data) {
		List<String> labels = new ArrayList<>();
		for (Object[] result : data) {
			labels.add(result[0].toString());
		}
		return labels;
	}

	private List<Long> extractCounts(List<Object[]> data) {
		List<Long> counts = new ArrayList<>();
		for (Object[] result : data) {
			counts.add(((Number) result[1]).longValue());
		}
		return counts;
	}

	private List<Double> extractPercentages(List<Object[]> data) {
		List<Double> percentages = new ArrayList<>();
		for (Object[] result : data) {
			percentages.add((Double) result[1]);
		}
		return percentages;
	}
}
