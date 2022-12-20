# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Withauth' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'testing all functions' do
    @driver.get('http://localhost:3000/')
    sleep 2
    @driver.find_element(:link_text, 'Войти').click
    sleep 2
    expect(@driver.find_element(:css, 'h1').text).to eq("Вход")
  end
end