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

  void printList() {
    Node<T>? current = _head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();

  linkedList.add(1);
  linkedList.add(2);
  linkedList.add(3);

  linkedList.printList();
}
