var Derived = function() {
    Base.call(this/*, baseCtorArg1, baseCtorArg2...*/);
}

Derived.prototype = Object.create(Base.prototype);
Derived.prototype.constructor = Derived;
