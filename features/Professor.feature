Feature: Professors
   In order to track professors
   As an admin
   I want to to be able to list, create, update, and delete professor information


Scenario: List Professors
  Given I am on the 'professors' page
  Then in the "body", I should see "Listing professors"
  And in the "th", I should see "First name"
  And in the "th", I should see "Last name"
  And in the "th", I should see "Email"
  And in the "th", I should see "Course"
  And in the "body", I should see a link to "New Professor"

Scenario: Create Professor
  Given I am on the 'new professor' page
  When I enter "Dan" for "First name"
  And I enter "Phelps" for "Last name"
  And I enter "dan@cmu.edu" for "Email"
  And I enter "70430" for "Course"
  And I click button "Create Professor"

Scenario: Update Professor
  Given I am on the 'professors' page
  When I follow "Edit" link for the "Dan"
  And I change Email "dan@cmu.edu" to "dan@qatar.cmu.edu"
  And I click button "Update"
  Then in the "div#flash_notice", I should see "Professor was successfully updated"

Scenario: Delete Professor
  Given I am on the 'professors' page
  When I follow "Destroy" link for the "Dan"
  Then I should not see "Dan"



