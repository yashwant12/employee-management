package com.rapidken.employee_management.controller;

import com.rapidken.employee_management.entity.Employee;
import com.rapidken.employee_management.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
    public String listEmployees(Model theModel) {
        List<Employee> employees = employeeService.getEmployees();

        theModel.addAttribute("employees", employees);

        return "list-employees";
    }

    @GetMapping("/registerEmployee")
    public String registerEmployee(Model theModel) {

        Employee employee = new Employee();

        theModel.addAttribute("employee", employee);

        return "employee-form";
    }

    @PostMapping("/saveEmployee")
    public String saveCustomer(@ModelAttribute("employee") Employee employee,@RequestParam("file") MultipartFile picture) throws IOException {
        byte[] image = picture.getBytes();
        employee.setPicture(image);
        employeeService.saveEmployee(employee);

        return "redirect:/employee/list";
    }

    @GetMapping("/editEmployee")
    public String showFormForUpdate(@RequestParam("employeeId") int theId,
                                    Model theModel) {

        Employee employee = employeeService.getEmployee(theId);

        theModel.addAttribute("employee", employee);

        return "employee-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("employeeId") int theId) {

        employeeService.deleteEmployee(theId);

        return "redirect:/employee/list";
    }
}
