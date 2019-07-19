# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'

When('I click on the tittle of the trip card') do
    wait_for_element_to_display(:xpath, "(//span[contains(@class,'main-text')])[3]", 10)
    scroll_to_element(:xpath, "(//span[contains(@class,'main-text')])[3]")
    click(:xpath, "(//span[contains(@class,'main-text')])[3]")
end

Then('I can see the detail of this trip') do
    wait_for_element_to_display(:id, 'details', 10)
    is_element_displayed(:id, 'section-itinerary')
    is_element_displayed(:id, 'social-sharing-component')
    is_element_displayed(:class, 'daily-tiles')
end

When('I click on the button Learn More') do
    wait_for_element_to_display(:class, "vrgf-learn-more", 10)
    click(:class, "vrgf-learn-more")
end

When('I click on the route map') do
    wait_for_element_to_display(:xpath, "(//div[@class='clickable'])[1]", 10)
    click(:xpath, "(//div[@class='clickable'])[1]")
end

Then('I can see the button book now in the header') do
    wait_for_element_to_display(:id, 'sm-booking-btn', 10)
    is_element_displayed(:id, 'sm-booking-btn')
end

Then('I can see the button book now in the footer') do
    wait_for_element_to_display(:xpath, "//a[contains(@aria-label,'Book Now')]", 10)
    is_element_displayed(:xpath, "//a[contains(@aria-label,'Book Now')]")
end

And('I Click on the button Book Now in the header') do
    wait_for_element_to_display(:id, 'sm-booking-btn', 10)
    click(:id, 'sm-booking-btn')
end

Then('I am in the page to make the booking') do
    wait_for_element_to_display(:id, 'ccl-mainContainer', 10)
    is_element_displayed(:id, 'ccl-mainContainer')
end