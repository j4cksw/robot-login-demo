*** Settings ***
Library    Selenium2Library
Resource    ./keywords.robot
Suite setup    Set Selenium Speed    .1s

*** Test cases ***
ล็อกอินสำเร็จ
    เปิด Browser
    ใส่ username demo
    ใส่ password mode
    กดปุ่ม LOGIN
    ต้องเจอข้อความต้อนรับ
    ปิด Browser
