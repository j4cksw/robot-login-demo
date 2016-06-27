*** Test cases ***
เปิด Browser
    Open Browser    http://localhost:8080

ใส่ username ที่ถูกต้อง
    Input Text    username    demo

ใส่ password ที่ถูกต้อง
    Input Text    userpassword    mode

ต้องเจอข้อความต้อนรับ
    Wait Until Page Contain    Welcome!
