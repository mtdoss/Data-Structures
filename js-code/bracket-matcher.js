function bracketMatcher(str) {
  var stack = [];
  for (var i = 0; i < str.length; i++) {
    var char = str.charAt(i);
    if (char === "[" || char === "(") {
      stack.push(char);
    }
    if (char === "]" && stack.pop() !== "[") {
      return false;
    }
    if (char === ")" && stack.pop() !== "(") {
      return false;
    }
  }  

  if (stack.length === 0) {
    return true;
  }
}

console.log(bracketMatcher("[]()()"));
console.log(bracketMatcher("[(])"));
