@api_test
Feature: Iterations Smoke Tests

  @smoke, @get
  Scenario: Iterations GET
    Given I have set a connection to pivotal_tracker API service
    When I send a GET request to IterationsGet endpoint for project 1654871
    Then I expect Status code 200 for the SmokeTest

  @smoke, @get
  Scenario: Iteration by Id GET
    Given I have set a connection to pivotal_tracker API service
    When I send a GET request to IterationIdGet endpoint for project 1654871 and iteration 1
    Then I expect Status code 200 for the SmokeTest

  @smoke, @get
  Scenario: Iteration Analytics by Id GET
    Given I have set a connection to pivotal_tracker API service
    When I send a GET request to IterationIdAnalyticsGet endpoint for project 1654871 and iteration 1
    Then I expect Status code 200 for the SmokeTest