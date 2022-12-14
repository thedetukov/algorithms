///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  int get length => this._length;
  int _length = 0;

  // set addedNode(T addedNode) {}

  ///
  /// This method adds the given value to the end of the list
  ///
  SinglyLinkedListNode<T> addLast(T value) {
    this._length = this._length + 1;
    print("Adding value: '$value' into ends of the list");
    final node = SinglyLinkedListNode<T>(value);
    return node;
  }

  ///
  /// This method removes a value from the end of the list
  ///
  void clear() {
    this._length = 0;
  }
}

///
/// The class implements node for a Singly Linked List.
///
class SinglyLinkedListNode<T> {
  final T value;

  SinglyLinkedListNode(this.value);
}
