package stepDef;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class GoogleTest {
	public WebDriver driver;
	@Given("^Open Chrome browser$")
	public void open_Chrome_browser() throws Throwable {
	
		System.setProperty("webdriver.chrome.driver", "resources/chromedriver.exe");
		driver = new ChromeDriver();
	}

	@And("^Open Google application$")
	public void open_Google_application() throws Throwable {
	
		driver.get("https://www.google.com");
		System.out.println("Title of Page:" + driver.getTitle());
		System.out.println(driver.getCurrentUrl());
	}

}
