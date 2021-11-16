from webdriver_manager.chrome import ChromeDriverManager


def get_chromedriver():
    return ChromeDriverManager().install()