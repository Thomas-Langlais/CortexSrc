function isFunction(prop) {
    return typeof prop === 'function';
}
function isObject(prop) {
    return typeof prop === 'object';
}

function bindHandler(selector, index, target, key, val) {
    selector[key] = index;
    target[index] = val;
}

const Selector = (function() {

    function Selector(...handlers) {
        
        //selector list
        let enumeration = {};
        let functions = {};

        let i = 0;
        handlers.forEach((handler) => {
            for (let prop in handler) {
                
                let func;
                if (isFunction(handler[prop])) {
                    func = handler[prop];
                } else if (isObject(handler[prop])) {
                    func = () => Object.assign({}, handler[prop]);
                } else {
                    func = () => handler[prop];
                }

                bindHandler(enumeration, i, functions, prop, func);
                i++;
            }
        });

        this.selector = Object.freeze(enumeration);
        this.functions = Object.freeze(functions);
    };

    Selector.prototype.buildComponent = function(select, options) {
        let a = this.functions[select];
        if (this.functions[select]) {
            return this.functions[select](options);
        }
    };

    return Selector;
})();

exports.Selector = Selector;