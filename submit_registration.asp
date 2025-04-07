<!--#include virtual="inc/header.inc"-->

<%
' Do this only when a from was POSTed
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
    
    dim Customer
    set Customer = GetObject("script:" & Server.Mappath("/lib/datamodels/customer.wsc"))
        Customer.open()
        Customer.name = Request.Form("name")
        Customer.email = Request.Form("email")
        Customer.password = Request.Form("password")
        Customer.save()
        Customer.close()
    set Customer = Nothing

    Response.write("Thank you for registering, " & Request.Form("name") & ".")

End If
%>
<!--#include virtual="inc/footer.inc"-->