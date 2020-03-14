function dumpObject(obj, maxDepth) {
    function doDump(obj, currentDepth, maxDepth) {
        var prefix = '';
        for(var x=0; x < currentDepth; ++x) {
            prefix += '  ';
        }
        prefix += '- ';
        for(var key in obj) {
            var value = obj[key];
            var type = typeof(value);
            if (type == 'function') {
                continue;
            }
            if (currentDepth + 1 < maxDepth && type === 'object') {
                console.log(prefix + key + ':');
                doDump(value, currentDepth + 1, maxDepth);
            } else {
                console.log(prefix + key + ': ' + value);
            }
        }
    }

    if (typeof(maxDepth) === 'undefined') {
        maxDepth = 10;
    }
    doDump(obj, 0, maxDepth);
}
