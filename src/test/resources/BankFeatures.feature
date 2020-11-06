Feature: BankFeatures availiable
  #This will contain list of all availiable features in the bank and describing it

  Scenario: Creating a user
    Given no users exist
    When creating user with name "Marco"
    Then user with name "name" exist

  Scenario: Creating a user that already exist
    Given "Marco" already exist
    When creating user with name "Marco"
    Then exception needs to be thrown

  Scenario: Creating a user that does not exist
    Given "Marco" already exist
    When creating user with name "Jak"
    Then user with name "name" exist

  Scenario: Creating a user that has digits in name
    Given "Marco" already exist
    When creating user with name "Jak1234"
    Then exception needs to be thrown


  #Below are scenarios related to accounts
  Scenario: Creating account for a user
    Given "Sam" already exist
    When creating account for user "Sam"
    Then account must be created for "Sam"


  Scenario: Creating account for a user that has an account Already
    Given "Bob" already exist and has an account
    When creating account for user "Bob"
    Then exception needs to be thrown

    #Below are scenarios for payments


  Scenario: Making a payment to another account when you have money
    Given "Bob" already exist and has an account with money `100.0`
    Given "Sam" already exist and has an account with money `0.0`
    When "Bob" makes a payment of money `100.0` to "Sam" account
    Then `100.0` money needs to be subtracted from "Bob" account
    And `100.0` needs to be added to "Sam" account


  Scenario: You should not be able to make payment if you don't have money
    Given "Bob" already exist and has an account with money `100.0`
    Given "Sam" already exist and has an account with money `0.0`
    When "Sam" makes a payment of money `100.0` to "Bob" account
    Then exception needs to be thrown