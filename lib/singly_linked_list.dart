///
/// The class implements a manager for Singly Linked List
///
/// See https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list
///
class SinglyLinkedList<T> extends Iterable<T> {
  ///
  /// Gets the number of elements contained in the list
  ///
  @override
  int get length => this._length;

  ///
  /// The field stores the number of elements contained in the list
  ///
  int _length;

  ///
  /// The field for the first element of the list
  ///
  SinglyLinkedListNode<T>? firstNode;

  ///
  /// The field for the last element of the list
  ///
  SinglyLinkedListNode<T>? lastNode;

  ///
  /// Initializes a new instances of the LinkedList<T> class, containing the specified values
  ///
  SinglyLinkedList()
      : this.firstNode = null,
        this.lastNode = null,
        this._length = 0;

  ///
  /// This method adds the given value to the end of the list
  ///
  SinglyLinkedListNode<T> addLast(T value) {
    ++this._length;

    // Create a node with user data and remember it in the variable declaration
    SinglyLinkedListNode<T> nextNode = SinglyLinkedListNode<T>(value);

    // If the list is empty, the first element of the list is out,`first` = null
    if (this.firstNode == null) {
      // One element added to SinglyLinkedListNode<T>?the list, it is the first and last items
      this.firstNode = nextNode;
      this.lastNode = nextNode;
    } else {
      // Create a link from the last node of the list to a new node
      this.lastNode?.next = nextNode;

      // Installed node is the last item in the list
      this.lastNode = nextNode;
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
    if (this.firstNode == null) {
      // One element added to the list, it is the first and last items
      this.firstNode = nextNode;
      this.lastNode = nextNode;
    } else {
      // Create a link to the first node
      nextNode.next = this.firstNode;
      // In first we will remember added node implementation without extra variable
      this.firstNode = nextNode;
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
    SinglyLinkedListNode<T>? currentNode = this.firstNode;
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
    var currentNode = this.firstNode;
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
      this.lastNode = addNode;
    }

    return addNode;
  }

  ///
  /// Search first node by value. Return null if list does not contain such value
  ///
  SinglyLinkedListNode<T>? findFirst(T value) {
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.firstNode;
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
    SinglyLinkedListNode<T>? currentNode = this.firstNode;
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
    SinglyLinkedListNode<T>? currentNode = this.firstNode;
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
    SinglyLinkedListNode<T>? currentNode = this.firstNode;
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
    // Declare the local variable `prevNode`
    final SinglyLinkedListNode<T>? prevNode = this.getPrevNode(node);
    // In the loop, we check if the node of the `currentNode` is equal to the incoming node
    this._nodes(prevNode, node);
  }

  void _nodes(
    SinglyLinkedListNode<T>? prevNode,
    SinglyLinkedListNode<T> currentNode,
  ) {
    // If the current value is 'first'
    if (currentNode == this.firstNode) {
      this.firstNode = currentNode.next;
    }
    // If current value is last
    if (currentNode == this.lastNode) {
      this.lastNode = prevNode;
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
  void removeFirstNode() {
    SinglyLinkedListNode<T>? currentNode = this.firstNode;
    if (currentNode == null) {
      throw FormatException("The list is empty");
    }
    if (currentNode.next != null) {
      this.firstNode = currentNode.next;
      currentNode.next = null;
    } else {
      this.firstNode = null;
      this.lastNode = null;
    }
    --this._length;
  }

  ///
  /// Removes the node at the end of the SinglyLinkedList<T>.
  ///
  void removeLastNode() {
    SinglyLinkedListNode<T>? lastNode = this.lastNode;
    if (lastNode == null) {
      throw Exception("The list is empty");
    }
    final SinglyLinkedListNode<T>? prevNode = this.getPrevNode(lastNode);
    if (prevNode != null) {
      prevNode.next = null;
      this.lastNode = prevNode;
    } else {
      this.firstNode = null;
      this.lastNode = null;
    }
    --this._length;
  }

  ///
  /// This method removes all items of the list
  ///
  void clear() {
    this._length = 0;
    // Declare the local variable `currentNode` in the way we will remember the first node from the list
    var currentNode = this.firstNode;
    // Create a loop to sort through all the nodes current node we remove the reference to the previous node
    while (currentNode?.next != null) {
      final nextNode = currentNode?.next;
      // In current node we remove the reference to the previous node
      currentNode?.next = null;
      // After removed the node, pass the reference to the next node
      currentNode = nextNode;
    }
    // When the list is empty, `first` = null and `last` = null
    this.firstNode = null;
    this.lastNode = null;
  }

  @override
  Iterator<T> get iterator {
    final Iterator<T> myListIterator =
        SinglyLinkedListIterator<T>(this.firstNode);
    return myListIterator;
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

class SinglyLinkedListIterator<T> extends Iterator<T> {
  final SinglyLinkedListNode<T>? initialNode;
  SinglyLinkedListNode<T>? _currentNode;

  SinglyLinkedListIterator(this.initialNode);

  @override
  T get current {
    final SinglyLinkedListNode<T>? node = this._currentNode;
    if (node == null) {
      throw Exception("Current node is null");
    } else {
      return node.value;
    }
  }

  @override
  bool moveNext() {
    final SinglyLinkedListNode<T>? node = this._currentNode;
    if (node != null) {
      if (node.next == null) {
        // node is last node
        return false;
      } else {
        this._currentNode = node.next;
        return true;
      }
    } else {
      if (this.initialNode == null) {
        return false;
      } else {
        this._currentNode = this.initialNode;
        return true;
      }
    }
  }
}

class Range extends Iterable<int> {
  final int from;
  final int to;

  Range(this.from, this.to);

  @override
  Iterator<int> get iterator => RangeIterator(from, to);
}

class RangeIterator extends Iterator<int> {
  final int initialFrom;
  final int initialTo;
  int? _currentValue;

  RangeIterator(this.initialFrom, this.initialTo);

  @override
  int get current {
    final int? value = this._currentValue;
    if (value == null) {
      throw Exception(
          "Current value is null. Please try to use first method moveNext");
    } else {
      return value;
    }
  }

  @override
  bool moveNext() {
    final int? value = this._currentValue;

    if (value == null) {
      this._currentValue = initialFrom;
      return true;
    }

    if (value == initialTo) {
      return false;
    }

    this._currentValue = value + 1;
    return true;
  }
}
