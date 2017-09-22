import { defineSupportCode } from 'cucumber';

import checkContainsAnyText from '../support/check/checkContainsAnyText';
import checkIsEmpty from '../support/check/checkIsEmpty';
import checkContainsText from '../support/check/checkContainsText';
import storeOutputText from '../support/check/storeOutputText';
import checkCookieContent from '../support/check/checkCookieContent';
import checkCookieExists from '../support/check/checkCookieExists';
import checkDimension from '../support/check/checkDimension';
import checkElementExists from '../support/check/checkElementExists';
import checkEqualsText from '../support/check/checkEqualsText';
import checkModal from '../support/check/checkModal';
import checkOffset from '../support/check/checkOffset';
import checkProperty from '../support/check/checkProperty';
import checkSelected from '../support/check/checkSelected';
import checkTitle from '../support/check/checkTitle';
import checkUrl from '../support/check/checkURL';
import closeAllButFirstTab from '../support/action/closeAllButFirstTab';
import compareText from '../support/check/compareText';
import isEnabled from '../support/check/isEnabled';
import isVisible from '../support/check/isVisible';
import openWebsite from '../support/action/openWebsite';
import resizeScreenSize from '../support/action/resizeScreenSize';


defineSupportCode(({ Given }) => {
    Given(
        /^I open the (url|site) "([^"]*)?"$/,
        function(type, page){
            console.log(' url ', global[page]);
            openWebsite(type,global[page]);
        }
        
    );

    Given(
        /^the element "([^"]*)?" is( not)* visible$/,
        function(element,falseCase){
            isVisible(global[element],falseCase);
        }
    );

    Given(
        /^the element "([^"]*)?" is( not)* enabled$/,
        function(element,falseCase){
            isEnabled(global[element],falseCase);
        }
        
    );

    Given(
        /^the element "([^"]*)?" is( not)* selected$/,
        function(element,falseCase){
            checkSelected(global[element],falseCase);
        }
        
    );

    Given(
        /^the checkbox "([^"]*)?" is( not)* checked$/,
        function(element,falseCase){
            checkSelected(global[element],falseCase);
        }
     
    );

    Given(
        /^there is (an|no) element "([^"]*)?" on the page$/,
        function(falseCase,element){
            checkElementExists(falseCase,global[element]);
        }
        
    );

    Given(
        /^the title is( not)* "([^"]*)?"$/,
        function(falseCase, expectedTitle){
            checkTitle(falseCase,global[expectedTitle]);
        }

    );

    Given(
        /^the element "([^"]*)?" contains( not)* the same text as element "([^"]*)?"$/,
        function(element1,falseCase,element2){
            compareText(global[element1],falseCase,global[element2]);
        }
    );

    Given(
        /^the element "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
        function(element,falseCase,expectedText){
            checkEqualsText(global[element],falseCase,global[expectedText]);
        }
    );

    Given(
        /^the element "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
        function(element,falseCase,expectedText){
            checkContainsText(global[element],falseCase,global[expectedText]);
        }
    );

    Given(
        /^the element "([^"]*)?"( not)* contains any text$/,
      function(element,falseCase){
            checkContainsAnyText(global[element],falseCase);
        }
    );

    Given(
        /^the element "([^"]*)?" is( not)* empty$/,
        function(element,falseCase){
            checkIsEmpty(global[element],falseCase);
        }
    );

    Given(
        /^the page url is( not)* "([^"]*)?"$/,
        function(falseCase,expectedURl){
            checkURL(falseCase,global[expectedURl]);
        }
    );

    Given(
        /^the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkProperty
    );

    Given(
        /^the cookie "([^"]*)?" contains( not)* the value "([^"]*)?"$/,
        checkCookieContent
    );

    Given(
        /^the cookie "([^"]*)?" does( not)* exist$/,
        checkCookieExists
    );

    Given(
        /^the element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
        checkDimension
    );

    Given(
        /^the element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
        checkOffset
    );

    Given(
        /^I have a screen that is ([\d]+) by ([\d]+) pixels$/,
        resizeScreenSize
    );

    Given(
        /^I have closed all but the first (window|tab)$/,
        closeAllButFirstTab
    );

    Given(
        /^a (alertbox|confirmbox|prompt) is( not)* opened$/,
        checkModal
    );
});
