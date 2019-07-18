Feature: Search

In order to can Search items
As an visitor to the page of Carnival
I want to search clothes through the searchbox

Scenario: See a grid with the results of search to The Bahamas with a duration between 6 and 9 days.

Given I click on the dropdown Sail to
And I select The Bahamas
When I click on the dropdown Duration
And I select 6-9 days
Then A grid is displayed with the results to "THE BAHAMAS"

Scenario: Each result must show the duration in days of cruises to The Bahamas with a duration between 6 and 9 days

Given I click on the dropdown Sail to
And I select The Bahamas
When I click on the dropdown Duration
And I select 6-9 days
Then Each result have the number of days of travel duration between "6" and "9" days

Scenario: The number of results must match the number of cards in the results grid

Given I click on the dropdown Sail to
And I select The Bahamas
When I click on the dropdown Duration
And I select 6-9 days
Then The number of cards in the results grid matches the number of search results