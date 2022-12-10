// ignore_for_file: unnecessary_this
class SinglyLinkedList<T> {
  int get length => this._length;
  int _length = 0;

  void add(T) {
    this._length = this._length + 1;
    SinglyLinkedList myList = SinglyLinkedList();
  }
}

