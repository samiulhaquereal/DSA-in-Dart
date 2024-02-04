bool linearSearch<T>(List<T> list, T target) {
  for (var element in list) {
    if (element == target) {
      return true; // Target found
    }
  }
  return false; // Target not found
}

void main() {
  List<int> numbers = [5, 8, 12, 3, 7, 2, 9];
  int targetValue = 3;

  if (linearSearch(numbers, targetValue)) {
    print('$targetValue found in the list.');
  } else {
    print('$targetValue not found in the list.');
  }
}
