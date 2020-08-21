package pageObjects;

import org.openqa.selenium.*;
import static br.com.inmetrics.teste.support.DriverFactory.getDriver;

public class CadastroPage extends BasePage {
	
	//Mapeamento dos elementos da página	
	private WebElement buttonCadastrar =  getDriver().findElement(By.xpath(""));		
	private WebElement inputUsuario =  getDriver().findElement(By.xpath(""));	
	private WebElement inputSenha =  getDriver().findElement(By.xpath(""));
	private WebElement inputConfirmarSenha=  getDriver().findElement(By.xpath(""));

	
	//Ações realizados nos elementos: 
	
	//Input - setText
	public void	preencherUsuario(String usuario) {
		inputUsuario.sendKeys(usuario);
	}	
	public void	preencherSenha(String senha) {
		inputSenha.sendKeys(senha);
	}
	public void	preencherConfirmarSenha(String confirmarSenha) {
		inputSenha.sendKeys(confirmarSenha);
	}		
	
	//Input - Clear
	public void limparUsuario() {
		inputUsuario.clear();		
	}
	public void limparSenha() {
		inputSenha.clear();
	}
	public void limparConfirmarSenha() {
		inputConfirmarSenha.clear();
	}
	
	//Input - Comportamento 	
	//Verificar se a "!" é exibido quando o campo obrigatório não é informado
	public void checkUsuarioObrigatorio() {
		//não implementado
	}	
	//Verificar se a "!" é exibido quando o campo obrigatório não é informado
	public void checkSenhaObrigatorio() {
		//não implementado
	}
	//Verificar se a "!" é exibido quando o campo obrigatório não é informado	
	public void checkConfirmarObrigatorio() {
		//não implementado
	}
	
	//Verificar o tooltip exibido para o campo Usuario
	public void checkToolTipUsuario(String message) {
		super.checkToolTip(message, inputUsuario);
	}
	
	//Buttons
	public void clickCadastrar() {
		buttonCadastrar.click();
	}
}
