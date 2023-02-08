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
    ++this._length;

    // Create a node with user data and remember it in the variable declaration
    SinglyLinkedListNode<T> nextNode = SinglyLinkedListNode<T>(value);

    // If the list is empty, the first element of the list is out,`first` = null
    if (this.first == null) {
      // One element added to SinglyLinkedListNode<T>?the list, it is the first and last items
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
    ++this._length;

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
    // Declare the local variable `currentNode` in the way we will remember the previous node from the list
    SinglyLinkedListNode<T>? prevNode;
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    SinglyLinkedListNode<T>? currentNode = this.first;
    // Create a loop to sort through all the nodes
    while (currentNode != null) {
      // Declare the local variable `prevNode` in the way we will remember the value of previous node
      T? prevValue = prevNode?.value;
      // Declare the local variable `currentNode` in the way we will remember the value of current node
      T? currValue = currentNode.value;
      print("prev value: $prevValue, current value: $currValue");

      // In the variable `prevNode` in the way we will remember the current node
      prevNode = currentNode;
      // In current node pass the reference to the next node
      currentNode = currentNode.next;
    }
  }

  //
  // This method returns a node by its index
  //
  SinglyLinkedListNode<T> getByIndex(int index) {
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.first;
    // Declare the local variable `counter` with value 0
    int counter = 0;
    // Create a loop to sort through all the nodes and check that the node is not equal null
    while (currentNode != null) {
      // If the counter is equal to the index, return current node
      if (counter == index) {
        return currentNode;
      }
      // Increment counter by 1
      ++counter;
      // In current node pass the reference to the next node
      currentNode = currentNode.next;
    }
    // If the requested index does not exist, return an exception
    return throw FormatException("Specified index is not the list");
  }

  ///SinglyLinkedListNode<T>?
  /// Adds a new node containing the specified value after the specified existing node in the SinglyLinkedList<T>.
  ///
  SinglyLinkedListNode<T> addAfter(SinglyLinkedListNode<T> node, T value) {
    ++this._length;
    // Create a node with user data and remember it in the variable declaration
    SinglyLinkedListNode<T> addNode = SinglyLinkedListNode<T>(value);
    // Create a link to the next node after added node
    addNode.next = node.next;
    // Create a link to the added node
    node.next = addNode;
    // Change the last if the added node is at the end of the list
    if (addNode.next == null) {
      this.last = addNode;
    }

    return addNode;
  }

  ///
  /// Search first node by value. Return null if list does not contain such value
  ///
  SinglyLinkedListNode<T>? findFirst(T value) {
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.first;
    // In the loop, we check if the value of the `currentNode` is equal to the incoming value, return this node
    while (currentNode != null) {
      if (currentNode.value == value) {
        return currentNode;
      }
      // Create a link to the next node
      currentNode = currentNode.next;
    }
    // If there is no specified value in the list, we return nothing
    return null;
  }

  ///
  /// Search last node by value. Return null if list does not contain such value.
  ///
  SinglyLinkedListNode<T>? findLast(T value) {
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    SinglyLinkedListNode<T>? currentNode = this.first;
    // Declare a variable with value null
    // ignore: avoid_init_to_null
    SinglyLinkedListNode<T>? searchNode = null;
    // In the loop, we check if the value of the `currentNode` is equal to the incoming value and
    // put the value into the searchNode variable at each iteration of the loop
    while (currentNode != null) {
      if (currentNode.value == value) {
        searchNode = currentNode;
      }
      // Create a link to the next node
      currentNode = currentNode.next;
    }
    // Return the last value of the list
    return searchNode;
  }

  ///
  /// Removes the first occurrence of the specified value from the SinglyLinkedList<T>
  ///
  void remove(T value) {
    // Declare the local variable `prevNode` will remember is nothing
    SinglyLinkedListNode<T>? prevNode;
    // Declare the local variable `currentNode` will remember the first node from the list
    SinglyLinkedListNode<T>? currentNode = this.first;
    // In the loop, we check if the value of the `currentNode` is equal to the incoming value
    while (currentNode != null) {
      // If the current value is equal to the input value
      if (currentNode.value == value) {
        this._nodes(prevNode, currentNode);
        return;
      }
      // In the local variable `prevNode` will remember the current node
      prevNode = currentNode;
      // In current node pass the reference to the next node
      currentNode = currentNode.next;
    }
    throw FormatException("Specified value is not the list");
  }

  SinglyLinkedListNode<T>? getPrevNode(SinglyLinkedListNode<T> node) {
    SinglyLinkedListNode<T>? currentNode = this.first;
    if (currentNode == node) {
      return null;
    }
    while (currentNode != null) {
      if (currentNode.next == node) {
        return currentNode;
      }
      currentNode = currentNode.next;
    }
    throw FormatException("Specified node is not the list");
  }

  ///
  /// Removes the specified node from the SinglyLinkedList<T>.
  ///
  void removeNode(SinglyLinkedListNode<T> node) {
    // Declare the local variable `prevNode` will remember is nothing
    final SinglyLinkedListNode<T>? prevNode = this.getPrevNode(node);
    // In the loop, we check if the node of the `currentNode` is equal to the incoming node
    this._nodes(prevNode, node);
  }

  void _nodes(
    SinglyLinkedListNode<T>? prevNode,
    SinglyLinkedListNode<T> currentNode,
  ) {
    // If the current value is not 'first'
    if (currentNode == this.first) {
      this.first = currentNode.next;
    }
    // If current value is not last
    if (currentNode == this.last) {
      this.last = prevNode;
    }
    // current value is not 'first' and 'last'
    if (prevNode != null) {
      prevNode.next = currentNode.next;
    }
    currentNode.next = null;
    --this._length;
  }

  ///
  /// Removes the node at the start of the SinglyLinkedList<T>.
  ///
  void removeFirstNode(SinglyLinkedListNode<T> node) {}

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
class SinglyLinkedListNode<T> extends Object {
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

  @override
  String toString() {
    return "${this.value}";
  }
}
