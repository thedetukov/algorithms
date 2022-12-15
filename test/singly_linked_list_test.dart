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
