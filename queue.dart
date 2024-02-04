import 'dart:io';

class Queue<T> {
  List<T> _items = [];

  void enqueue(T item) {
    _items.add(item);
  }

  T dequeue() {
    if (_items.isEmpty) {
      throw StateError('Cannot dequeue from an empty queue');
    }
    return _items.removeAt(0);
  }

  T peek() {
    if (_items.isEmpty) {
      throw StateError('Cannot peek into an empty queue');
    }
    return _items.first;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }

  int size() {
    return _items.length;
  }
}

void main() {
  Queue<int> queue = Queue<int>();

  int i = 0;
  while (i < 3) {
    print('Enter Number');
    int input = int.parse(stdin.readLineSync().toString());
    queue.enqueue(input);
    i++;
  }
  print('---------------------');
  print(queue._items);
  print('Queue size: ${queue.size()}'); // Output: Queue size: 3
  print('Peeked: ${queue.peek()}'); // Output: Peeked: 1

  while (!queue.isEmpty()) {
    print('Dequeued: ${queue.dequeue()}');
  }
}
