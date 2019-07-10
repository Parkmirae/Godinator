package com.kitri.godinator.mentor.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.godinator.mentor.service.ResumeService;
import com.kitri.godinator.model.BoardDto;


@Controller
@RequestMapping("/resume")
public class ResumeController {

	@Autowired
	private ResumeService resumeService;

//---------------------------------------------------------------------------------- 자소서 작성
	// #### 자소서 작성 페이지 이동 ####
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String mvWrite(@RequestParam String mentor, Model model) {
		model.addAttribute("mentor", mentor);
		return "mentor/writeresume";
	}
	
	// #### 학교 검색 ####
	@RequestMapping(value = "/srcschool", method = RequestMethod.POST, headers = {"Content-Type=application/json"})
	public @ResponseBody String srchSchool(@RequestBody Map<String, String> srcCnd) {
		String json = resumeService.srchSchool(srcCnd);
//		System.out.println(json);
		return json;
	}
	
	// #### 자소서 작성 ####
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardDto boardDto, Model model) {
		String result = "";
//		System.out.println(boardDto.getbSchoolName());
		return result;
	}
	
	
	@RequestMapping("/resumelist")
	public String resumelist() {
		return "mentor/resumelist";
	}

	@RequestMapping("/editlist")
	public String editlist() {
		return "mentor/editlist";
	}
}
