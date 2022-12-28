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

    test("Length after clear should be 0", () {
      myList.addLast("Some data 1");
      myList.addLast("Some data 2");
      myList.addLast("Some data 3");
      myList.clear();
      expect(myList.length, equals(0));
    });

    test("first after clear should be null", () {
      myList.addLast("Some data 1");
      myList.addLast("Some data 2");
      myList.addLast("Some data 3");
      myList.clear();
      expect(myList.first, isNull);
    });

    test("last after clear should be null", () {
      myList.addLast("Some data 1");
      myList.addLast("Some data 2");
      myList.addLast("Some data 3");
      myList.clear();
      expect(myList.last, isNull);
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(addedNode.value, equals("Some data"));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list first should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(myList.first == addedNode, isTrue);
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

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
        "After add three nodes into list next of first node should references to second added node",
        () {
      // ignore: unused_local_variable
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

    test("Length after clear should be 0", () {
      myList.addLast(12);
      myList.addLast(99);
      myList.addLast(37);
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

    test("last after clear should be null", () {
      myList.addLast(12);
      myList.addLast(99);
      myList.addLast(37);
      myList.clear();
      expect(myList.last, isNull);
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(addedNode.value, equals(42));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list first should be addedNode", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(myList.first, equals(addedNode));
    });

    test("After add first node into list last should be addedNode", () {
      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

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
        "After add two nodes into list last should references to second added node",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(myList.last == secondAddedNode, isTrue);
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
        "After add two nodes into list next of second node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);

      expect(secondAddedNode.next, isNull);
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
        "After add three nodes into list next of 'third' node should references to nothing",
        () {
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(99);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(37);

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
