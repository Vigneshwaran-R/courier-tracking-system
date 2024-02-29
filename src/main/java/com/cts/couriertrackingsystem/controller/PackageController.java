package com.cts.couriertrackingsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cts.couriertrackingsystem.model.Package;
import com.cts.couriertrackingsystem.service.PackageService;

@Controller
public class PackageController {

	@Autowired
	private PackageService packageService;

	@GetMapping("/package")
	public String packageHome(Model model) {
		model.addAttribute("pkg", new Package());
		return "package";
	}

	@GetMapping("/insertpackage")
	public String insertPackageForm(Model model) {
		model.addAttribute("pkgForm", new Package());
		return "packageCreation";
	}

	@PostMapping("/insertpackage")
	public String insertPkg(@ModelAttribute("pkgForm") Package pkg, Model model) throws Exception {
		int res = packageService.insertPack(pkg);
		if (res == 0) {
			return "insertfail";
		}
		return "packageCreation";
	}

	@GetMapping("/updatepackage")
	public String updatePackageForm(Model model) {
		model.addAttribute("updatePkgForm", new Package());
		return "packageUpdation";
	}

	@GetMapping("/update")
	public String updatePackage(Model model) {
		model.addAttribute("updatePkg", new Package());
		return "updatepackage";
	}

	@PostMapping("/updatePackage")
	public String updatePkg(@ModelAttribute("updatePkg") Package pkg, Model model) throws Exception {
		packageService.updatePack(pkg);
		return "packageUpdation";
	}

	@GetMapping("/deletepackage")
	public String deletePkg(Model model) {
		model.addAttribute("del", new Package());
		return "deletepackage";

	}

	@PostMapping("/deletepackage1")
	public String deletePkg1(@ModelAttribute("del") Package pkg) throws Exception {
		int count = packageService.deletePack(pkg);
		return "packageUpdation";

	}
}
