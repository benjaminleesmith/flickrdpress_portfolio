if defined? Cucumber 
  # http://groups.google.com/group/cukes/browse_thread/thread/e02f94b17b4409b/a1cabf12b82081a5?pli=1
  Then /^"([^\"]*)" should be invisible(?: within "([^\"]*)")?$/ do |text, selector|
    # TODO: escape text
    with_scope(selector) do
      if page.respond_to? :should
        page.should have_xpath("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or contains(@style,'display: none;') or ancestor::*[contains(@style,'display:none;') or contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      else
        assert have_xpath("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or contains(@style,'display: none;') or ancestor::*[contains(@style,'display:none;') or contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      end
    end
  end
  
  # http://groups.google.com/group/cukes/browse_thread/thread/e02f94b17b4409b/a1cabf12b82081a5?pli=1
  Then /^"([^\"]*)" should be visible(?: within "([^\"]*)")?$/ do |text, selector|
    # TODO: escape text
    with_scope(selector) do
      if page.respond_to? :should
        page.should have_no_xpath("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or contains(@style,'display: none;') or ancestor::*[contains(@style,'display:none;') or contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      else
        assert page.have_no_xpath?("//*[not(descendant-or-self::script)][contains(@style,'display:none;') or contains(@style,'display: none;') or ancestor::*[contains(@style,'display:none;') or contains(@style,'display: none;')]][contains(normalize-space(.),'#{text}')]")
      end
    end
  end
  
  When /^I wait for "([^"]*)" second?s$/ do |arg1|
    sleep(arg1.to_i)
  end
  
  # TODO: Check to see if selenium is loaded?
  When /^I wait for the div with id "([^"]*)" to be visible$/ do |arg1|
   wait_until { page.should have_xpath("//div[@id='#{arg1}' and not(contains(@style, 'display:none;' or contains(@style, 'display:none;')))]")}
  end
  
  When /^I wait for the div with id "([^"]*)" to be invisible$/ do |arg1|
   wait_until { page.should have_xpath("//div[@id='#{arg1}' and (contains(@style, 'display: none;') or contains(@style, 'display:none;'))]")}
  end
end