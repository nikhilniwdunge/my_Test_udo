/**
 * Open the given URL
 * @param  {String}   type Type of navigation (url or site)
 * @param  {String}   page The URL to navigate to
 */
module.exports = (name) => {
    /**
     * The URL to navigate to
     * @type {String}
     */
   console.log("Print Variable ", name);
   console.log("Print arguments ", arguments);

   console.log("Print Variable ", global[name]);


};
