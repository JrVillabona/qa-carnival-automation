Feature: Search

In order to can Search items
As an visitor to the page of Carnival
I want to search clothes through the searchbox

@SearchcruisetotheBahamas
Scenario: See a grid with the results of search to The Bahamas with a duration between 6 and 9 days.
Then A grid is displayed with the results to "THE BAHAMAS"

@SearchcruisetotheBahamas
Scenario: Each result must show the duration in days of cruises to The Bahamas with a duration between 6 and 9 days
Then Each result have the number of days of travel duration between "6" and "9" days

@SearchcruisetotheBahamas
Scenario: The number of results must match the number of cards in the results grid
Then The number of cards in the results grid matches the number of search results

@SearchcruisetotheBahamas
Scenario: Slide bar to filter the results by price
Then The search results are organized from lowest to highest price

@SearchcruisetotheBahamas
Scenario: Pricing filters
When I click on the dropdown Pricing
Then The slidebar price range its shows

@SearchcruisetotheBahamas
Scenario: Reset filters
When I click on the button Reset Filters
Then The filters are clear