///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  int get length => this._length;
  int _length = 0;

  void addLast(T value) {
    this._length = this._length + 1;
    print("Adding value: '$value' into ends of the list");
    // SinglyLinkedList myList = SinglyLinkedList();
  }

    void clear() {
    this._length =0;
    // SinglyLinkedList myList = SinglyLinkedList();
  }
}
