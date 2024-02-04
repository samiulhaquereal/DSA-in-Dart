void bubbleSort<T extends Comparable>(List<T> list) {
  int n = list.length;
  int count = 0, swap;

  for (int i = 0; i < n - 1; i++) {
    swap = 0;
    for (int j = 0; j < n - i - 1; j++) {
      count++;
      // Compare adjacent elements
      if (list[j].compareTo(list[j + 1]) > 0) {
        // Swap them if they are in the wrong order
        T temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        //--------
        swap = 1;
      }
    }
    if (swap == 0) {
      break;
    }
  }
  print(count);
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  // Print the original list
  print('Original List: $numbers');

  // Apply Bubble Sort
  bubbleSort(numbers);

  // Print the sorted list
  print('Sorted List: $numbers');
}
