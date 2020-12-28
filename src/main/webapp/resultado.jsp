<%-- 
    Document   : resultado
    Created on : 4 de dez. de 2020, 17:06:07
    Author     : Lucas A. Miranda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
         <%
                
                String val_1 = request.getParameter("valor1");
                String val_2 = request.getParameter("valor2");
                String opcao = request.getParameter("select");
                
                float fval_1 = Float.parseFloat(val_1);
                float fval_2 = Float.parseFloat(val_2);
                float resultado = 0;
                
                 if(opcao.equals("+")){
                    resultado = fval_1 + fval_2;
                }else if(opcao.equals("-")){
                    resultado = fval_1 - fval_2;
                }else if(opcao.equals("*")){
                    resultado = fval_1 * fval_2;
                }else if(opcao.equals("/")){
                    resultado = fval_1/ fval_2;
                }
                 
                out.println("Expressão: <span>" +resultado+ "</span> ");
         %>
         
         
         
         
    </body>
</html>
