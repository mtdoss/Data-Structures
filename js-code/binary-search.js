function binarySearch(arr, target) {
  var len = arr.length;
  var mid = Math.floor(len / 2);  
  console.log(len);
  console.log(mid);

  var leftArray = arr.slice(0, mid + 1);
  var rightArray = arr.slice(mid + 1, len);
  if (arr[mid] === target) {
    return mid;
  } else if (arr[mid] > target) {
    return binarySearch(leftArray, target);
  } else {
    return mid + binarySearch(rightArray, target);
  }
}

console.log(binarySearch([0, 2, 4, 5, 6, 7, 8, 10, 14, 20, 22], 20));
