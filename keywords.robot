*** Settings ***
Library    Selenium2Library

*** Keywords ***
เปิด Browser
    Open Browser    http://localhost:7272    gc

ใส่ username ${username}
    Input Text    username_field    ${username}

ใส่ password ${password}
    Input Text    password_field    ${password}

กดปุ่ม LOGIN
    Click Element    login_button

ต้องเจอข้อความต้อนรับ
    Wait Until Page Contains    Welcome Page

ต้องเจอข้อความผิดพลาด
    Wait Until Page Contains    Error Page

ปิด Browser
    Close all browsers