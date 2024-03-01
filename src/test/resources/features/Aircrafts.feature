Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  ##Scenario: Create an aircraft
   ## Given FTB is up and running and the tests are configured
    ## When Specify new item data and call the API
    ## Then CHECK!
  ## Scenario: cenario
  ##When a = null

  Scenario: Get specific aircraft data WHERE number of seats is NULL by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1168
    Then aircraft data to be manufacturer='Boening' and model='HW-27' and number of seats is NULL

  Scenario: Create specific aircraft data WHERE number of seats is NULL
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='Tupolev' and model='TU-1' and number of seats is NULL
    Then returned aircraft data to be manufacturer='Tupolev' and model='TU-1' and number of seats is NULL
    ##Then aircraft data to be manufacturer='Tupolev' and model='TU-1' and number of seats is NULL