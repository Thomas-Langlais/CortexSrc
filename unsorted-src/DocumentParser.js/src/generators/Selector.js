let Selector;
exports.Selector = Selector = (function() {

    function isFunction(prop) {
        return typeof prop === 'function';
    }
    function isObject(prop) {
        return typeof prop === 'object';
    }

    function Selector(...handlers) {
        
        function bindData(prop, ) {

        }
        //selector list
        let enumeration = {};

        for (let handler in handlers) {

            for (let prop in handler) {
                
                let func;
                if (isFunction(handler[prop])) {
                    func = handler[prop];
                } else if (isObject(handler[prop])) {
                    func = () => Object.assign({}, handler[prop]);
                } else {
                    func = () => handler[prop];
                }

                
            }
        }
    }

    return Selector;
})();
