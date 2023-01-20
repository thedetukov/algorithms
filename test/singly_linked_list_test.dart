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
      expect(myList.first, isNull);
    });

    test("For the newly created list, last should be null", () {
      expect(myList.last, isNull);
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

      expect(myList.first, isNull);
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

      expect(myList.first, isNull);
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

      expect(myList.last, isNull);
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

      expect(myList.last, isNull);
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

      expect(myList.first, equals(firstAddedNode));
    });

    test("After add two nodes into list last should be secondAddedNode", () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addAfter(firstAddedNode, "Ninety Nine");

      expect(myList.last, equals(secondAddedNode));
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

      expect(myList.first, equals(firstAddedNode));
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

      expect(myList.last, equals(secondAddedNode));
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

      expect(myList.last, equals(thirdAddedNode));
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

      expect(findNode, secondAddedNode);
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
          myList.addLast("Ninety nine");
      final SinglyLinkedListNode<String>? findNode =
          myList.findLast("Ninety Nine");

      expect(findNode, fourthAddedNode);
    });

    test("Search last node by value if the value is no one in the list", () {
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

      expect(myList.first, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, first should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode = myList.addFirst("Twelve");

      expect(myList.first, equals(addedNode));
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode = myList.addLast("Twelve");

      expect(myList.last, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, last should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode = myList.addFirst("Twelve");

      expect(myList.last, equals(addedNode));
    });

    test(
        "After add two nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list first should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(myList.first, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Twelve");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("Ninety Nine");

      expect(myList.last, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("Ninety Nine");

      expect(myList.last, equals(firstAddedNode));
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

      expect(myList.first, equals(firstAddedNode));
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

      expect(myList.first, equals(thirdAddedNode));
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

      expect(myList.last, equals(thirdAddedNode));
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

      expect(myList.last, equals(firstAddedNode));
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

      expect(myList.first, equals(firstAddedNode));
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

      expect(myList.first, equals(thirdAddedNode));
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
