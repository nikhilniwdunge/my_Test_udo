import { defineSupportCode } from 'cucumber';

import clearInputField from '../support/action/clearInputField';
import clickElement from '../support/action/clickElement';
import closeLastOpenedWindow from '../support/action/closeLastOpenedWindow';
import deleteCookie from '../support/action/deleteCookie';
import dragElement from '../support/action/dragElement';
import focusLastOpenedWindow from '../support/action/focusLastOpenedWindow';
import handleModal from '../support/action/handleModal';
import moveToElement from '../support/action/moveToElement';
import pause from '../support/action/pause';
import pressButton from '../support/action/pressButton';
import scroll from '../support/action/scroll';
import selectOption from '../support/action/selectOption';
import selectOptionByIndex from '../support/action/selectOptionByIndex';
import setCookie from '../support/action/setCookie';
import setInputField from '../support/action/setInputField';
import setPromptText from '../support/action/setPromptText';
import submitForm from '../support/action/submitForm';





defineSupportCode(({ When }) => {
    When(                                                     
        /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
        function(action, type, element){
            clickElement(action, type, global[element]);
        }
        
    );

    When(              
        /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
        function(method, value, element){
            setInputField(method, value, global[element]);
        }
    );
   When(
        /^I (insert|put) "([^"]*)?" to the inputfield "([^"]*)?"$/,
        function(method, value, element){
            setInputField(method, global[value], global[element]);
        }
    );

    When(
        /^I clear the inputfield "([^"]*)?"$/,
        function(element){
        clearInputField(global[element]);
       }     
    );

    When(
        /^I drag element "([^"]*)?" to element "([^"]*)?"$/,
        function(source,destination){
            dragElement(global[source], global[destination]);
        }
    );

    When(
        /^I submit the form "([^"]*)?"$/,
        function(form){
        submitForm(global[form]);
       }     
    );

    When(
        /^I pause for (\d+)ms$/,
        pause
    );

    When(
        /^I set a cookie "([^"]*)?" with the content "([^"]*)?"$/,
        function(cookieName, cookieContent){
            setCookie(global[cookieName], global[cookieContent]);
        }   
    );

    When(
        /^I delete the cookie "([^"]*)?"$/,
        function(name){
         deleteCookie(global[name]);
       }     
    );

    When(
        /^I press "([^"]*)?"$/,
        function(key){
         pressButton(global[key]);
       }        
    );

    When(
        /^I (accept|dismiss) the (alertbox|confirmbox|prompt)$/,
        function(action, modalType){
         handleModal(global[action], modalType);
        } 
      
    );

    When(
        /^I enter "([^"]*)?" into the prompt$/,
        function(modalText){
           setPromptText(global[modalText]);
        } 
      
    );

    When(
        /^I scroll to element "([^"]*)?"$/,
        function(selector){
            scroll(global[selector]);
        } 
      
    );

    When(
        /^I close the last opened (window|tab)$/,
        function(obsolete){
            closeLastOpenedWindow(obsolete);
        } 
       
    );

    When(
        /^I focus the last opened (window|tab)$/,
        function(obsolete){
             focusLastOpenedWindow(obsolete);
        } 
      
    );

    When(
        /^I select the (\d+)(st|nd|rd|th) option for element "([^"]*)?"$/,
        function(index, obsolete, selectElem){
            selectOptionByIndex(index, obsolete, global[selectElem]);
        }
        
    );

    When(
        /^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
        function(selectionType, selectionValue, selectElem){
             selectOption(selectionType, global[selectionValue], global[selectElem]);
        }
       
        
    );

    When(
        /^I move to element "([^"]*)?"(?: with an offset of (\d+),(\d+))*$/,
        function(element, x, y){
            moveToElement(global[element],x, y);
        }
        
    );
});
