

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.IOException;


@WebServlet("/CharacterCounterServlet")
public class CharacterCounterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String inputString = request.getParameter("inputString");
        

        int alphabetCount = 0;
        int digitCount = 0;
        int specialCount = 0;
        

        for (int i = 0; i < inputString.length(); i++) {
            char ch = inputString.charAt(i);
            if (Character.isLetter(ch)) {
                alphabetCount++;
            } else if (Character.isDigit(ch)) {
                digitCount++;
            } else if(ch !=' '){
                specialCount++;
            }
        }
        

        request.setAttribute("alphabetCount", alphabetCount);
        request.setAttribute("digitCount", digitCount);
        request.setAttribute("specialCount", specialCount);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
