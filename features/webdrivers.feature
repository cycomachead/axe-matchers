Feature: aXe cucumber steps can be run against multiple webdrivers

  Scenario Outline: Test whole page
    Given I am using <webdriver> to drive <browser>

    When I visit "http://abcdcomputech.dequecloud.com/"

    Then the page should not be accessible
    # And the page should be accessible within "#working"
    # And the page should not be accessible within "#broken"

    Examples:
      | webdriver | browser            |
      | capybara  | webkit             |
      | capybara  | poltergeist        |
      | capybara  | selenium_chrome    |
      | capybara  | selenium_firefox   |
      | capybara  | selenium_phantomjs |
      | capybara  | selenium_safari    |
      | selenium  | chrome             |
      | selenium  | firefox            |
      | selenium  | phantomjs          |
      | selenium  | safari             |
      | watir     | chrome             |
      | watir     | firefox            |
      | watir     | phantomjs          |
      | watir     | safari             |
