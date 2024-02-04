import 'dart:io';

class Stack<T> {
  List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return _items.removeLast();
  }

  T peek() {
    if (_items.isEmpty) {
      throw StateError('Cannot peek into an empty stack');
    }
    return _items.last;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }

  int size() {
    return _items.length;
  }
}

void main() {
  Stack<int> stack = Stack<int>();

  int i = 0;
  while (i < 3) {
    print('Enter Number');
    int input = int.parse(stdin.readLineSync().toString());
    stack.push(input);
    i++;
  }

  print('---------------------');
  print(stack._items);
  print('Stack size: ${stack.size()}');
  print('Peeked: ${stack.peek()}');

  while (!stack.isEmpty()) {
    print('Popped: ${stack.pop()}');
  }
}
