Feature: Home

  Scenario: View Home Page/Intro text
    Given I am on the home page
	Then I should see "NOTE: All my photos are copyrighted."
	And "flickr gadget for google wave" should be hidden
	And "If you" should be hidden
