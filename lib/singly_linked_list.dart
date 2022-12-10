// ignore_for_file: unnecessary_this

class SinglyLinkedList<T> {
  // ignore: recursive_getters
  int get length => _length;
  int _length = 0;

  void add(T) {
    this._length = this._length + 1;
  }
}
