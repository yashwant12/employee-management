package com.rapidken.employee_management.service;

import com.rapidken.employee_management.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getEmployees();

    void saveEmployee(Employee employee);

    public Employee getEmployee(int theId);

    public void deleteEmployee(int theId);
}
