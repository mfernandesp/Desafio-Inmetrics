package br.com.inmetrics.teste.runner;

import org.junit.runner.RunWith;
 
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
 
@RunWith( Cucumber.class )
@CucumberOptions(
		features = "src/test/resources",
        glue = "com.testing"
)
public class RunCucumberTest{
}