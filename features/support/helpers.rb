# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'

module Helpers
  def checksearchresults(typeselector, keyword, selector)
    elements = $driver.find_elements(typeselector, selector)
    elements.map { |element| break false unless expect(element.text).to include(keyword) }
  end

  def checkdays(typeselector, minimum, maximum, selector)
    elements = $driver.find_elements(typeselector, selector)
    elements.map { |element| break false unless expect(element.text).to be_between(minimum, maximum).inclusive }
  end

  def checknumberesults(typeselector, selector, results, test_case)
    elements = $driver.find_elements(typeselector, selector)
    result = $driver.find_element(typeselector, results)
    if test_case
      expect(result.text).to include(elements.length.to_s)
    else
      expect(result.text).to_not include(elements.length.to_s)
    end
  end

  def checkorderesults(typeselector, selector, test_case)
    elements = $driver.find_elements(typeselector => selector)
    list = elements.map(&:text)
    list_asc = list.sort
    if test_case
      expect(list_asc).to eq(list)
    else
      expect(list_asc).to_not eq(list)
    end
  end

  def clickdropdownsail
    wait_for_element_to_display(:id, 'cdc-destinations', 10)
    click(:id, 'cdc-destinations')
  end

  def selectthebahamas
    sleep 2
    wait_for_element_to_display(:xpath, "//button[contains(@aria-label,'The Bahamas ')]", 20)
    click(:xpath, "//button[contains(@aria-label,'The Bahamas ')]")
  end

  def clickdropdownduration
    wait_for_element_to_display(:id, 'cdc-durations', 10)
    click(:id, 'cdc-durations')
    sleep 2
  end

  def selectduration
    wait_for_element_to_display(:xpath, "//button[contains(.,'6 - 9 Days')]", 10)
    click(:xpath, "//button[contains(.,'6 - 9 Days')]")
    sleep 2
  end
end
World(Helpers)
