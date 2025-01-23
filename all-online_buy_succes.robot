*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${COOKIE_BUTTON}    //*[@id="btn-accept-gdpr"]

${USERNAME}    mockuser@example.com
${PASSWORD}    MockPassword123
${URL}    https://www.allonline.7eleven.co.th/
${LOGIN_ELEMENT}    //*[@id="page"]/header/div[4]/div/div/div/ul/li[4]/a
${LOGIN_BUTTON}    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[6]/a[1]
${EMAIL_INPUT_ELEMENT}    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[4]/input
${PASSWORD_INPUT_ELEMENT}    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[5]/input
${SEACH_BOX_ELEMENT}    //*[@id="search_id_form"]/div/div[1]
${PRODUCT_INPUT_AMOUNT_XPATH}    //*[@id="article-form"]/div[2]/div[2]/div[1]/input

${SEARCH_PRODUCT_NAME}    ยำยำช้างน้อย รสบาร์บีคิว 120 กรัม
${SEARCH_PRODUCT_NAME_EXPECTED}    ยำยำช้างน้อย รสบาร์บีคิว 120 กรัม (20 กรัม X 6 ซอง)

${PRODUCT_ITEM}    //*[@id="page"]/div[2]/div[2]/div/div/div[2]/div/div/div/div/div/div[3]/div[1]/div/a[1]
${PRODUCT_PRICE_ELEMENT}    //*[@id="article-form"]/div[2]/span/div/div[1]/span
${PRODUCT_PRICE}    ฿ 32
${PRODUCT_TITLE_ID}    title-product
${PRODUCT_ID_LOCATOR}    //*[@id="article-form"]/div[1]/div[1]/div/span/span
${PRODUCT_ID}    465149010

${BUY_BUTTON}    //*[@id="article-form"]/div[2]/div[2]/div[4]/div[2]/button
${DELIVERY_BY_ADDRESS_ELEMENT}    //*[@id="address-tabs"]/ul/li[2]
${DELIVERY_PRODUCT_NAME_ELEMENT}    //*[@id="stepModel"]/div[1]/div[1]/div[2]/div[1]/div/div[2]/span[2]
${DELIVERY_ADDRESS_CONFIRM_CLOSE_BTN}    //*[@id="gcp-map"]/div/div[1]/button
${CONFIRM_PAY_SECTION}    //*[@id="stepModel"]/div[1]/div[2]/footer/div/div
${CONFIRM_PAY_BUTTON}    //*[@id="continue-payment-btn"]
${PAY_BY_CREDIT_BUTTON}    //*[@id="payment-options"]/div[1]/button
${ORDER_BUTTON}    //*[@id="stepModel"]/div[1]/div[2]/footer/div/div/button

${ADDRESS_CUSTOMER_FIRST_NAME_ID}    new-address-name
${ADDRESS_CUSTOMER_LAST_NAME_ID}    new-address-lastname
${ADDRESS_CUNTOMER_PHONE_ID}    new-address-mobile
${ADDRESS_CUSTOMER_ADDRESSNUMBER_ID}    new-address-addrno
${ADDRESS_CUSTOMER_MOO_ID}    new-address-moo
${ADDRESS_PROVINCE_TITLE_ID}    new-address-province
${ADDRESS_DISTRICT_TITLE_ID}    new-address-district
${ADDRESS_SUB_DISTRICT_TITLE_ID}    new-address-sub-district


${CUSTOMER_FIRST_NAME}    พันกร
${CUSTOMER_LAST_NAME}    ชมจันทร์
${CUSTOMER_PHONE}    0619917765
${CUSTOMER_ADDRESS_NO}    45/9
${CUSTOMER_ADDRESS_MOO}    7
${CUSTOMER_ADDRESS_PROVINCE}    สมุทรปราการ
${CUSTOMER_ADDRESS_DISTRICT}    บางพลี
${CUSTOMER_ADDRESS_SUB_DISTRICT}    บางปลา
${CUSTOMER_ADDRESS_ZIPCODE}    10540

${LAST_CHECK_PRODUCT_NAME_XPATH}    //*[@id="stepModel"]/div[1]/div[2]/div[2]/table/tbody[1]/tr[3]/td[2]
${LAST_CHECK_PRODUCT_QUANTITY_XPATH}    //*[@id="stepModel"]/div[1]/div[2]/div[2]/table/tbody[1]/tr[3]/td[3]
${LAST_CHECK_PRODUCT_PRICE_XPATH}    //*[@id="stepModel"]/div[1]/div[2]/div[2]/table/tbody[1]/tr[3]/td[4]
${LAST_CHECK_PRODUCT_PRICE_SUB_TOTAL_XPATH}    //*[@id="js-invoice-details-tbody"]/tr[1]/td[2]/b
${LAST_CHECK_PRODUCT_PRICE_DELIVERY_XPATH}    //*[@id="js-invoice-details-tbody"]/tr[2]/td[2]/b
${LAST_CHECK_PRODUCT_TOTAL_PRICE_XPATH}    //*[@id="totalAmount"]

${LAST_CHECK_PRODUCT_QUANTITY}    5
${LAST_CHECK_PRODUCT_PRICE}    ฿ 160
${LAST_CHECK_PRODUCT_PRICE_SUB_TOTAL}    ฿ 160
${LAST_CHECK_PRODUCT_PRICE_DELIVERY}    ฿ 35
${LAST_CHECK_PRODUCT_TOTAL_PRICE}    ฿ 195




# For skip All member registration
${CLOSE_BUTTON}    //*[@id="__next"]/div/div/div[1]/div[2]/div/div/i/img
${CONFIRM_BUTTON}    //*[@id="{config.site_name}"]/div[4]/div/div/div[3]/div/button[1]



*** Test Cases ***
ตรวจสอบการสั่งซื้อสินค้าและจัดส่งตามที่อยู่สำเร็จ
    เปิดเว็บเบราว์เซอร์
    ลงชื่อเข้าใช้
    ค้นหาสินค้า
    ตรวจสอบผลการค้าหาสินค้า
    เลือกสินค้า
    ตรวจสอบข้อมูลสินค้า
    ใส่จำนวนสินค้า
    ซื้อสินค้า
    เลือกวิธีการจัดส่งตามที่อยู่
    กรอกข้อมูลที่อยู่จัดส่ง
    ยืนยันการชำระเงิน
    ตรวจสอบรายละเอียดสินค้าก่อนการชำระ
    เลือกวิธีการชำระเงินด้วยบัตรเครดิต
####################################################
#ถ้าต้องการไปหน้ากรอกข้อมูลบัตรเครดิตให้ยกเลิกการ comment บรรทัดถัดไป
####################################################
#    สั่งซื้อสินค้า

*** Keywords ***
เปิดเว็บเบราว์เซอร์
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${COOKIE_BUTTON}
    Click Button    ${COOKIE_BUTTON}
    Click Element    ${LOGIN_ELEMENT}

ลงชื่อเข้าใช้
    Input Text    ${EMAIL_INPUT_ELEMENT}    ${USERNAME}
    Input Text    ${PASSWORD_INPUT_ELEMENT}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    # Remove Later
    Wait Until Element Is Visible    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div[1]/h1

    Click Element    ${CLOSE_BUTTON}
    Wait Until Element Is Visible    ${CONFIRM_BUTTON}
    Click Button    ${CONFIRM_BUTTON}

ค้นหาสินค้า
    Wait Until Element Is Visible    ${SEACH_BOX_ELEMENT}
    Input Text    name:q    ${SEARCH_PRODUCT_NAME}
    Press Keys    None    ENTER

ตรวจสอบผลการค้าหาสินค้า
    Wait Until Page Contains    ${SEARCH_PRODUCT_NAME_EXPECTED}

เลือกสินค้า
    Click Element    ${PRODUCT_ITEM}

ตรวจสอบข้อมูลสินค้า
    Element Should Contain    ${PRODUCT_PRICE_ELEMENT}    ${PRODUCT_PRICE}
    Element Should Contain    ${PRODUCT_ID_LOCATOR}    ${PRODUCT_ID}

ใส่จำนวนสินค้า
    Input Text    ${PRODUCT_INPUT_AMOUNT_XPATH}    5

ซื้อสินค้า
    Click Button    ${BUY_BUTTON}

เลือกวิธีการจัดส่งตามที่อยู่
    Click Element    ${DELIVERY_BY_ADDRESS_ELEMENT}
    Element Should Contain    ${DELIVERY_PRODUCT_NAME_ELEMENT}    ${SEARCH_PRODUCT_NAME_EXPECTED}

กรอกข้อมูลที่อยู่จัดส่ง
    Input Text    ${ADDRESS_CUSTOMER_FIRST_NAME_ID}    ${CUSTOMER_FIRST_NAME}
    Input Text    ${ADDRESS_CUSTOMER_LAST_NAME_ID}    ${CUSTOMER_LAST_NAME}
    Input Text    ${ADDRESS_CUNTOMER_PHONE_ID}    ${CUSTOMER_PHONE}
    Input Text    ${ADDRESS_CUSTOMER_ADDRESSNUMBER_ID}    ${CUSTOMER_ADDRESS_NO}
    Input Text    ${ADDRESS_CUSTOMER_MOO_ID}    ${CUSTOMER_ADDRESS_MOO}
    Select From List By Value    ${ADDRESS_PROVINCE_TITLE_ID}    ${CUSTOMER_ADDRESS_PROVINCE}
    Select From List By Value    ${ADDRESS_DISTRICT_TITLE_ID}    ${CUSTOMER_ADDRESS_DISTRICT}
    Select From List By Value    ${ADDRESS_SUB_DISTRICT_TITLE_ID}    ${CUSTOMER_ADDRESS_SUB_DISTRICT}
    Wait Until Element Is Visible    ${DELIVERY_ADDRESS_CONFIRM_CLOSE_BTN}
    Click Button    ${DELIVERY_ADDRESS_CONFIRM_CLOSE_BTN}
    Wait Until Element Is Visible    ${ADDRESS_PROVINCE_TITLE_ID}

ยืนยันการชำระเงิน
    เลื่อนไปยังด้านล่างสุดของหน้า
    Wait Until Element Is Visible    ${CONFIRM_PAY_BUTTON}
    Click Button    ${CONFIRM_PAY_BUTTON}

ตรวจสอบรายละเอียดสินค้าก่อนการชำระ
    Element Should Contain    ${LAST_CHECK_PRODUCT_NAME_XPATH}    ${SEARCH_PRODUCT_NAME_EXPECTED}
    Element Should Contain    ${LAST_CHECK_PRODUCT_QUANTITY_XPATH}    ${LAST_CHECK_PRODUCT_QUANTITY}
    Element Should Contain    ${LAST_CHECK_PRODUCT_PRICE_XPATH}    ${LAST_CHECK_PRODUCT_PRICE}
    Element Should Contain    ${LAST_CHECK_PRODUCT_PRICE_SUB_TOTAL_XPATH}    ${LAST_CHECK_PRODUCT_PRICE_SUB_TOTAL}
    Element Should Contain    ${LAST_CHECK_PRODUCT_PRICE_DELIVERY_XPATH}    ${LAST_CHECK_PRODUCT_PRICE_DELIVERY}
    Element Should Contain    ${LAST_CHECK_PRODUCT_TOTAL_PRICE_XPATH}    ${LAST_CHECK_PRODUCT_TOTAL_PRICE}

เลือกวิธีการชำระเงินด้วยบัตรเครดิต
    Click Button    ${PAY_BY_CREDIT_BUTTON}
    Sleep    1000

สั่งซื้อสินค้า
    Click Button    ${ORDER_BUTTON}


เลื่อนไปยังด้านล่างสุดของหน้า
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

