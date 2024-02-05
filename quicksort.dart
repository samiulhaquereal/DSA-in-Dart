void quickSort<T extends Comparable>(List<T> list, int low, int high) {
  if (low < high) {
    // Partition the array and get the index of the pivot
    int pivotIndex = partition(list, low, high);

    // Recursively sort the sub-arrays
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

int partition<T extends Comparable>(List<T> list, int low, int high) {
  T pivot = list[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (list[j].compareTo(pivot) <= 0) {
      // Swap list[i] and list[j]
      i++;
      T temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  // Swap list[i + 1] and list[high] (put the pivot in its correct position)
  T temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;

  return i + 1;
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];

  // Print the original list
  print('Original List: $numbers');

  // Apply Quick Sort
  quickSort(numbers, 0, numbers.length - 1);

  // Print the sorted list
  print('Sorted List: $numbers');
}
