import { defineSupportCode } from 'cucumber';

import checkClass from '../support/check/checkClass';
import checkContainsAnyText from '../support/check/checkContainsAnyText';
import checkIsEmpty from '../support/check/checkIsEmpty';
import checkContainsText from '../support/check/checkContainsText';
import storeOutputText from '../support/check/storeOutputText';
import checkCookieContent from '../support/check/checkCookieContent';
import checkCookieExists from '../support/check/checkCookieExists';
import checkDimension from '../support/check/checkDimension';
import checkEqualsText from '../support/check/checkEqualsText';
import checkFocus from '../support/check/checkFocus';
import checkInURLPath from '../support/check/checkInURLPath';
import checkIsOpenedInNewWindow from '../support/check/checkIsOpenedInNewWindow';
import checkModal from '../support/check/checkModal';
import checkModalText from '../support/check/checkModalText';
import checkNewWindow from '../support/check/checkNewWindow';
import checkOffset from '../support/check/checkOffset';
import checkProperty from '../support/check/checkProperty';
import checkSelected from '../support/check/checkSelected';
import checkTitle from '../support/check/checkTitle';
import checkURL from '../support/check/checkURL';
import checkURLPath from '../support/check/checkURLPath';
import checkWithinViewport from '../support/check/checkWithinViewport';
import compareText from '../support/check/compareText';
import isEnabled from '../support/check/isEnabled';
import isExisting from '../support/check/isExisting';
import isVisible from '../support/check/isVisible';
import waitFor from '../support/action/waitFor';
import waitForVisible from '../support/action/waitForVisible';
import getValue from '../support/action/getValue';


defineSupportCode(({ Then }) => {
    Then(
        /^I expect that the title is( not)* "([^"]*)?"$/,
        function(falseCase, expectedTitle){
            checkTitle(falseCase,global[expectedTitle]);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* visible$/,
        function(element,falseCase){
            isVisible(global[element],falseCase);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?" becomes( not)* visible$/,
        function(element,falseCase){
            waitForVisible(global[element],falseCase);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* within the viewport$/,
        function(element,falseCase){
            checkWithinViewport(global[element],falseCase);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?" does( not)* exist$/,
        function(element,falseCase){
            isExisting(global[element],falseCase);
        }     
    );

    Then(
        /^I expect that element "([^"]*)?"( not)* contains the same text as element "([^"]*)?"$/,
        function(element1,falseCase,element2){
            compareText(global[element1],falseCase,global[element2]);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
        function(element,falseCase,expectedText){
            checkEqualsText(global[element],falseCase,global[expectedText]);
        }
        
    );

    Then(
         /^I store text of element "([^"]*)?" into variable "([^"]*)?"$/,
         function(element, variableName){
            storeOutputText(global[element], variableName);
         }
    );

    Then(
        /^Print variable "([^"]*)?"$/,
         function(variableName){
            getValue(variableName);
        }
         
    );

     Then(
         /^I expect that element "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
         function(element,falseCase,expectedText){
            checkContainsText(global[element],falseCase,expectedText);
        }
         
     );


    Then(
        /^I expect that element "([^"]*)?"( not)* contains any text$/,
        function(element,falseCase){
            checkContainsAnyText(global[element],falseCase);
        }
        
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* empty$/,
        function(element,falseCase){
            checkIsEmpty(global[element],falseCase);
        }
        
    );

    Then(
        /^I expect that the url is( not)* "([^"]*)?"$/,
         function(falseCase,expectedURl){
            checkURL(falseCase,global[expectedURl]);
        }
        
    );

    Then(
        /^I expect that the path is( not)* "([^"]*)?"$/,
         function(falseCase,expectedURlPath){
            checkURLPath(falseCase,global[expectedURlPath]);
        }
        
    );

    Then(
        /^I expect the url to( not)* contain "([^"]*)?"$/,
         function(falseCase,expectedURlContent){
            checkInURLPath(falseCase,global[expectedURlContent]);
        }
        
    );

    Then(
        /^I expect that the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
        checkProperty
    );

    Then(
        /^I expect that checkbox "([^"]*)?" is( not)* checked$/,
        checkSelected
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* selected$/,
        checkSelected
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* enabled$/,
        isEnabled
    );

    Then(
        /^I expect that cookie "([^"]*)?"( not)* contains "([^"]*)?"$/,
        checkCookieContent
    );

    Then(
        /^I expect that cookie "([^"]*)?"( not)* exists$/,
        checkCookieExists
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* ([\d]+)px (broad|tall)$/,
        checkDimension
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* positioned at ([\d]+)px on the (x|y) axis$/,
        checkOffset
    );

    Then(
        /^I expect that element "([^"]*)?" (has|does not have) the class "([^"]*)?"$/,
        checkClass
    );

    Then(
        /^I expect a new (window|tab) has( not)* been opened$/,
        checkNewWindow
    );

    Then(
        /^I expect the url "([^"]*)?" is opened in a new (tab|window)$/,
        checkIsOpenedInNewWindow
    );

    Then(
        /^I expect that element "([^"]*)?" is( not)* focused$/,
        checkFocus
    );

    Then(
        /^I wait on element "([^"]*)?"(?: for (\d+)ms)*(?: to( not)* (be checked|be enabled|be selected|be visible|contain a text|contain a value|exist))*$/,
        {
            wrapperOptions: {
                retry: 5,
            },
        },
        waitFor
    );

    Then(
        /^I expect that a (alertbox|confirmbox|prompt) is( not)* opened$/,
        checkModal
    );

    Then(
        /^I expect that a (alertbox|confirmbox|prompt)( not)* contains the text "([^"]*)?"$/,
        checkModalText
    );
});
