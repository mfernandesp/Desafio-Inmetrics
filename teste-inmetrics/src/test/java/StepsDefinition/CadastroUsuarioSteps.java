package StepsDefinition;

import org.openqa.selenium.WebDriver;
import cucumber.api.CucumberOptions;
import cucumber.api.java.en.*;
import pageObjects.*;

public class CadastroUsuarioSteps extends BaseSteps{
	
	public static LoginPage loginPage = new LoginPage();
	public static CadastroPage cadastroPage = new CadastroPage();
				
	//When's
	
	@When("eu clico no botão Cadastre-se")
	public void acessarCadastroPage() {
		loginPage.clickCadastroUsuario();
	}
	
	@When("eu preencho os campos Usuario, Senha e Confirme a senha")
	public void preencherTodosCampos() {
		cadastroPage.preencherUsuario("");
		cadastroPage.preencherSenha("");
		cadastroPage.preencherConfirmarSenha("");
	}
	
	@When("eu clico no botão Cadastrar")
	public void clicarCadastrar() {
		cadastroPage.clickCadastrar();
	}	

	@When("eu preencho o campo Usuario com menos de 8 caracteres")
	public void preencherUsuarioMenor8() {
		cadastroPage.preencherUsuario("abc");
	}
	
	@When("eu preencho o campo Usuario com um usuário já cadastrado")
	public void preencherUsuarioJaCadastrado() {
		cadastroPage.preencherUsuario("");
	}
	
	@When("eu prencho os campos Senha e Confirme a senha")
	public void preencherSenha() {
		cadastroPage.preencherSenha("");
		cadastroPage.preencherConfirmarSenha("");
	}

	@When("eu não preencho nenhum dos campos do cadastro de usuário")
	public void naoPreencherCampos() {
		cadastroPage.limparUsuario();
		cadastroPage.limparSenha();
		cadastroPage.limparConfirmarSenha();
	}	
	
	//Then's
	
	@Then("o sistema deve redirecionar para a tela de login")
	public void checkLoginPage() {
		cadastroPage.checkPage("http://www.inmrobo.tk/accounts/login/");
	}
	
	@Then("o sistema deve retornar a mensagem {string}")
	public void checkMensagem(String message) {
		cadastroPage.checkMessage(message);
	}
	
	@Then("o sistema deve exibir uma \"!\" nos campos")
	public void checkCamposObrigatorios() {
		cadastroPage.checkUsuarioObrigatorio();
		cadastroPage.checkSenhaObrigatorio();
		cadastroPage.checkConfirmarObrigatorio();
	}
	
	@Then("o sistema deve exibir o texto {string} como tooltip no campo Usuario")
	public void checkToolTipeMensagemUsuario(String message) {
		cadastroPage.checkToolTipUsuario(message);
	}
	
	
	
	
	

}
