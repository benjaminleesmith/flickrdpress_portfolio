@javascript
Feature: Home

  Scenario: View Home Page/Blog/Contact
    Given I am on the home page
	Then "NOTE: All my photos are copyrighted." should be visible
	And "flickr gadget for google wave" should be invisible
	And "If you would like to contact me about anything at all, feel free to email me at" should be invisible
	When I follow "Blog"
	And I wait for the div with id "blog" to be visible
	And I wait for the div with id "contact" to be invisible
	And I wait for the div with id "home" to be invisible
	Then "flickr gadget for google wave" should be visible
	And "If you would like to contact me about anything at all, feel free to email me at" should be invisible
	And "NOTE: All my photos are copyrighted." should be invisible
	When I follow "Contact"
	And I wait for the div with id "contact" to be visible
	And I wait for the div with id "blog" to be invisible
	And I wait for the div with id "home" to be invisible
	Then "NOTE: All my photos are copyrighted." should be invisible
	And "flickr gadget for google wave" should be invisible
	And "If you would like to contact me about anything at all, feel free to email me at" should be visible
