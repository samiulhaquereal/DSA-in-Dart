int ternarySearch<T extends Comparable>(List<T> list, T target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid1 = left + (right - left) ~/ 3;
    int mid2 = right - (right - left) ~/ 3;

    T mid1Value = list[mid1];
    T mid2Value = list[mid2];

    if (mid1Value == target) {
      return mid1; // Target found at mid1
    } else if (mid2Value == target) {
      return mid2; // Target found at mid2
    } else if (target.compareTo(mid1Value) < 0) {
      // Target is in the left third
      right = mid1 - 1;
    } else if (target.compareTo(mid2Value) > 0) {
      // Target is in the right third
      left = mid2 + 1;
    } else {
      // Target is in the middle third
      left = mid1 + 1;
      right = mid2 - 1;
    }
  }

  return -1; // Target not found
}

void main() {
  List<int> sortedNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int targetValue = 6;

  int result = ternarySearch(sortedNumbers, targetValue);

  if (result != -1) {
    print('$targetValue found at index $result.');
  } else {
    print('$targetValue not found in the list.');
  }
}
