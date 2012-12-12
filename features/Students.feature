Feature: Students
   In order to track students
   As an admin
   I want to to be able to list, create, update, and delete student information


Scenario: List Students
  Given I am on the 'students' page
  Then in the "body", I should see "Listing students"
  And in the "th", I should see "Firstname"
  And in the "th", I should see "Lastname"
  And in the "th", I should see "Dateofbirth"
  And in the "th", I should see "Nationality"
  And in the "th", I should see "Email"
  And in the "th", I should see "Username"

  And in the "body", I should see a link to "New Student"

Scenario: Create Student
  Given I am on the 'new student' page
  When I enter "Umair" for "Firstname"
  And I enter "Ahmed" for "Lastname"
  And I select "Pakistan" for "Nationality"
  And I enter "una@cmu.edu" for "Email"
  And I enter "umair" for "Username"
  And I enter "asdf123" for "Password"
  And I enter "asdf123" for "Confirmation"
  And I click button "Create my account"

Scenario: Update Student  
  Given I am on the 'students' page
  When I follow the "Edit" link for "Umair"
  And I change the Email "una@cmu.edu" to "una@qatar.cmu.edu"
  And I click button "Update"
  Then in the "div#flash_notice", I should see "Student was successfully updated"

Scenario: Delete Student
  Given I am on the 'students' page
  When I follow the "Destroy" link for "Umair"
  Then I should not see "Ahmed,Umair"



