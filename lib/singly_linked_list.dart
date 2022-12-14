///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> {
  ///
  /// Gets the number of elements contained in the list
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
  /// Initializes a new instances of the LinkedList<T> class, containing the specified values
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

    // Create a node with user data and remember it in the variable declaration
    SinglyLinkedListNode<T> nextNode = SinglyLinkedListNode<T>(value);

    // If the list is empty, the first element of the list is out,`first` = null
    if (this.first == null) {
      // One element added to the list, it is the first and last items
      this.first = nextNode;
      this.last = nextNode;
    } else {
      // Create a link from the last node of the list to a new node
      this.last?.next = nextNode;

      // Installed node is the last item in the list
      this.last = nextNode;
    }

    return nextNode;
  }

  ///
  /// This method adds the given value to the beginning of the list
  ///
  SinglyLinkedListNode<T> addFirst(T value) {
    this._length = this._length + 1;

    // Create a node with user data and remember it in the variable declaration
    SinglyLinkedListNode<T> nextNode = SinglyLinkedListNode<T>(value);

    // If the list is empty, the first element of the list is out,`first` = null
    if (this.first == null) {
      // One element added to the list, it is the first and last items
      this.first = nextNode;
      this.last = nextNode;
    } else {
      // Create a link to the first node
      nextNode.next = this.first;
      // In first we will remember added node implementation without extra variable
      this.first = nextNode;
    }

    return nextNode;
  }

  ///
  /// This method prints all items of the list
  ///
  void printList() {
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.first;
    // Create a loop to sort through all the nodes
    while (currentNode != null) {
      // Display in the console a list of node values
      print(currentNode.value);
      // In current node pass the reference to the next node
      currentNode = currentNode.next;
    }
  }

  SinglyLinkedListNode getByIndex(int index) {
    SinglyLinkedListNode indexNode = SinglyLinkedListNode(index);

    return indexNode;
  }

  ///
  /// This method removes all items of the list
  ///
  void clear() {
    this._length = 0;
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.first;
    // Create a loop to sort through all the nodes current node we remove the reference to the previous node
    while (currentNode?.next != null) {
      final nextNode = currentNode?.next;
      // In current node we remove the reference to the previous node
      currentNode?.next = null;
      // After removed the node, pass the reference to the next node
      currentNode = nextNode;
    }
    // When the list is empty, `first` = null and `last` = null
    this.first = null;
    this.last = null;
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
  /// The field for the next element of the list
  ///
  SinglyLinkedListNode<T>? next;

  ///
  /// Initializes a new instance of the LinkedListNode<T> class, containing the specified value
  ///
  SinglyLinkedListNode(this.value) : this.next = null;
}
