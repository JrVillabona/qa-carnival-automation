# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'

When('I click on the dropdown Previous Searches') do
  wait_for_element_to_display(:id, 'cdc-savedSearches', 10)
  click(:id, 'cdc-savedSearches')
end

And('I select the previous search with The Bahamas and 6-9 days') do
  wait_for_element_to_display(:xpath, "//span[contains(.,'The Bahamas')]", 10)
  click(:xpath, "//span[contains(.,'The Bahamas')]")
end

Then('A grid is displayed with the results to {string}') do |place|
  wait_for_element_to_display(:xpath, "(//span[@class='cgc-cruise-glance__main-text'])", 10)
  checksearchresults(:xpath, place, "(//span[@class='cgc-cruise-glance__main-text'])")
end

Then('Each result have the number of days of travel duration between {string} and {string} days') do |min, max|
  wait_for_element_to_display(:xpath, "(//span[contains(@class,'cgc-cruise-glance__days')])", 10)
  checkdays(:xpath, min, max, "(//span[contains(@class,'cgc-cruise-glance__days')])")
end

Then('The number of cards in the results grid matches the number of search results') do
  wait_for_element_to_display(:xpath, "(//span[contains(@class,'cgc-cruise-glance__days')])", 10)
  checknumberesults(:xpath, "(//span[contains(@class,'cgc-cruise-glance__days')])", "//span[@class='sbsc-container__result-count']", true)
end

Then('The search results are organized from lowest to highest price') do
  wait_for_element_to_display(:xpath, "//span[@class='vrgf-price-box__price'][contains(.,'$')]", 10)
  checkorderesults(:xpath, "//span[@class='vrgf-price-box__price'][contains(.,'$')]", true)
end

When('I click on the dropdown Pricing') do
  wait_for_element_to_display(:id, 'sfn-nav-pricing', 20)
  click(:id, 'sfn-nav-pricing')
end

Then('The slidebar price range its shows') do
  wait_for_element_to_display(:class, 'ui-slider', 10)
  is_element_displayed(:class, 'ui-slider')
end

When('I click on the button Reset Filters') do
  wait_for_element_to_display(:xpath, "//a[contains(@class,'reset-selections')]", 10)
  click(:xpath, "//a[contains(@class,'reset-selections')]")
end

Then('The filters are clear') do
  wait_for_element_to_display(:id, 'cdc-destinations', 10)
  wait_for_element_to_display(:id, 'cdc-durations', 10)
  check_element_text(:id, 'SAIL TO', 'cdc-destinations', true)
  check_element_text(:id, 'DURATION', 'cdc-durations', true)
end
