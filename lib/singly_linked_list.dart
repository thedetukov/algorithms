///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  /// Create Getter method 
  int get length => this._length;
  int _length = 0;

  ///
  /// This method adds the given value to the end of the list
  ///
  SinglyLinkedListNode<T> addLast(T value) {
    this._length = this._length + 1;
    print("Adding value: '$value' into ends of the list");
    /// Create a variable 'node' into which we insert an object with a value 'value'
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
/// The class implements node for a Singly Linked List
///
class SinglyLinkedListNode<T> {
  /// Create the variable value
  final T value;

  /// Create a constructor to initialize the variable 'value'
  SinglyLinkedListNode(this.value);
}
