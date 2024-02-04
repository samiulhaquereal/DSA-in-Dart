class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [this.next]);
}

class LinkedList<T> {
  Node<T>? _head;

  LinkedList() : _head = null;

  void add(T data) {
    if (_head == null) {
      _head = Node<T>(data, null);
    } else {
      Node<T>? current = _head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = Node<T>(data, null);
    }
  }

//------------------------Print the LinkedList
  void printList() {
    Node<T>? current = _head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  //------------------------LinkedList from array

  void fromArray(List<T> array) {
    for (T element in array) {
      add(element);
    }
  }
//------------------------Search in LinkedList

  bool contains(T element) {
    Node<T>? current = _head;
    while (current != null) {
      if (current.data == element) {
        return true; // Element found in the list
      }
      current = current.next;
    }
    return false; // Element not found in the list
  }

//-------------------------------Reverse LinkedList

  void reverse() {
    Node<T>? prev = null;
    Node<T>? current = _head;
    Node<T>? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    _head = prev;
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();

  /*
  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);
  */
  List<int> array = [1, 2, 3, 4, 5];
  linkedList.fromArray(array);

  linkedList.printList();

  int searchElement = 3;
  if (linkedList.contains(searchElement)) {
    print('$searchElement found in the linked list.');
  } else {
    print('$searchElement not found in the linked list.');
  }
  linkedList.reverse();
  linkedList.printList();
}
