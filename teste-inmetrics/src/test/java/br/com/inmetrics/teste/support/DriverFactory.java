package br.com.inmetrics.teste.support;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class DriverFactory {
	
	private static WebDriver driver;
	
	public static WebDriver getDriver(){
		//Caso seja o primeiro teste o drive será criado
		if(driver == null) {
			String userDir = System.getProperty("user.dir");
			System.setProperty("webdriver.chrome.driver", userDir + "\\src\\test\\java\\br\\com\\inmetrics\\teste\\support");
			createDriver();
		}
		return driver;
	}
		 
	//Criar o drive
	private static void createDriver() {
		driver = new ChromeDriver();
	}
	
	//Matar o serviço do Driver
	public static void killDriver() {
		if(driver != null) {
			driver.quit();
			driver = null;
		}
	}

}
