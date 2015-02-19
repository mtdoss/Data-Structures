function merge (arr1, arr2) {
  result = [];
  while (arr1.length > 0 && arr2.length > 0) {
    if (arr1[0] < arr2[0]) {
      result.push(arr1.shift());
    } else {
      result.push(arr2.shift());
    }
  }

  return result.concat(arr1).concat(arr2);
}

var mergeSort = function (arr) {
  if (arr.length < 2) {
    return arr;
  }
  // console.log(arr.length);
  mid = Math.floor(arr.length / 2);
  len = arr.length;

  leftArray = arr.slice(0, mid);
  rightArray = arr.slice(mid, len);

  console.log("Left array is " + leftArray);
  console.log("Right array is " + rightArray);

  // console.log(leftArray);
  // console.log(rightArray);
  
  return merge(mergeSort(leftArray), mergeSort(rightArray));
};

// console.log(mergeSort([5, 6, 3, 2, 3, 3, 4, 9, 10, 0, 30, 2]));
console.log(mergeSort([5, 4, 3, 6, 2, 2]));
