$(function() {
    //add event handlers on tree lists
    $('.treeview li div').each(function() {
        var ulElement = null;
        let currentElement = this.nextElementSibling;
        do {
            if (currentElement.localName === 'ul') {
                ulElement = currentElement;
                break;
            }
            currentElement = currentElement.nextElementSibling;
        } while (currentElement);
        
        if (ulElement !== null) {
            this.onclick = function() {
                if (!$(ulElement).hasClass('closed')) {
                    $(ulElement).addClass('closed');
                } else {
                    $(ulElement).removeClass('closed');
                }
            };
        }
    });
});