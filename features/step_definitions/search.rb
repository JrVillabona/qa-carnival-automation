# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'

Given('I click on the dropdown Sail to') do
  wait_for_element_to_display(:id, 'cdc-destinations', 10)
  click(:id, 'cdc-destinations')
  sleep 3
end

And('I select The Bahamas') do
  wait_for_element_to_display(:xpath, "//button[contains(.,'The Bahamas')]", 10)
  click(:xpath, "//button[contains(.,'The Bahamas')]")
end

When('I click on the dropdown Duration') do
  wait_for_element_to_display(:id, 'cdc-durations', 10)
  click(:id, 'cdc-durations')
  sleep 2
end

And('I select 6-9 days') do
  wait_for_element_to_display(:xpath, "//button[contains(.,'6 - 9 Days')]", 10)
  click(:xpath, "//button[contains(.,'6 - 9 Days')]")
  sleep 2
end

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
