/**
 * Check if the given elements contains text
 * @param  {String}   element       Element selector
 * @param  {String}   falseCase     Whether to check if the content contains
 *                                  the given text or not
 * @param  {String}   expectedText  The text to check against
 */
module.exports = (element, variableName) => {
    console.log(' element, variableName ', element, variableName)
    /**
     * The command to perform on the browser object
     * @type {String}
     */
    let command = 'getValue';

    if (browser.getAttribute(element, 'value') === null) {
        command = 'getText';
    }

    /**
     * False case
     * @type {Boolean}
     */
    //let boolFalseCase;

    /**
     * The expected text
     * @type {String}
     */
    //let stringExpectedText = expectedText;

    /**
     * The text of the element
     * @type {String}
     */
    const text = browser[command](element);
    global[variableName] = text;

    
};
