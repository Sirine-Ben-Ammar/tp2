<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@
    page contentType="text/html" pageEncoding="UTF-8"
%>
 <%
            //déclarations de variables
            String resultat = new String("");
            String mesException = new String("");
            boolean error = false;
            //On récupère les variables, si elles sont vides, on initialise à vide
            String chiffre_2 = "";
            String operande = "";
            String chiffre_1 = "";
            chiffre_1 = request.getParameter("chiffre_1");
            chiffre_2 = request.getParameter("chiffre_2");
            operande = request.getParameter("operande");
            if(chiffre_1 == null) {
                chiffre_1 = "0";
            }
             if(chiffre_2 == null) {
                chiffre_2 = "0";
            }
            if(operande == null) {
                operande = "plus";
            }
            /* 
            * On transforme les chaines chiffre_1 et _2 en Double. Si cela échoue cela devrait lever une exception.
            * Nous pourrions mettre une vérification sur le champ pour limiter la saisie, comme un blocage en JavaScript par la suite.
            */
            Double chiffre_a, chiffre_b;
            chiffre_a = 0.;
            chiffre_b = 0.;
            
            if (!chiffre_1.equals("")) {
                try {
                    chiffre_a = Double.valueOf(chiffre_1);
                } catch (Exception e){
                    error = true;
                    mesException = "chiffre_1 n'est pas un nombre !!!";
                }
            } else {
                chiffre_a = new Double(0);
            }
            
            if (!chiffre_2.equals("")) {
                try {
                    chiffre_b = Double.valueOf(chiffre_2);
                } catch (Exception e) {
                    error = true;
                    mesException = "chiffre_2 n'est pas un nombre !!!";
                }
            } else {
                chiffre_b = new Double(0);
            }
            
            //On exécute le calcul à travers un switch suivant l'opérande
            Double rezfin = new Double (0);
            int op; op = 1;
            // On définit une valeur pour chaque operande
            // vu que le switch n'accepte pas de String en operande en 1.6, ce sera pour la 1.7
            //
            if (operande != ""){
                if(operande.equals("plus")){
                    op = 1;
                } else if (operande.equals("moins")){
                    op = 2;
                } else if (operande.equals("divise")){
                    op = 3;
                } else if (operande.equals("multiplie")) {
                    op = 4;
                }
                switch (op) {
                    case 1: rezfin = chiffre_a + chiffre_b;
                            break;
                    case 2: rezfin = chiffre_a - chiffre_b;
                            break;
                    case 3: rezfin = chiffre_a / chiffre_b;
                            break;
                    case 4: rezfin = chiffre_a * chiffre_b;
                            break;
                }
            }
            //On traduit le résultat en une chaine pour afficher
            if(!error){
                resultat = resultat.valueOf(rezfin);
            } else {
                resultat = mesException;
            }
        %>

      

 </body> 
</html>