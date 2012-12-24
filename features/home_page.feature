Feature: Home page

    As a user
    When I visit the home page
    I should see the most recent bleats
    
    Scenario: Recent bleats
        Given 5 bleats exist
        And a new bleat with the content "howdy!"
        When I visit the home page
        Then the first bleat on the home page should contain "howdy!"
        
    Scenario: Trending hashtags
        Given a new bleat with the content "#winning"
        When I visit the home page
        Then "#winning" should be a trending hashtag
        