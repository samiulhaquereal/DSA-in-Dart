int binarySearch<T extends Comparable>(List<T> list, T target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    int comparison = target.compareTo(list[mid]);

    if (comparison == 0) {
      return mid; // Target found, return the index
    } else if (comparison < 0) {
      right = mid - 1; // Target is in the left half
    } else {
      left = mid + 1; // Target is in the right half
    }
  }

  return -1; // Target not found
}

void main() {
  List<int> sortedNumbers = [2, 3, 5, 7, 8, 12, 15, 18];
  int targetValue = 7;

  int result = binarySearch(sortedNumbers, targetValue);

  if (result != -1) {
    print('$targetValue found at index $result.');
  } else {
    print('$targetValue not found in the list.');
  }
}
