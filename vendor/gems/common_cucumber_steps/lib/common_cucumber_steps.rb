if defined? Cucumber 
  # Then /^"([^\"]+)" should be hidden$/ do |text|
  #   # TODO: doesn't work in text contains quotes
  #   # TODO: doesn't work unless text is from the beginning of an html element
  #   paths = [
  #     "//*[@class='hidden']/*[contains(.,'#{text}')]",
  #     "//*[@class='invisible']/*[contains(.,'#{text}')]",
  #     "//*[@style='display: none;']/*[contains(.,'#{text}')]",
  #     "//*[@style='display:none;']/*[contains(.,'#{text}')]"
  #   ]
  #   xpath = paths.join '|'
  #   page.should have_xpath(xpath)
  # end
  
  # http://groups.google.com/group/cukes/browse_thread/thread/e02f94b17b4409b/a1cabf12b82081a5?pli=1
  # Then /^(?:|I )should see "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
  #   with_scope(selector) do
  #     if page.respond_to? :should
  #       page.should have_xpath("//*[not(descendant-or-self::script) and not(contains(@style,'display: none;') and ancestor::*[not(contains(@style,'display: none;'))])][contains(normalize-space(.),#{Capybara::XPath.escape(text)})]")
  #     else
  #       assert page.has_xpath?("//*[not(descendant-or-self::script) and not(contains(@style,'display: none;') and ancestor::*[not(contains(@style,'display: none;'))])][contains(normalize-space(.),#{Capybara::XPath.escape(text)})]")
  #     end
  #   end
  # end

  # http://groups.google.com/group/cukes/browse_thread/thread/e02f94b17b4409b/a1cabf12b82081a5?pli=1
  Then /^"([^\"]*)" should be hidden(?: within "([^\"]*)")?$/ do |text, selector|
    # TODO: escape text
    with_scope(selector) do
      if page.respond_to? :should
        page.should have_xpath("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or ancestor::*[contains(@style,'display:none;')] and contains(@style,'display: none;') and ancestor::*[contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      else
        assert page.have_xpath?("//*[not(descendant-or-self::script)][contains(@style,'display:none;') and ancestor::*[contains(@style,'display:none;')] and contains(@style,'display: none;') and ancestor::*[contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      end
    end
  end
  
  # http://groups.google.com/group/cukes/browse_thread/thread/e02f94b17b4409b/a1cabf12b82081a5?pli=1
  Then /^"([^\"]*)" should be visible(?: within "([^\"]*)")?$/ do |text, selector|
    # TODO: escape text
    with_scope(selector) do
      if page.respond_to? :should
        page.should have_no_xpath("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or ancestor::*[contains(@style,'display:none;')] and contains(@style,'display: none;') and ancestor::*[contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      else
        assert page.have_no_xpath?("//*[not(descendant-or-self::script)][contains(@style,'display:none;') and ancestor::*[contains(@style,'display:none;')] and contains(@style,'display: none;') and ancestor::*[contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      end
    end
  end
  
  When /^I wait for "([^"]*)" second$/ do |arg1|
    sleep(arg1.to_i)
  end
end