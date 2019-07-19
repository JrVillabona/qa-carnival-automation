Feature: Search

Feature: Learn more about the trip

In order to can learn more about the a trip
As an visitor to the page of Carnival
I want to see the detail of a trip

@SearchcruisetotheBahamas
Scenario: Enter the details of a trip by clicking on the title of the trip card
When I click on the tittle of the trip card
Then I can see the detail of this trip

@SearchcruisetotheBahamas
Scenario: Enter the details of a trip by clicking on the button Learn More
When I click on the button Learn More
Then I can see the detail of this trip

@SearchcruisetotheBahamas
Scenario: Enter to the details of a trip by clicking on the route map of the trip
When I click on the route map
Then I can see the detail of this trip

@SearchcruisetotheBahamas
Scenario: The "BOOK NOW" button in the header of the website must be available in the detail of a trip
When I click on the button Learn More
Then I can see the button book now in the header

@SearchcruisetotheBahamas
Scenario: The "BOOK NOW" button in the footer of the website must be available in the detail of a trip
When I click on the button Learn More
Then I can see the button book now in the footer

@SearchcruisetotheBahamas
Scenario: The "BOOK NOW" button in the header of the website should redirect to the page to make the booking
When I click on the button Learn More
And I Click on the button Book Now in the header
Then I am in the page to make the booking