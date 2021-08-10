package com.rapidken.employee_management.dao;

import com.rapidken.employee_management.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getEmployees();

    void saveEmployee(Employee employee);

    public Employee getEmployee(int theId);

    public void deleteEmployee(int theId);
}
