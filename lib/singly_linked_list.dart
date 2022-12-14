///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  int get length => this._length;
  int _length = 0;
  final SinglyLinkedList<T> myList = SinglyLinkedList<T>();
  get value => myList;

  // set addedNode(T addedNode) {}

  ///
  /// This method adds the given value to the end of the list
  ///
  void addLast(T value) {
    this._length = this._length + 1;
    print("Adding value: '$value' into ends of the list"); 
  }

  ///
  /// This method removes a value from the end of the list
  ///
  void clear() {
    this._length = 0;
  }
}

///
/// The class implements node management for a Singly Linked List.
///
class SinglyLinkedListNode<T> extends SinglyLinkedList {
  final SinglyLinkedListNode<T> addedNode = SinglyLinkedListNode<T>();
}
