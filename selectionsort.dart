void selectionSort<T extends Comparable>(List<T> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      // Find the index of the minimum element
      if (list[j].compareTo(list[minIndex]) < 0) {
        minIndex = j;
      }
    }

    // Swap the found minimum element with the element at index i
    T temp = list[i];
    list[i] = list[minIndex];
    list[minIndex] = temp;
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];

  // Print the original list
  print('Original List: $numbers');

  // Apply Selection Sort
  selectionSort(numbers);

  // Print the sorted list
  print('Sorted List: $numbers');
}
