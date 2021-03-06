<%-- 
    Document   : index
    Created on : 8/02/2016, 10:09:26 PM
    Author     : Víctor M. Campuzano Pineda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora simple</title>
        
        <script>
            function addChar(input, character){
                if(input.value == null)
                    input.value = character;
                else
                    input.value += character;
            }

            function deleteChar(input){
                input.value = input.value.substring(0, input.value.length - 1);
                if(input.value.length==0) input.value=null;
            }
            
            function setOp(input, op){
                input.op.value=op;
                if(input.ans.value!=null||input.ans.length>0){
                    input.num.value=input.ans.value;
                    input.ans.value=null;
                }
            }
            </script>
    </head>
    <body>
        <h1>Cliente CalculadoraService</h1>
        <hr/>
        <form action="CalculadoraServlet" method="POST">
            <table align=center>
                <tr align="center">
                    <td align=left colspan = 3>
                        <input type="text" name="num" size=21 readonly>
                    </td>
                    <td>
                        <input type="text" name="op" size=6 readonly>
                    </td>
                </tr>
                
                <tr align="center">
                    <td align=center colspan = 4>
                        <input type="text" name="ans" size=30 <%
                            String ans=request.getParameter("ans");
                            if(ans!=null) out.print("value=\""+ans+"\"");
                        %>>
                    </td>
                </tr>

                <tr align=center>
                    <td>
                        <input type="button" value="   sen   "
                               onClick="setOp(this.form, 'sen')">
                    </td>
                    <td>
                        <input type="button" value="   cos   "
                               onClick="setOp(this.form, 'cos')">
                    </td>
                    <td>
                        <input type="button" value="   tan   "
                               onClick="setOp(this.form, 'tan')">
                    </td>
                    <td>
                        <input type="button" value="  raiz  "
                               onClick="setOp(this.form, 'raiz')">
                    </td>
                </tr>
                
                <tr align=center>
                    <td>
                        <input type="button" value="  asen  "
                               onClick="setOp(this.form, 'asen')">
                    </td>
                    <td>
                        <input type="button" value="  acos  "
                               onClick="setOp(this.form, 'acos')">
                    </td>
                    <td>
                        <input type="button" value="  atan  "
                               onClick="setOp(this.form, 'atan')">
                    </td>
                    <td>
                        <input type="button" value="    ^    "
                               onClick="setOp(this.form, '^')">
                    </td>
                </tr>
                
                <tr align=center>
                    <td>
                        <input type="button" value="   mod  "
                               onClick="setOp(this.form, 'mod')">
                    </td>
                    <td>
                        <input type="button" value="    !    "
                               onClick="setOp(this.form, '!')">
                    </td>
                    <td>
                        <input type="button" value="   / E   "
                               onClick="setOp(this.form, '/E')">
                    </td>
                    <td>
                        <input type="button" value="         ">
                    </td>
                </tr>
                
                <tr align=center>
                    <td>
                        <input type="button" value="    7    "
                               onClick="addChar(this.form.ans, '7')">
                    </td>
                    <td>
                        <input type="button" value="    8    "
                               onClick="addChar(this.form.ans, '8')">
                    </td>
                    <td>
                        <input type="button" value="    9    "
                               onClick="addChar(this.form.ans, '9')">
                    </td>
                    <td>
                        <input type="button" value="    /     "
                               onClick="setOp(this.form, '/')">
                    </td>
                </tr>
                
                <tr align=center>
                    <td>
                        <input type="button" value="    4    "
                               onClick="addChar(this.form.ans, '4')">
                    </td>
                    <td>
                        <input type="button" value="    5    "
                               onClick="addChar(this.form.ans, '5')">
                    </td>
                    <td>
                        <input type="button" value="    6    "
                               onClick="addChar(this.form.ans, '6')">
                    </td>
                    <td>
                        <input type="button" value="    *    "
                               onClick="setOp(this.form, '*')">
                    </td>
                </tr>
                
                <tr align=center>
                    <td>
                        <input type="button" value="    1    "
                               onClick="addChar(this.form.ans, '1')">
                    </td>
                    <td>
                        <input type="button" value="    2    "
                               onClick="addChar(this.form.ans, '2')">
                    </td>
                    <td>
                        <input type="button" value="    3    "
                               onClick="addChar(this.form.ans, '3')">
                    </td>
                    <td>
                        <input type="button" value="     -    " 
                               onClick="setOp(this.form, '-')">
                    </td>
                </tr>

                <tr align=center>
                    <td>
                        <input type="button" value="    0    "
                               onClick="addChar(this.form.ans, '0')"> 
                    </td>
                    <td>
                        <input type="button" value="     .    "
                               onClick="addChar(this.form.ans, '.')"> 
                    </td>
                    <td>
                        <input type="button" value="   <--   "
                               onClick="deleteChar(this.form.ans)">
                    </td>
                    <td>
                        <input type="button" value="    +    "
                               onClick="setOp(this.form, '+')">
                    </td>
                </tr>

                <tr align=center>
                    <td colspan="2">
                        <input type="submit" value="         =          ">
                    </td>
                    <td colspan="2">
                        <input type="button" value="         C          "
                               onClick="this.form.ans.value = null;
                                    this.form.num.value=null;">
                    </td>
                </tr>
            </table>
        </form>
        <hr/>
        <p>Víctor M. Campuzano Pineda</p>
    </body>
</html>