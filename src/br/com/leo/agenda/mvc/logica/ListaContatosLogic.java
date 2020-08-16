package br.com.leo.agenda.mvc.logica;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.leo.agenda.dao.ContatoDAO;
import br.com.leo.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		Connection connection = (Connection) req.getAttribute("conexao");
		
		List<Contato> contatos = new ContatoDAO(connection).getLista();
		
		req.setAttribute("contatos", contatos);
		
		return "lista-contatos.jsp";
	}
	
	

}
