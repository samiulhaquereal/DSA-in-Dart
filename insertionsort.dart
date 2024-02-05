void insertionSort<T extends Comparable>(List<T> list) {
  int n = list.length;

  for (int i = 1; i < n; i++) {
    T key = list[i];
    int j = i - 1;

    // Move elements that are greater than key to one position ahead
    while (j >= 0 && list[j].compareTo(key) > 0) {
      list[j + 1] = list[j];
      j--;
    }

    // Insert the key into its correct position
    list[j + 1] = key;
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];

  // Print the original list
  print('Original List: $numbers');

  // Apply Insertion Sort
  insertionSort(numbers);

  // Print the sorted list
  print('Sorted List: $numbers');
}
