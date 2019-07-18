# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'
require 'faker'

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
end
World(Helpers)
