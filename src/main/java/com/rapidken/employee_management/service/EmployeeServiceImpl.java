package com.rapidken.employee_management.service;

import com.rapidken.employee_management.dao.EmployeeDAO;
import com.rapidken.employee_management.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    byte[] picture;
    boolean update;

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    @Transactional
    public List<Employee> getEmployees() {
        return employeeDAO.getEmployees();
    }

    @Override
    @Transactional
    public void saveEmployee(Employee employee) {
        if(employee.getPicture().length==0 && update==true){
            this.update = false;
            employee.setPicture(this.picture);
        }
        employeeDAO.saveEmployee(employee);
    }

    @Override
    @Transactional
    public Employee getEmployee(int theId) {
        Employee employee = employeeDAO.getEmployee(theId);
        this.picture = employee.getPicture();
        this.update = true;
        return employee;
    }

    @Override
    @Transactional
    public void deleteEmployee(int theId) {
        employeeDAO.deleteEmployee(theId);
    }
}
