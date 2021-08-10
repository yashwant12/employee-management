<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
    <title>Employees List</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

</head>

<body>

<div class="container">

    <h3>Employee List</h3>

        <table class="table table-bordered table-striped">
            <tr class="thead-dark">
                <th>First Name</th>
                <th>Last Name</th>
                <th>Salary</th>
                <th>Department</th>
                <th>Position</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Picture</th>
                <th>Action</th>
            </tr>

            <c:forEach var="tempEmployee" items="${employees}">

                <c:url var="editLink" value="/employee/editEmployee" >
                    <c:param name="employeeId" value="${tempEmployee.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/employee/delete" >
                    <c:param name="employeeId" value="${tempEmployee.id}" />
                </c:url>

                <tr>
                    <td> ${tempEmployee.firstName} </td>
                    <td> ${tempEmployee.lastName} </td>
                    <td> ${tempEmployee.salary} </td>
                    <td> ${tempEmployee.department} </td>
                    <td> ${tempEmployee.position} </td>
                    <td> ${tempEmployee.email} </td>
                    <td> ${tempEmployee.contactNumber} </td>
                    <td><img src="data:image/jpeg;base64,${tempEmployee.image}" width="100" height="100"/></td>

                    <td>

                        <a href="${editLink}" class="btn btn-info btn-sm">edit</a>
                        |
                        <a href="${deleteLink}"
                           class="btn btn-danger btn-sm"
                           onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">delete</a>
                    </td>

                </tr>

            </c:forEach>

        </table>

</div>


</body>

</html>
