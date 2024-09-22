*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${site}  eBay
&{url}  eBay=http://www.ebay.com  n11=http://www.n11.com  t_yol=http://www.trendyol.com

${brwsr}  chrome
&{browser}  chrome=chrome  firefox=firefox  ie=ie


*** Keywords ***
Start Page of eBay
    Open Browser    ${url.${site}}   ${browser.${brwsr}}
    Maximize Browser Window

Finish Test
    Close Browser