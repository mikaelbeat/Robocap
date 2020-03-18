*** Settings ***
Library  JSONLibrary
Library  OperatingSystem
Library  Collections
Library  RequestsLibrary

*** Variables ***
${data_folder} =  Data/
${data_file}  Data.json
${base_url}  https://restcountries.eu/


*** Test Cases ***
JSON File training
  Verify fields in JSON file
  Verify fields in JSON response



*** Keywords ***
Verify fields in JSON file
  ${data}  Load JSON From File  ${data_folder}/${data_file}
  # Verify firstName
  ${firstName}  Get Value From Json  ${data}  $.firstName
  Should Be Equal  ${firstName[0]}  John
  Log  ${firstName}

  # Verify streetAddress
  ${streetAddress}  Get Value From Json  ${data}  $.address.streetAddress
  Should Be Equal  ${streetAddress[0]}  21 2nd Street
  Log  ${streetAddress}

  # Verify faxNumber
  ${faxNumber}  Get Value From Json  ${data}  $.phoneNumber[1].number
  Should Be Equal  ${faxNumber[0]}  646 555-4567
  Log  ${faxNumber}


Verify fields in JSON response
  Create Session  session  ${base_url}
  ${response}  Get Request  session  /rest/v2/alpha/FIN
  ${response_json}  To Json  ${response.content}

  ${response_json_prerry_print}  To Json  ${response.content}  pretty_print=True
  Log  ${response_json_prerry_print}

  # Verify country name
  ${country_name}  Get Value From Json  ${response_json}  $.name
  Log  ${country_name[0]}
  Should Be Equal  ${country_name[0]}  Finland

  # Verify border country
  ${border}  Get Value From Json  ${response_json}  $.borders[0]
  Log  ${border[0]}
  Should Be Equal  ${border[0]}  NOR

  # Multiple data validation in JSON array
   ${border}  Get Value From Json  ${response_json}  $.borders
   Log  ${border[0]}
   Should Contain Any  ${border[0]}  NOR  SWE  RUS
