function MinMaxStack() {
  this.values = [];
}


MinMaxStack.prototype.push = function(val) {
  if (this.values.length === 0) {
    this.values.push( {
      value: val,
      max: val,
      min: val
    });
  } else {
    newMax = Math.max(val, this.max);
    newMin = Math.min(val, this.min);
    this.values.push( {
      value: val,
      max: newMax,
      min: newMin
    });
  }
};

MinMaxStack.prototype.pop = function (val) {
  return this.values.pop().value;
};

MinMaxStack.prototype.max = function () {
  return this.values.length === 0 ? null : this.values[this.values.length - 1].max;
};

MinMaxStack.prototype.min = function () {
  return this.values.length === 0 ? null : this.values[this.values.length - 1].min;
};

var stack = new MinMaxStack();
stack.push(5);
console.log(stack);
stack.pop();
console.log(stack);
