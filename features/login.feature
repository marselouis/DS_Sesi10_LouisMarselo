Feature: Swag Labs - Login
Background: user on the login page
Given Louis is on the login page

  Scenario: As a standard_user, I want to log in successfully
    When Louis login with "standard_user" credential
    Then Louis should see home page

  Scenario: As a locked_out_user, I should get error message
    When Louis login with "locked_out_user" credential
    Then Louis should see error "Epic sadface: Sorry, this user has been locked out."

  Scenario: As a problem_user, I want to log in successfully
    When Louis login with "problem_user" credential
    Then Louis should see home page

  Scenario: As a performance_glitch_user, I want to log in successfully
    When Louis login with "performance_glitch_user" credential
    Then Louis should see home page

  Scenario: As a visual_user, I want to log in successfully
    When Louis login with "visual_user" credential
    Then Louis should see home page
  
  Scenario: As a error_user, I want to log in successfully
    When Louis login with "error_user" credential
    Then Louis should see home page