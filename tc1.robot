***Settings***
Library    AppiumLibrary

***Test Cases***
User should be able to launch flipkart application
    Launch the flipkart application
    User verifies page content
    User searches for item
    User Searches for mobile 
    User adds item  to the cart
    Verify if mobile is added to cart

***Variables***
${flipkart_server}=  http://localhost:4723/wd/hub
${name_devide}=  emulator-5554
${version_device}=  9.0
${app_location}=  ${CURDIR}\\Flipkart-7.18.apk
${proj_name}=  Android
${engicon}=  xpath= //android.widget.TextView[@text="English"]
${continue}=  xpath= //android.widget.Button[@text="CONTINUE"]
${back_home}=  xpath= //*[@resource-id="com.flipkart.android:id/custom_back_icon"]
${menu}=  xpath= //android.widget.ImageButton[@content-desc="Drawer"]
${all_category}=  xpath= //android.widget.TextView[@text="All Categories"]
${search}=  id= com.flipkart.android:id/search_icon
${mobiles}=  id= com.flipkart.android:id/search_autoCompleteTextView
${click_mobile}=  id= com.flipkart.android:id/txt_subtitle
${not_now}=  xpath= //*[@resource-id="com.flipkart.android:id/not_now_button"]
${realme}=  xpath=  //android.widget.TextView[@text="realme 8i ()"]
${addToCart}=  xpath= //android.widget.TextView[@text="ADD TO CART"]
${goToCart}=  xpath=  //android.widget.TextView[@text="GO TO CART"]
${Verify}=  realme



***Keywords***
Launch the flipkart application
    Open Application    ${flipkart_server}    platformName=${proj_name}    platformVersion=${version_device}    deviceName=${name_devide}    app=${app_location}

User verifies page content
    Wait Until Page Contains Element     ${engicon}    timeout=200s
    Click Element    ${engicon}
    Click Element    ${continue}
    Wait Until Page Contains Element     ${back_home}    timeout=200s
    Click ELement    ${back_home} 
    Wait Until Page Contains Element     ${menu}    timeout=200s
    Click ELement    ${menu}
User searches for item
    Wait Until Page Contains Element    ${all_category}    timeout=200s
    Click Element    ${all_category}
    Wait Until Page Contains Element    ${search}    timeout=200s
    Click Element    ${search}
    Wait Until Page Contains    mobiles    timeout=200s
    Input Text    ${mobiles}    Mobiles
    Wait Until Page Contains    Mobiles    timeout=200s
    Click Element    ${click_mobile}
    Wait Until Page Contains    NOT NOW    timeout=200s
User Searches for mobile
    Click Element    ${not_now}
    Swipe By Percent    50   80   50    10
    Swipe By Percent    50   80   50    10
    Swipe By Percent    50   80   50    10
    Wait Until Page Contains    realme     timeout=100s
    Click Element    ${realme}
User adds item  to the cart
    Wait Until Page Contains    ADD TO CART    timeout=100s
    Click Element    ${addToCart}
    Wait Until Page Contains    GO TO CART    timeout=100s
    Click Element    ${goToCart}
Verify if mobile is added to cart
    [Arguments]    ${Verify}
    Wait Until Page Contains    realme    timeout=100s
    Log to console   Infinix Hot 10 play is added to cart
