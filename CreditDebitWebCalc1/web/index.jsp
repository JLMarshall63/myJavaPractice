<%-- 
    Document   : index
    Created on : Mar 21, 2017, 3:08:07 PM
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
        
        <form name="myCalcsform" action="display.jsp" method="POST">
            
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Mitigation Site (Acres): </td>
                        <td><input type="text" name="MSite" value="10.0" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Development Site (Acres): </td>
                        <td><input type="text" name="DSite" value="10.0" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Mitigation Divider: </td>
                        <td><input type="text" name="MDivider" value="1.0" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Development Multiplier: </td>
                        <td><input type="text" name="DMultiplier" value="1.0" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Price Per Credit ($): </td>
                        <td><input type="text" name="PricePerCredit" value="100000.00" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Number of Credits Remaining: </td>
                        <td><input type="text" name="NoCrdtsRemaining" value="" size="50" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Value of Remaining Credits ($): </td>
                        <td><input type="text" name="ValueRemainCrdts" value="" size="50" readonly="readonly" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" name="clear" />
            <input type="submit" value="Calculate" name="calculate" />
        </form>
    </body>
</html>
