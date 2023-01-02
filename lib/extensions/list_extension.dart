extension ListExtension on List {
  bool isLastIndex(int index) => indexOf(last) == index;

  bool isFirtIndex(int index) => indexOf(first) == index;
}
