void mergeSort<T extends Comparable>(List<T> list, int left, int right) {
  if (left < right) {
    // Find the middle point of the array
    int mid = (left + right) ~/ 2;

    // Recursively sort the first and second halves
    mergeSort(list, left, mid);
    mergeSort(list, mid + 1, right);

    // Merge the sorted halves
    merge(list, left, mid, right);
  }
}

void merge<T extends Comparable>(List<T> list, int left, int mid, int right) {
  int n1 = mid - left + 1;
  int n2 = right - mid;

  // Create temporary arrays to hold the two halves
  List<T> leftHalf = List<T>.filled(n1, list[left], growable: false);
  List<T> rightHalf = List<T>.filled(n2, list[mid + 1], growable: false);

  // Copy data to temporary arrays leftHalf[] and rightHalf[]
  for (int i = 0; i < n1; i++) {
    leftHalf[i] = list[left + i];
  }

  for (int j = 0; j < n2; j++) {
    rightHalf[j] = list[mid + 1 + j];
  }

  // Merge the temporary arrays back into the original array
  int i = 0; // Initial index of first subarray
  int j = 0; // Initial index of second subarray
  int k = left; // Initial index of merged subarray

  while (i < n1 && j < n2) {
    if (leftHalf[i].compareTo(rightHalf[j]) <= 0) {
      list[k] = leftHalf[i];
      i++;
    } else {
      list[k] = rightHalf[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of leftHalf[], if any
  while (i < n1) {
    list[k] = leftHalf[i];
    i++;
    k++;
  }

  // Copy the remaining elements of rightHalf[], if any
  while (j < n2) {
    list[k] = rightHalf[j];
    j++;
    k++;
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];

  // Print the original list
  print('Original List: $numbers');

  // Apply Merge Sort
  mergeSort(numbers, 0, numbers.length - 1);

  // Print the sorted list
  print('Sorted List: $numbers');
}
