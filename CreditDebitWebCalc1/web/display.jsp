<%-- 
    Document   : display
    Created on : Mar 21, 2017, 3:55:19 PM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Credit_Debit Calculator for Mitigation and Conservation Banks</title>
    </head>
    <body>
        <h1>Credit / Debit Calculator for Mitigation and Conservation Banks</h1>
        
        <%
            String mitAcres = request.getParameter("MSite");
            String devAcres = request.getParameter("DSite");
            String mitDivider = request.getParameter("MDivider");
            String devMultiplier = request.getParameter("DMultiplier");
            String pricePerCredit = request.getParameter("PricePerCredit");
            
       
        Double dAcres = Double.valueOf(devAcres);
        Double dMult = Double.valueOf(devMultiplier);
        
        Double mAcres = Double.valueOf(mitAcres);
        Double mDiv = Double.valueOf(mitDivider);
        
        Double priceCrdt = Double.valueOf(pricePerCredit);
        
        Double dDebits = dAcres * dMult;
        Double mCredits = mAcres / mDiv;
        
        Double netCredits = mCredits - dDebits;
        Double valRemainCrdt = netCredits * priceCrdt;
        
        String ncrdts = netCredits.toString();
        String valrecrdts = valRemainCrdt.toString();

        %>
        <table border="1">
           
            <tbody>
                <tr>
                    <td>Mitigation Site (Acres): </td>
                    <td><%= mitAcres %></td>
                </tr>
                <tr>
                    <td>Development Site (Acres): </td>
                    <td><%= devAcres %></td>
                </tr>
                <tr>
                    <td>Mitigation Divider: </td>
                    <td><%= mitDivider %></td>
                </tr>
                <tr>
                    <td>Development Multiplier: </td>
                    <td><%= devMultiplier %></td>
                </tr>
                <tr>
                    <td>Price Per Credit ($): </td>
                    <td><%= pricePerCredit %></td>
                </tr>
                <tr>
                    <td>Number of Credits Remaining: </td>
                    <td><%= ncrdts %></td>
                </tr>
                <tr>
                    <td>Value of Remaining Credits ($): </td>
                    <td><%= valrecrdts %></td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>
