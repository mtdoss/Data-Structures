function intersection(arr1, arr2) {
  set = {};
  for (var i = 0, len = arr1.length; i < len; i++) {
    set[i] = true; 
  }
  result = [];

  for (var i = 0, len = arr2.length; i < len; i++) {
    if (set[arr2[i]] === true) {
      result.push(arr2[i]);
    }
  }

  return result;
}

console.log(intersection([1, 2, 3, 4, 5, 6, 7, 8], [3, 4, 5, 9, 10]));
