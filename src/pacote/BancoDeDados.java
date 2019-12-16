package pacote;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BancoDeDados {
	private Connection connection = null;
	private Statement statement = null;
	private ResultSet resultset = null;

	public void conectar() {
		String driver = "com.mysql.jdbc.Driver";

		try {
			Class.forName(driver);

			this.connection = DriverManager.getConnection("jdbc:mysql://localhost/CLINICA_ODONTOLOGICA", "root", "");
			this.statement = this.connection.createStatement();

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public boolean estaConectado() {

		if (this.connection != null) {

			return true;

		} else {

			return false;
		}
	}

	public void listarProcedimento() {
		try {

			String query = "SELECT * FROM PROCEDIMENTO ORDER BY NOME";
			this.resultset = this.statement.executeQuery(query);

			while (this.resultset.next()) {

				System.out.println("ID: " + this.resultset.getString("id") + " - Nome: "
						+ this.resultset.getString("nome") + " - Telefone: " + this.resultset.getString("telefone"));
			}
		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void inserirProcedimento(String nome, String descricao, String tempo) {
		try {
			String query = "INSERT INTO PROCEDIMENTO (NOME, DESCRICAO, TEMPO) VALUES ('" + nome + "', '" + descricao
					+ "', '" + tempo + "');";
			// System.out.println(query);
			this.statement.executeUpdate(query);

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void editarProcedimento(String id, String nome, String descricao, String tempo) {
		try {

			String query = "UPDATE PROCEDIMENTO SET NOME = '" + nome + "', DESCRICAO = '" + descricao + "', TEMPO = '"
					+ tempo + "' WHERE id = " + id + ";";
			// System.out.println(query);
			this.statement.executeUpdate(query);

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void apagarProcedimento(String id) {
		try {
			String query = "DELETE FROM PROCEDIMENTO WHERE ID = " + id + ";";
			// System.out.println(query);

			this.statement.executeUpdate(query);

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void inserirPaciente(String nome, String cpf, String estado_civil, String cep, String logradouro, String numero, String complemento, String bairro, String cidade, String estado, String data_nascimento, String email, String telefone, String celular) {
		try {
			String query = "INSERT INTO PACIENTE (NOME, CPF, ESTADO_CIVIL, CEP, LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, DATA_NASCIMENTO, EMAIL, TELEFONE, CELULAR) VALUES ('" + nome + "', '" + cpf + "', '" + estado_civil + "', '" + cep + "', '" + logradouro + "', '" + numero + "', '" + complemento + "', '" + bairro + "', '" + cidade + "', '" + estado + "', '" + data_nascimento + "', '" + email + "', '" + telefone + "','" + celular + "');";
			// System.out.println(query);
			this.statement.executeUpdate(query);
			
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}


	public void editarPaciente(String id, String nome, String cpf, String estado_civil, String cep, String logradouro,
			String numero, String complemento, String bairro, String cidade, String estado, String data_nascimento,
			String email, String telefone, String celular) {
		try {
			String query = "UPDATE PACIENTE SET NOME = '" + nome + "', CPF = '" + cpf + "', ESTADO_CIVIL = '"
					+ estado_civil + "', CEP = '" + cep + "', LOGRADOURO = '" + logradouro + "', NUMERO = '" + numero
					+ "', COMPLEMENTO = '" + complemento + "', BAIRRO = '" + bairro + "', CIDADE = '" + cidade
					+ "', ESTADO = '" + estado + "', DATA_NASCIMENTO = '" + data_nascimento + "', EMAIL = '" + email
					+ "', TELEFONE = '" + telefone + "', CELULAR = '" + celular + "' WHERE ID = " + id + ";";
			// System.out.println(query);
			this.statement.executeUpdate(query);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void listarPaciente() {
		try {

			String query = "SELECT * FROM PACIENTE ORDER BY NOME";
			this.resultset = this.statement.executeQuery(query);

			while (this.resultset.next()) {

				System.out.println("ID: " + this.resultset.getString("id") + " - Nome: "
						+ this.resultset.getString("nome") + " - Telefone: " + this.resultset.getString("telefone"));
			}
		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public void apagarPaciente(String id) {
		try {
			String query = "DELETE FROM PROCEDIMENTO WHERE ID = " + id + ";";
			// System.out.println(query);

			this.statement.executeUpdate(query);

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void inserirUsuario(String nome, String login, String senha, String cpf, String telefone,
			String data_nascimento, String cep, String logradouro, String numero, String complemento, String bairro,
			String cidade, String estado, String email) {
		try {
			String query = "INSERT INTO USUARIO (NOME, LOGIN, SENHA, CPF, TELEFONE, DATA_NASCIMENTO, CEP, LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO,  CIDADE,  ESTADO,  EMAIL) VALUES ('"
					+ nome + "', '" + login + "','" + senha + "', '" + cpf + "', '" + telefone + "','" + data_nascimento
					+ "','" + cep + "', '" + logradouro + "', '" + numero + "', '" + complemento + "', '" + bairro
					+ "', '" + cidade + "', '" + estado + "', '" + email + "');";
			// System.out.println(query);
			this.statement.executeUpdate(query);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void editarUsuario(String id, String nome, String login, String senha, String cpf, String telefone,
			String data_nascimento, String cep, String logradouro, String numero, String complemento, String bairro,
			String cidade, String estado, String email) {
		try {
			String query = "UPDATE PACIENTE SET NOME = '" + nome + "', LOGIN = '" + login + "', SENHA = '" + senha
					+ "', CPF = '" + cpf + "', TELEFONE = '" + telefone + "', DATA_NASCIMENTO = '" + data_nascimento
					+ "',CEP = '" + cep + "', LOGRADOURO = '" + logradouro + "', NUMERO = '" + numero
					+ "', COMPLEMENTO = '" + complemento + "', BAIRRO = '" + bairro + "', CIDADE = '" + cidade
					+ "', ESTADO = '" + estado + "', EMAIL = '" + email + "' WHERE ID = " + id + ";";
			// System.out.println(query);
			this.statement.executeUpdate(query);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

	public void desconectar() {
		try {

			this.connection.close();

		} catch (Exception e) {

			System.out.println("Erro: " + e.getMessage());
		}
	}
}