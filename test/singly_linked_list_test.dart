import 'package:dart_class_application/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group("SinglyLinkedList<String>", () {
    test("Length of new instance should be zero", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      expect(myList.length, equals(0));
    });

    test("Length after add an item should be 1", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      myList.addLast("Some data");
      expect(myList.length, equals(1));
    });

    test("Length after add an item and clear should be 0", () {
      final SinglyLinkedList<String> myList = SinglyLinkedList<String>();
      myList.addLast("Some data");
      myList.clear();
      expect(myList.length, equals(0));
    });
  });

  group("SinglyLinkedList<int>", () {
    test("Length of new instance should be zero", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      expect(myList.length, equals(0));
    });

    test("Length after add an item should be 1", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      myList.addLast(42);
      expect(myList.length, equals(1));
    });

    test("Length after add an item and clear should be 0", () {
      final SinglyLinkedList<int> myList = SinglyLinkedList<int>();
      myList.addLast(42);
      myList.clear();
      expect(myList.length, equals(0));
    });
  });
}
