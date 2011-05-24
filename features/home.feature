@javascript
Feature: Home

  Scenario: View Home Page/Blog/Contact
    Given I am on the home page
	Then "NOTE: All my photos are copyrighted." should be visible
	And "flickr gadget for google wave" should be hidden
	And "If you would like to contact me about anything at all, feel free to email me at" should be hidden
	When I follow "Blog"
	And I wait for "3" second
	Then "flickr gadget for google wave" should be visible
	Then show me the page
	And "If you would like to contact me about anything at all, feel free to email me at" should be hidden
	And "NOTE: All my photos are copyrighted." should be hidden
	When I follow "Contact"
	And I wait for "3" second
	Then "NOTE: All my photos are copyrighted." should be hidden
	And "flickr gadget for google wave" should be hidden
	And "If you would like to contact me about anything at all, feel free to email me at" should be visible
