*** Setting ***
Library    Selenium2Library 
Suite Setup    Go to homepage
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE}	http://www.google.fi
${BROWSER}	chrome

*** Test Cases ***
Google integrify and find www.integrify.io
	Google and check results	integrify	https://www.integrify.io

*** Keywords ***
Google and check results
	[Arguments]	${searchkey}	${result}
	Input Text 	class=gLFyf.gsfi	${searchkey}
	sleep	1s
	Click Button 	class=gNO89b
	Wait until Page Contains	${result}

Go to homepage
	Open Browser	${HOMEPAGE}	${BROWSER}