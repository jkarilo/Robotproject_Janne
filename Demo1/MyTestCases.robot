*** Settings ***
Library    AppiumLibrary



*** Test Cases ***
MyFirstCase
    Log    Hello
    
FirstAppium
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.1.1.1    deviceName=Pixel_3_XL_API_25    app=C:\\Users\\flightApp.apk    appPackage=com.example.myapplication
      
Username_password_book_And_FlightBooking_FromToronto_ToParis
    #Open Application in Android Studio first and open also Appium Server
     Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.1.1.1    deviceName=Pixel_3_XL_API_25    app=C:\\Users\\flightApp.apk    appPackage=com.example.myapplication
     AppiumLibrary.Click Element    id=login
     Sleep    5
    # AppiumLibrary.Click Element    id=username
     #AppiumLibrary.Click Button    username
     AppiumLibrary.Input Text    id=username    support@ngendigital.com  
     AppiumLibrary.Input Password    id=password    abc123
     Hide Keyboard
     Sleep    10
     AppiumLibrary.Click Button    Sign In
     Sleep    10
     AppiumLibrary.Click Element    id=book
     sleep    5
     AppiumLibrary.Click Element    id=spinnerFrom
     sleep    5
     AppiumLibrary.Click Element    //*[@text='Toronto']
     sleep    5
     AppiumLibrary.Click Element    id=spinnerTo
     sleep    5
     AppiumLibrary.Click Element    //*[@text='Paris']
     sleep    5
     AppiumLibrary.Click Element    id=spinnerClass
     sleep    5
     AppiumLibrary.Click Element    //*[@text='Economy']
     sleep    5
     AppiumLibrary.Click Element    textStartDate
     sleep    10
     AppiumLibrary.Click Element    //android.view.View[@content-desc="03 August 2019"]
     sleep    10
     AppiumLibrary.Click Button     OK
     sleep    5
     AppiumLibrary.Click Element    textStartDate
     sleep    10
     AppiumLibrary.Click Element    //android.view.View[@content-desc="22 August 2019"]
     sleep    5
     AppiumLibrary.Click Button     OK
     sleep    5
     AppiumLibrary.Click Element    radioButtonFlight
     sleep    5
     AppiumLibrary.Click Element    book_flight
     sleep    5
     AppiumLibrary.Click Element    price5
     sleep    5
     AppiumLibrary.Click Element    confirm_order
     sleep    5
     AppiumLibrary.Page Should Contain Text        Your flight is booked. Reservation number is CADX2214
      
     
     
     


    