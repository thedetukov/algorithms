import 'package:dart_class_application/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group("SinglyLinkedList<String>", () {
    late SinglyLinkedList<String> myList;
    setUp(() {
      myList = SinglyLinkedList<String>();
    });

    test("Length of new instance should be zero", () {
      expect(myList.length, equals(0));
    });

    test("Length after addLast an item should be 1", () {
      myList.addLast("Some data");
      expect(myList.length, equals(1));
    });

    test("Length after addFirst an one item should be 1", () {
      myList.addFirst("Some data");
      expect(myList.length, equals(1));
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

    test("first should be null after clear ", () {
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

    test("last after clear should be null", () {
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

    test("last should be null after clear ", () {
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

    test("first node after clear should reference to null in property next",
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

    test("first node should reference to null in property next after clear ",
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

    test("second node after clear should reference to null in property next",
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

    test("second node should reference to null in property next after clear ",
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

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(addedNode.value, equals("Some data"));
      expect(addedNode.next, isNull);
    });

    test("addFirst should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addFirst("Some data");

      expect(addedNode.value, equals("Some data"));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list first should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(myList.first == addedNode, isTrue);
    });

    test(
        "After add first node into beginning of the list, first should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addFirst("Some data");

      expect(myList.first == addedNode, isTrue);
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(myList.last, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, last should be addedNode",
        () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addFirst("Some data");

      expect(myList.last, equals(addedNode));
    });

    test(
        "After add two nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After add two nodes into beginning of the list, first should references to first added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");

      expect(myList.first, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      expect(myList.last, equals(secondAddedNode));
    });

    test(
        "After add two nodes into beginning of the list, last should references to last node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");

      expect(myList.last, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add two nodes into beginning of the list, next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list next of second node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String>? nextNode = secondAddedNode.next;

      expect(nextNode, isNull);
    });

    test(
        "After add two nodes into beginning of the list, next of last node should references to nothing",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      final SinglyLinkedListNode<String>? nextNode = firstAddedNode.next;

      expect(nextNode, isNull);
    });

    test(
        "After add three nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(myList.first == firstAddedNode, isTrue);
    });

    test(
        "After add three nodes into beginning of the list, first should references to first added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(myList.first == thirdAddedNode, isTrue);
    });

    test(
        "After add three nodes into list next of first node should references to second added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(thirdAddedNode.next, isNotNull);
      expect(thirdAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list next of second node should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, next of second node should references to third added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list last should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(myList.last, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, last should references to first added node",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(myList.last, equals(firstAddedNode));
    });

    test(
        "After adding three nodes to the beginning of the list, the added node must be at the beginning of the list",
        () {
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After adding three nodes to the list, the added node must be at the beginning of the list",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(myList.first, equals(thirdAddedNode));
    });

    test("Print all items of a list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addLast("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addLast("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addLast("Thirty Seven");

      myList.printList();

      expect(myList, hasLength(3));
    });

    test("Print all items of a list, added from the beginning of the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstNode = myList.addFirst("Twelve");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondNode =
          myList.addFirst("Ninety Nine");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> thirdNode =
          myList.addFirst("Thirty Seven");

      myList.printList();

      expect(myList, hasLength(3));
    });

    test(
        "After add three nodes into list next of third node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(thirdAddedNode.next, isNull);
    });

    test(
        "After add three nodes into beginning of the list, next of third node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addFirst("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addFirst("World");
      final SinglyLinkedListNode<String> thirdAddedNode =
          myList.addFirst("Sun");

      expect(thirdAddedNode.next, isNull);
    });

    test("For the newly created list, first should be null", () {
      expect(myList.first, isNull);
    });

    test("For the newly created list, last should be null", () {
      expect(myList.last, isNull);
    });
  });

  group("SinglyLinkedList<int>", () {
    late SinglyLinkedList<int> myList;
    setUp(() {
      myList = SinglyLinkedList<int>();
    });

    test("Length of new instance should be zero", () {
      expect(myList.length, equals(0));
    });

    test("Length after addLast an item should be 1", () {
      myList.addLast(42);
      expect(myList.length, equals(1));
    });

    test("Length after addFirst an one item should be 1", () {
      myList.addFirst(42);
      expect(myList.length, equals(1));
    });

    test("Length after clear should be 0", () {
      myList.addLast(12);
      myList.addLast(99);
      myList.addLast(37);
      myList.clear();
      expect(myList.length, equals(0));
    });

    test("Length of list after clear should be 0", () {
      myList.addFirst(12);
      myList.addFirst(99);
      myList.addFirst(37);
      myList.clear();
      expect(myList.length, equals(0));
    });

    test("first after clear should be null", () {
      myList.addLast(12);
      myList.addLast(99);
      myList.addLast(37);
      myList.clear();
      expect(myList.first, isNull);
    });

    test("first after clear of list should be null", () {
      myList.addFirst(12);
      myList.addFirst(99);
      myList.addFirst(37);
      myList.clear();
      expect(myList.first, isNull);
    });

    test("last after clear should be null", () {
      myList.addLast(12);
      myList.addLast(99);
      myList.addLast(37);
      myList.clear();
      expect(myList.last, isNull);
    });

    test("last after clear of list should be null", () {
      myList.addFirst(12);
      myList.addFirst(99);
      myList.addFirst(37);
      myList.clear();
      expect(myList.last, isNull);
    });

    test("first node after clear should reference to null in property next",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      myList.clear();

      expect(firstAddedNode.next, isNull);
    });

    test(
        "first node after clear of list should reference to null in property next",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      myList.clear();

      expect(thirdAddedNode.next, isNull);
    });

    test("second node after clear should reference to null in property next",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      myList.clear();

      expect(secondAddedNode.next, isNull);
    });

    test(
        "second node after clear of list should reference to null in property next",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      myList.clear();

      expect(secondAddedNode.next, isNull);
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(addedNode.value, equals(42));
      expect(addedNode.next, isNull);
    });

    test("addFirst should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<int> addedNode = myList.addFirst(42);

      expect(addedNode.value, equals(42));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list first should be addedNode", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(myList.first, equals(addedNode));
    });

    test(
        "After add first node into beginning of the list, first should be addedNode",
        () {
      final SinglyLinkedListNode<int> addedNode = myList.addFirst(42);

      expect(myList.first, equals(addedNode));
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(myList.last, equals(addedNode));
    });

    test("After add first node last should be addedNode", () {
      final SinglyLinkedListNode<int> addedNode = myList.addFirst(42);

      expect(myList.last, equals(addedNode));
    });

    test(
        "After add two nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After add two nodes into beginning of the list, first should references to first added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);

      expect(myList.first, equals(secondAddedNode));
    });

    test(
        "After add two nodes into list last should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(myList.last == secondAddedNode, isTrue);
    });

    test(
        "After add two nodes into beginning of the list, last should references to second added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);

      expect(myList.last == firstAddedNode, isTrue);
    });

    test(
        "After add two nodes into list next of first node should references to second added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add two nodes into beginning of the list, next of first node should references to second added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add two nodes into list next of second node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(secondAddedNode.next, isNull);
    });

    test(
        "After add two nodes into beginning of the list, next of second node should references to nothing",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);

      expect(firstAddedNode.next, isNull);
    });

    test(
        "After add three nodes into list first should references to first added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, first should references to first added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(myList.first, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into list next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(firstAddedNode.next, isNotNull);
      expect(firstAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(thirdAddedNode.next, isNotNull);
      expect(thirdAddedNode.next, equals(secondAddedNode));
    });

    test(
        "After add three nodes into list next of second node should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, next of second node should references to third added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(secondAddedNode.next, isNotNull);
      expect(secondAddedNode.next, equals(firstAddedNode));
    });

    test(
        "After add three nodes into list last should references to third added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(myList.last, equals(thirdAddedNode));
    });

    test(
        "After add three nodes into beginning of the list, last should references to first added node",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(myList.last, equals(firstAddedNode));
    });

    test(
        "After adding three nodes to the list, the added node must be at the beginning of the list",
        () {
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(myList.first, equals(firstAddedNode));
    });

    test(
        "After adding three nodes to the beginning of the list, the added node must be at the beginning of the list",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(myList.first, equals(thirdAddedNode));
    });

    test("Print all items of a list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondNode = myList.addLast(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdNode = myList.addLast(37);

      myList.printList();

      expect(myList, hasLength(3));
    });

    test("Print all items of a list, added from the beginning of the list", () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondNode = myList.addFirst(99);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> thirdNode = myList.addFirst(37);

      myList.printList();

      expect(myList, hasLength(3));
    });

    test(
        "After add three nodes into list next of 'third' node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

      expect(thirdAddedNode.next, isNull);
    });

    test(
        "After add three nodes into beginning of the list, next of 'third' node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addFirst(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addFirst(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addFirst(37);

      expect(thirdAddedNode.next, isNull);
    });

    test("For the newly created list, first should be null", () {
      expect(myList.first, isNull);
    });

    test("For the newly created list, last should be null", () {
      expect(myList.last, isNull);
    });
  });
}
