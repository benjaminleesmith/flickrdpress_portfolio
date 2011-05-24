Then /^"([^\"]+)" should be hidden$/ do |text|
  # TODO: doesn't work in text contains quotes
  # TODO: doesn't work unless text is from the beginning of an html element
  paths = [
    "//*[@class='hidden']/*[contains(.,'#{text}')]",
    "//*[@class='invisible']/*[contains(.,'#{text}')]",
    "//*[@style='display: none;']/*[contains(.,'#{text}')]",
    "//*[@style='display:none;']/*[contains(.,'#{text}')]"
  ]
  xpath = paths.join '|'
  page.should have_xpath(xpath)
end
