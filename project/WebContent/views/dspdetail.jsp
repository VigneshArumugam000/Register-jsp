 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
#sailorTableArea{
    max-height: 300px;
    overflow-x: auto;
    overflow-y: auto;
}
#sailorTable{
    white-space: normal;
}
tbody {
    display:block;
    height:200px;
    overflow:auto;
}
thead, tbody tr {
    display:table;
    width:100%;
    table-layout:fixed;
}

</style>

<div class="table-responsive" id="sailorTableArea">
    <table id="sailorTable" class="table table-striped table-bordered" width="100%">
 
        <thead>
            <tr>
                <th>fname</th>
                <th>lname</th>
               <th>E-mail</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${cuslist}" var="x">
            <tr>
            <td>${x.fname}</td>
            <td>${x.lname}</td>
            <td>${x.email}</td>
            </tr>
            
            </c:forEach>
        </tbody>
    </table>
    </div>