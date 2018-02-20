package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.NumberFactory;
import Model.Numero;

@WebServlet(urlPatterns="/jogar")
public class GuessServlet extends HttpServlet{
	
	Numero numero_obj = new NumberFactory().getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int numero = Integer.parseInt(req.getParameter("numero"));
		
		if(numero > numero_obj.getNumeroMaior() || numero < numero_obj.getNumeroMenor()) {
			req.setAttribute("message","Digite um numero entre "+numero_obj.getNumeroMenor()+" "+numero_obj.getNumeroMaior());
			numero_obj.incrementoTentativas();
			req.setAttribute("count", numero_obj.getCount());
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}else if(numero_obj.getNumeroAleatorio() -1 == numero || numero_obj.getNumeroAleatorio() +1 == numero ) {
			req.setAttribute("message","Você perdeu! Qualquer criança seria capaz de adivinhar que o número é "+numero_obj.getNumeroAleatorio()+".");
			numero_obj.incrementoTentativas();
			req.setAttribute("count", numero_obj.getCount());
			req.getRequestDispatcher("theend.jsp").forward(req, resp);
		}else if(numero_obj.thisNumero(numero)) {
			req.setAttribute("message", "Parabéns, você acertou");
			req.getRequestDispatcher("theend.jsp").forward(req, resp);
		}else {
			numero_obj.incrementoTentativas();
			req.setAttribute("message","Você errou o numero está entre "+numero_obj.getNumeroMenor()+" "+numero_obj.getNumeroMaior());
			req.setAttribute("count", numero_obj.getCount());
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}
	}
}
