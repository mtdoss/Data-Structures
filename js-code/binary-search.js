function binarySearch(arr, target) {
  var len = arr.length;
  var mid = Math.floor(len / 2);  

  var leftArray = arr.slice(0, mid);
  var rightArray = arr.slice(mid, len);
  if (arr[mid] === target) {
    return mid;
    
  } else if (arr[mid] > target) {
    // console.log(arr[mid]);
    // console.log(mid);
    // console.log(arr);
    return binarySearch(leftArray, target);
  } else if (arr[mid] < target) {
    return mid + binarySearch(rightArray, target);
  } else {
    console.log("error!!");
    return "ERROR IT'S NOT HERE";
  }
}

console.log(binarySearch([0, 2, 4, 5, 6, 7, 8, 10, 14, 20, 22], 20));
