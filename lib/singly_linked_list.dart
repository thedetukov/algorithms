///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  ///
  /// This Getter method return the number of elements contained in the list
  ///
  int get length => this._length;

  ///
  /// The field stores the number of elements contained in the list
  ///
  int _length;

  ///
  /// The field for the first element of the list
  ///
  SinglyLinkedListNode<T>? first;

  ///
  /// The field for the last element of the list
  ///
  SinglyLinkedListNode<T>? last;

  ///
  /// Initialize the created fields in the constructor
  ///
  SinglyLinkedList()
      : this.first = null,
        this.last = null,
        this._length = 0;

  ///
  /// This method adds the given value to the end of the list
  ///
  SinglyLinkedListNode<T> addLast(T value) {
    this._length = this._length + 1;
    print("Adding value: '$value' into ends of the list");

    // Create a node with user data and remember it in the variable declaration
    final node = SinglyLinkedListNode<T>(value);

    // One element added to the list, it is the first and last items
    this.first = node;
    this.last = node;
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
  ///
  /// The field for the user data
  ///
  final T value;

  ///
  /// Initialize the field 'value' in the constructor
  ///
  SinglyLinkedListNode(this.value);
}
