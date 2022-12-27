import 'package:dart_class_application/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group("SinglyLinkedList<String>", () {
    test("Length of new instance should be zero", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      expect(myList.length, equals(0));
    });

    test("Length after addLast an item should be 1", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      myList.addLast("Some data");
      expect(myList.length, equals(1));
    });

    test("Length after addLast an item and clear should be 0", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      myList.addLast("Some data");
      myList.clear();
      expect(myList.length, equals(0));
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(addedNode.value, equals("Some data"));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list 'first' should be addedNode", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(myList.first == addedNode, isTrue);
    });

    test("After add first node into list 'last' should be addedNode", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> addedNode =
          myList.addLast("Some data");

      expect(myList.last == addedNode, isTrue);
    });

    test(
        "After add two nodes into list 'first' should references to first added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      expect(myList.first == firstAddedNode, isTrue,
          reason: "'first' should references to first added node");
    });

    test(
        "After add two nodes into list 'last' should references to second added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      expect(myList.last == secondAddedNode, isTrue,
          reason: "'last' should references to second added node");
    });

    test(
        "After add two nodes into list next of 'first' node should references to second added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      final SinglyLinkedListNode<String>? nextNode = firstAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == secondAddedNode, isTrue,
          reason:
              "next of 'first' node should references to second added node");
    });

    test(
        "After add two nodes into list next of 'second' node should references to nothing",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");

      final SinglyLinkedListNode<String>? nextNode = secondAddedNode.next;

      expect(nextNode, isNull);
      expect(nextNode == null, isTrue,
          reason: "next of 'second' node should references to nothing");
    });

    test(
        "After add three nodes into list 'first' should references to first added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(myList.first == firstAddedNode, isTrue,
          reason: "'first' should references to first added node");
    });

    test(
        "After add three nodes into list next of 'first' node should references to second added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      final SinglyLinkedListNode<String>? nextNode = firstAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == secondAddedNode, isTrue,
          reason:
              "next of 'first' node should references to second added node");
    });

    test(
        "After add three nodes into list next of 'second' node should references to third added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      final SinglyLinkedListNode<String>? nextNode = secondAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == thirdAddedNode, isTrue,
          reason:
              "next of 'second' node should references to third added node");
    });

    test(
        "After add three nodes into list 'last' should references to third added node",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      expect(myList.last == thirdAddedNode, isTrue,
          reason: "'last' should references to third added node");
    });

    test(
        "After add three nodes into list next of 'third' node should references to nothing",
        () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<String> firstAddedNode =
          myList.addLast("Hello");
      final SinglyLinkedListNode<String> secondAddedNode =
          myList.addLast("World");
      final SinglyLinkedListNode<String> thirdAddedNode = myList.addLast("Sun");

      final SinglyLinkedListNode<String>? nextNode = thirdAddedNode.next;

      expect(nextNode, isNull);
      expect(nextNode == null, isTrue,
          reason: "next of 'third' node should references to nothing");
    });

    test("For the newly created list, 'first' should be null", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      expect(myList.first, isNull);
    });

    test("For the newly created list, 'last' should be null", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();

      expect(myList.last, isNull);
    });
  });

  group("SinglyLinkedList<int>", () {
    test("Length of new instance should be zero", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      expect(myList.length, equals(0));
    });

    test("Length after addLast an item should be 1", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      myList.addLast(42);
      expect(myList.length, equals(1));
    });

    test("Length after addLast an item and clear should be 0", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      myList.addLast(42);
      myList.clear();
      expect(myList.length, equals(0));
    });

    test("addLast should return SinglyLinkedListNode with added value", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(addedNode.value, equals(42));
      expect(addedNode.next, isNull);
    });

    test("After add first node into list 'first' should be addedNode", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(myList.first == addedNode, isTrue);
    });

    test("After add first node into list 'last' should be addedNode", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      final SinglyLinkedListNode<int> addedNode = myList.addLast(42);

      expect(myList.last == addedNode, isTrue);
    });

    test(
        "After add two nodes into list 'first' should references to first added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(37);

      expect(myList.first == firstAddedNode, isTrue,
          reason: "'first' should references to first added node");
    });

    test(
        "After add two nodes into list 'last' should references to second added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(37);

      expect(myList.last == secondAddedNode, isTrue,
          reason: "'last' should references to second added node");
    });

    test(
        "After add two nodes into list next of 'first' node should references to second added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(37);

      final SinglyLinkedListNode<int>? nextNode = firstAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == secondAddedNode, isTrue,
          reason:
              "next of 'first' node should references to second added node");
    });

    test(
        "After add two nodes into list next of 'second' node should references to nothing",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode =
          myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode =
          myList.addLast(37);

      final SinglyLinkedListNode<int>? nextNode = secondAddedNode.next;

      expect(nextNode, isNull);
      expect(nextNode == null, isTrue,
          reason: "next of 'second' node should references to nothing");
    });

    test(
        "After add three nodes into list 'first' should references to first added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      final SinglyLinkedListNode<int> firstAddedNode =
          myList.addLast(12);
      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> secondAddedNode =
          myList.addLast(37);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(99);

      expect(myList.first == firstAddedNode, isTrue,
          reason: "'first' should references to first added node");
    });

    test(
        "After add three nodes into list next of 'first' node should references to second added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode =
          myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode =
          myList.addLast(37);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(99);

      final SinglyLinkedListNode<int>? nextNode = firstAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == secondAddedNode, isTrue,
          reason:
              "next of 'first' node should references to second added node");
    });

    test(
        "After add three nodes into list next of 'second' node should references to third added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode =
          myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode =
          myList.addLast(37);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(99);

      final SinglyLinkedListNode<int>? nextNode = secondAddedNode.next;

      expect(nextNode, isNotNull);
      expect(nextNode == thirdAddedNode, isTrue,
          reason:
              "next of 'second' node should references to third added node");
    });

    test(
        "After add three nodes into list 'last' should references to third added node",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode = myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode = myList.addLast(37);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(99);

      expect(myList.last == thirdAddedNode, isTrue,
          reason: "'last' should references to third added node");
    });

    test(
        "After add three nodes into list next of 'third' node should references to nothing",
        () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      // ignore: unused_local_variable
      final SinglyLinkedListNode<int> firstAddedNode =
          myList.addLast(12);
      final SinglyLinkedListNode<int> secondAddedNode =
          myList.addLast(37);
      final SinglyLinkedListNode<int> thirdAddedNode = myList.addLast(99);

      final SinglyLinkedListNode<int>? nextNode = thirdAddedNode.next;

      expect(nextNode, isNull);
      expect(nextNode == null, isTrue,
          reason: "next of 'third' node should references to nothing");
    });

    test("For the newly created list, 'first' should be null", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      expect(myList.first, isNull);
    });

    test("For the newly created list, 'last' should be null", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();

      expect(myList.last, isNull);
    });
  });
}
