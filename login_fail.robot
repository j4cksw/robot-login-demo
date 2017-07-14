*** Settings ***
Resource    ./keywords.robot
Test Template    Login ไม่สำเร็จ
Suite setup    Set Selenium Speed    .1s

*** Test cases ***    Login ไม่สำเร็จด้วยชุดข้อมูลต่อไปนี้
ไม่ใส่ทั้ง username และ password    ${EMPTY}    ${EMPTY}
ใส่ผิดทั้ง username และ password    demoooo    qwerty
ใส่ username ไม่ใส่ password       demoooo    ${EMPTY}
ไม่ใส่ username ใส่ password       ${EMPTY}    mode

*** Keywords ***
Login ไม่สำเร็จ
    [Arguments]    ${username}    ${password}
    เปิด Browser
    ใส่ username ${username}
    ใส่ password ${password}
    กดปุ่ม LOGIN
    ต้องเจอข้อความผิดพลาด
    ปิด Browser