package StepsDefinition;

import org.testng.annotations.*;
import cucumber.api.CucumberOptions;
import cucumber.api.java.en.*;
import static br.com.inmetrics.teste.support.DriverFactory.getDriver;

public class BaseSteps {
		
	//Login Base Steps
	@Given("que eu acesse a pagina Login")
	public void acessarLoginPage() {
		getDriver().get("http://www.inmrobo.tk/accounts/login/");
	}

	@Then("o usuário deve conseguir fazer login no sistema")
	public void checkLoginSucesso() {
		System.out.println("Hello Mariane");
	}
	
	

}
