import 'dart:math';

import 'package:dart_class_application/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group("Tests for empty list", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Length of new instance should be zero", () {
      expect(myList.length, equals(0));
    });

    test("For the newly created list, first should be null", () {
      expect(myList.firstNode, isNull);
    });

    test("For the newly created list, last should be null", () {
      expect(myList.lastNode, isNull);
    });
  });

  group("Tests for method clean", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Length after clear should be 0", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.clear();

      expect(myList.length, equals(0));
    });

    test("Length should be 0 after clear ", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.clear();

      expect(myList.length, equals(0));
    });

    test("first after clear should be null", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.clear();

      expect(myList.firstNode, isNull);
    });

    test("First should be null after clear ", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.clear();

      expect(myList.firstNode, isNull);
    });

    test("Last after clear should be null", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.clear();

      expect(myList.lastNode, isNull);
    });

    test("Last should be null after clear ", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.clear();

      expect(myList.lastNode, isNull);
    });

    test("First node after clear should reference to null in property next",
        () {
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.clear();

      expect(firstNode.next, isNull);
    });

    test("First node should reference to null in property next after clear ",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.clear();

      expect(thirdNode.next, isNull);
    });

    test("Second node after clear should reference to null in property next",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.clear();

      expect(secondNode.next, isNull);
    });

    test("Second node after clear should reference to null in property next",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.clear();

      expect(secondNode.next, isNull);
    });
  });

  group("Tests for method getByIndex", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Should obtain first node from list of one element", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");

      final SinglyLinkedListNode<String> zeroIndexNode = myList.getByIndex(0);

      expect(zeroIndexNode, equals(firstAddedNode));
    });

    test("Should obtain first node from list of two elements", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      final SinglyLinkedListNode<String> zeroIndexNode = myList.getByIndex(0);

      expect(zeroIndexNode, equals(firstAddedNode));
    });

    test("Should obtain first node from list of three elements", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      final SinglyLinkedListNode<String> zeroIndexNode = myList.getByIndex(0);

      expect(zeroIndexNode, equals(firstAddedNode));
    });
  });

  group("Tests for method addAfter", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test(
        "Adds a new node containing the specified value after the specified existing node in the list",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(myList.length, equals(3));
    });

    test("Adds a node to a list of one node", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(myList.length, equals(2));
    });

    test("After add two nodes into list first should be firstAddedNode", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(myList.firstNode, equals(firstAddedNode));
    });

    test("After add two nodes into list last should be secondAddedNode", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(myList.lastNode, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list next of first node should references to second added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list next of last node should references to nothing",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(secondAddedNode.next, isNull);
    });

    test(
        "After add three nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list last should references to second added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(myList.lastNode, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list last should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(secondAddedNode, "Thirty Seven");

      expect(myList.lastNode, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list next of first node should references to third added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(firstAddedNode.next, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list next of third node should references to second added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(thirdAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list next of second node should references to nothing",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addAfter(firstAddedNode, "Thirty Seven");

      expect(secondAddedNode.next, isNull);
    });
  });

  group("Tests for method findFirst", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Search first node by value if the value is one in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String>? findNode =
          myList.findFirst("Thirty Seven");

      expect(findNode, thirdAddedNode);
    });

    test("Search first node by value if the value is not alone in the list",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> fourthAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String>? findNode =
          myList.findFirst("Ninety Nine");

      expect(findNode, secondAddedNode);
    });

    test("If node by value is not in the list method should return nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String>? findNode = myList.findFirst("Ten");

      expect(findNode, isNull);
    });
  });

  group("Tests for method findLast", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Search last node by value if the value is one in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String>? findNode =
          myList.findLast("Ninety Nine");

      expect(findNode, equals(secondAddedNode));
    });

    test(
        "Search last node by value if there is more than one value in the list",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String> fourthAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String>? findNode =
          myList.findLast("Ninety Nine");

      expect(findNode, equals(fourthAddedNode));
    });

    test("Search node by value if the value is no one in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String>? findNode = myList.findLast("Ten");

      expect(findNode, isNull);
    });
  });

  group("Tests for method remove", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test(
        "Removes the first occurrence of the specified value the SinglyLinkedList<T> if first occurrence of the specified value is first item",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));

      myList.remove("Twelve");

      expect(firstAddedNode.next, isNull);
      expect(myList.firstNode, equals(secondAddedNode));
      expect(secondAddedNode.next, equals(thirdAddedNode));
      expect(myList.length, equals(2));
    });

    test(
        "Removes the first occurrence of the specified value the SinglyLinkedList<T> if first occurrence of the specified value is last item",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.lastNode, equals(thirdAddedNode));

      myList.remove("Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));
      expect(secondAddedNode.next, isNull);
      expect(myList.lastNode, equals(secondAddedNode));
      expect(myList.length, equals(2));
    });

    test(
        "Removes the first occurrence of the specified value from the SinglyLinkedList<T>",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> fourthAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.firstNode, equals(firstAddedNode));

      myList.remove("Ninety Nine");

      expect(secondAddedNode.next, isNull);
      expect(firstAddedNode.next, equals(thirdAddedNode));
      expect(myList.lastNode, equals(fourthAddedNode));
      expect(myList.length, equals(3));
    });

    test("'first' changes if the first node is removed", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.firstNode, equals(addedNode));
      expect(myList.length, equals(1));

      myList.remove("Twelve");

      expect(myList.firstNode, isNull);
      expect(addedNode.next, isNull);
      expect(myList.length, equals(0));
    });

    test("'last' changes if the last node is removed", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.lastNode, equals(addedNode));
      expect(myList.length, equals(1));

      myList.remove("Twelve");

      expect(myList.lastNode, isNull);
      expect(addedNode.next, isNull);
      expect(myList.length, equals(0));
    });

    test("'value' is not in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: avoid_init_to_null
      Object? expectedException = null;
      try {
        myList.remove("Ten");
      } catch (e) {
        expectedException = e;
      }

      expect(expectedException, isNotNull);
      expect(myList.length, equals(3));
    });
  });

  group("Tests for method getPrevNode", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("If one node into list", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");

      final prevNode = myList.getPrevNode(firstAddedNode);

      expect(prevNode, isNull);
    });

    test("If two nodes into list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      final prevNode = myList.getPrevNode(secondAddedNode);

      expect(prevNode, equals(firstAddedNode));
    });

    test("If three nodes into list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      final prevNode = myList.getPrevNode(secondAddedNode);

      expect(prevNode, equals(firstAddedNode));
    });
  });

  group("Tests for method removeFirstNode", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("If list is empty", () {
      // ignore: avoid_init_to_null
      Object? expectedException = null;
      try {
        myList.removeFirstNode();
      } catch (e) {
        expectedException = e;
      }

      expect(expectedException, isNotNull);
      expect(myList.length, equals(0));
      expect(myList.firstNode, isNull);
      expect(myList.lastNode, isNull);
    });

    test("If one node into list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");

      expect(myList.length, equals(1));
      expect(myList.firstNode, equals(myList.lastNode));
      expect(firstAddedNode.next, isNull);

      myList.removeFirstNode();

      expect(myList.length, equals(0));
      expect(myList.firstNode, isNull);
      expect(myList.lastNode, isNull);
    });

    test("If there are multiple nodes in the list", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> forthAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.length, equals(4));
      expect(firstAddedNode.next, secondAddedNode);

      myList.removeFirstNode();

      expect(firstAddedNode.next, isNull);
      expect(myList.length, equals(3));
    });
  });

  group("Tests for method removeLastNode", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("If list is empty", () {
      // ignore: avoid_init_to_null
      Object? expectedException = null;
      try {
        myList.removeLastNode();
      } catch (e) {
        expectedException = e;
      }

      expect(expectedException, isNotNull);
      expect(myList.length, equals(0));
      expect(myList.firstNode, isNull);
      expect(myList.lastNode, isNull);
    });

    test("If one node into list", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");

      expect(myList.length, equals(1));
      expect(myList.firstNode, equals(myList.lastNode));
      expect(firstAddedNode.next, isNull);

      myList.removeLastNode();

      expect(myList.length, equals(0));
      expect(myList.firstNode, isNull);
      expect(myList.lastNode, isNull);
    });

    test("If there are multiple nodes in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      final SinglyLinkedListNode<String> forthAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.length, equals(4));
      expect(thirdAddedNode.next, forthAddedNode);

      myList.removeLastNode();

      expect(forthAddedNode.next, isNull);
      expect(myList.length, equals(3));
    });
  });

  group("Tests for method removeNode", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test(
        "Removes the first occurrence of the specified node the SinglyLinkedList<T> if first occurrence of the specified node is first item",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));

      myList.removeNode(firstAddedNode);

      expect(firstAddedNode.next, isNull);
      expect(myList.firstNode, equals(secondAddedNode));
      expect(secondAddedNode.next, equals(thirdAddedNode));
      expect(myList.length, equals(2));
    });

    test(
        "Removes the first occurrence of the specified node the SinglyLinkedList<T> if first occurrence of the specified node is last item",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.lastNode, equals(thirdAddedNode));
      expect(thirdAddedNode.next, isNull);

      myList.removeNode(thirdAddedNode);

      expect(myList.firstNode, equals(firstAddedNode));
      expect(thirdAddedNode.next, isNull);
      expect(secondAddedNode.next, isNull);
      expect(myList.lastNode, equals(secondAddedNode));
      expect(myList.length, equals(2));
    });

    test(
        "Removes the first occurrence of the specified node from the SinglyLinkedList<T>",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> fourthAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.firstNode, equals(firstAddedNode));

      myList.removeNode(secondAddedNode);

      expect(secondAddedNode.next, isNull);
      expect(firstAddedNode.next, equals(thirdAddedNode));
      expect(myList.lastNode, equals(fourthAddedNode));
      expect(myList.length, equals(3));
    });

    test("'first' changes if the first node is removed", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.firstNode, equals(addedNode));
      expect(myList.length, equals(1));

      myList.removeNode(addedNode);

      expect(myList.firstNode, isNull);
      expect(addedNode.next, isNull);
      expect(myList.length, equals(0));
    });

    test("'last' changes if the last node is removed", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.lastNode, equals(addedNode));
      expect(myList.length, equals(1));

      myList.removeNode(addedNode);

      expect(myList.lastNode, isNull);
      expect(addedNode.next, isNull);
      expect(myList.length, equals(0));
    });

    test("Node is not in the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");
      // ignore: avoid_init_to_null
      Object? expectedException = null;
      try {
        myList.remove("Ten");
      } catch (e) {
        expectedException = e;
      }

      expect(expectedException, isNotNull);
      expect(myList.length, equals(3));
    });
  });

  group("Test Iterable", () {
    test("Iterator", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      final List<String> results = [];

      final Iterator<String> myListIterator =
          SinglyLinkedListIterator<String>(myList.firstNode);

      while (myListIterator.moveNext()) {
        results.add(myListIterator.current);
      }

      expect(results.length, equals(3));
      expect(results[0], equals(firstAddedNode.value));
      expect(results[1], equals(secondAddedNode.value));
      expect(results[2], equals(thirdAddedNode.value));
    });

    test("for-each", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      final List<String> results = [];

      for (final String currentNode in myList) {
        results.add(currentNode);
      }

      expect(results, hasLength(3));
      expect(results.length, equals(3));
      expect(results[0], equals(firstAddedNode.value));
      expect(results[1], equals(secondAddedNode.value));
      expect(results[2], equals(thirdAddedNode.value));
    });

    test("range", () {
      final List<int> results = [];

      for (final int v in Range(1, 3)) {
        results.add(v);
      }

      expect(results, hasLength(3));
      expect(results.length, equals(3));
      expect(results[0], equals(1));
      expect(results[1], equals(2));
      expect(results[2], equals(3));
    });
  });

  group("Unsorted", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Length after addLast an item should be 1", () {
      myList.addLast("Twelve");
      expect(myList.length, equals(1));
    });

    test("Length after addFirst an one item should be 1", () {
      myList.addFirst("Twelve");
      expect(myList.length, equals(1));
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(addedNode.value, equals("Twelve"));
      expect(addedNode.next, isNull);
    });

    test("addFirst should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<String> addedNode = myList.addFirst("Twelve");

      expect(addedNode.value, equals("Twelve"));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list first should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.firstNode, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, first should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode = myList.addFirst("Twelve");

      expect(myList.firstNode, equals(addedNode));
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.lastNode, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, last should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode = myList.addFirst("Twelve");

      expect(myList.lastNode, equals(addedNode));
    });

    test(
        "After add two nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.firstNode, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list first should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(myList.firstNode, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.lastNode, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(myList.lastNode, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list next of second node should references to first added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list next of second node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(secondAddedNode.next, isNull);
    });

    test(
        "After add two nodes into list next of first node should references to nothing",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(firstAddedNode.next, isNull);
    });

    test(
        "After add three nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list first should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(myList.firstNode, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list next of first node should references to second added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list next of third node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(thirdAddedNode.next, isNotNull);
      expect(thirdAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list next of second node should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list next of second node should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list last should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.lastNode, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list last should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(myList.lastNode, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(myList.firstNode, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list first should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(myList.firstNode, equals(thirdAddedNode));
    });

    test("Print all items of a list (addLast)", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.printList();
    });

    test("Print all items of a list (addFirst)", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.printList();
    });

    test(
        "After add three nodes into list next of third node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addLast("Thirty Seven");

      expect(thirdAddedNode.next, isNull);
    });

    test(
        "After add three nodes into list next of first node should references to nothing",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Thirty Seven");

      expect(firstAddedNode.next, isNull);
    });
  });
}
