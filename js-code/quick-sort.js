function partition(arr, start, length) {
  var pivotIdx = start;
  var pivotVal = arr[pivotIdx];

  for (var i = start + 1; i < start + length; i++) {
    val = arr[i];
    if (pivotVal < val) {
      //do nothing
    } else {
      arr[i] = arr[pivotIdx + 1];
      arr[pivotIdx + 1] = pivotVal;
      arr[pivotIdx] = val;

      pivotIdx += 1;
    }
  }

  return pivotIdx;
}

function qs (arr, start, len) {
  if (len < 2) {
    return arr;
  }
  // start = typeof start !== 'undefined' ? start : 0;
  // len = typeof len !== 'undefined' ? len : arr.length;
  if (typeof start !== 'number') {
    start = 0;
  }

  if (typeof len != 'number') {
    len = arr.length 
  }

  pivotIdx = partition(arr, start, len);
  // console.log("start is " + start);
  // console.log("pivotIdx is " + pivotIdx);
  // console.log("len is " + len);

  leftLength = pivotIdx - start;
  rightLength = len - leftLength - 1;

  qs(arr, start, leftLength);
  return qs(arr, pivotIdx + 1, rightLength);
}

console.log(qs([5, 0, 2, 3, 9, 9, 4, 1, 0, 2, 2, 9, 1, 4]));
// console.log(qs([5, 0, 2, 3, 4, 9, 1, 10]));
// console.log(partition([4, 1, 6, 1, 2, 3, 5], 0, 7));
