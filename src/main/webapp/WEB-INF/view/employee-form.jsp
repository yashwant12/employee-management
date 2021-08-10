<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>Save Employee</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

</head>

<body>

<div class="container">
    <h3>Employee Directory</h3>
    <hr>
    <p class="h4 mb-4">Save Employee</p>
    <form:form action="saveEmployee" modelAttribute="employee" method="POST" enctype="multipart/form-data">

        <form:hidden path="id" />

        <table >
            <tbody>
            <tr>
                <td><label>First name:</label></td>
                <td><form:input path="firstName" /></td>
            </tr>

            <tr>
                <td><label>Last name:</label></td>
                <td><form:input path="lastName" /></td>
            </tr>

            <tr>
                <td><label>Salary:</label></td>
                <td><form:input path="salary" /></td>
            </tr>

            <tr>
                <td><label>Department:</label></td>
                <td><form:input path="department" /></td>
            </tr>

            <tr>
                <td><label>Position:</label></td>
                <td><form:input path="position" /></td>
            </tr>

            <tr>
                <td><label>Email:</label></td>
                <td><form:input path="email" /></td>
            </tr>

            <tr>
                <td><label>Contact Number:</label></td>
                <td><form:input path="contactNumber" /></td>
            </tr>

            <tr>
                <td>Picture: </td>
                <td><input name="file" type="file" /></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="btn btn-info col-2" /></td>
            </tr>


            </tbody>
        </table>


    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/employee/list">Back to List</a>
    </p>

</div>

</body>

</html>
