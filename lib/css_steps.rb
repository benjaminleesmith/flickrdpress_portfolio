# Then /^I should not see the blog$/ do
#   page.should have_xpath("//*[@style='display:none;']/*[contains(.,'flickr gadget for google wave')]")
# end
# 
# Then /^I should not see the contact page$/ do
#   page.should have_xpath("//*[@style='display:none;']/*[contains(.,'If you’d like to contact')]")
# end
# 
# Then /^(?:|I ) should not see the blog$/ do
#   # paths = [
#   #   "//*[@class='hidden']/*[contains(.,'#{text}')]",
#   #   "//*[@class='invisible']/*[contains(.,'#{text}')]",
#   #   "//*[@style='display: none;']/*[contains(.,'#{text}')]"
#   # ]
#   # xpath = paths.join '|'
#   page.should have_xpath("//*[div#blog@class='display:none']")
# end