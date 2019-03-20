Feature: View Categories
  As a blog administrator
  In order to categories my blogs into topics
  I want to be able to create/edit blog categories
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  When I follow "Categories"

Scenario: View Category Page
  Then I should see "Categories"
  And I should see "Keywords"
  And I should see "Description"

# For category creation
Scenario: To create a new category
  Given I am on the category page
  When I fill in "category_name" with "My Daily Blog"
  And I fill in "category_description" with "Daily Blog written here"
  And I press "Save"
  Then I should see "Category was successfully saved."
  Then I should see "My Daily Blog"
  Then I should see "Daily Blog written here"

# For category editing 
Scenario: To edit an existing categorise
  When I follow "General"
  Then I fill in "Description" with "Daily Blog written here edited"
  And I press "Save"
  Then I should see "Category was successfully saved."