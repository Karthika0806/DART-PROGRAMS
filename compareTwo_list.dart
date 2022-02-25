void main() {
  List<int> value1 = [1, 2, 3, 4, 5, 6, 7, 8];
  List<int> value2 = [16, 12, 19, 12, 14, 16];
  if (value1.any((items) => value2.contains(items))) {
    print('the list contains common element');
  } else {
    print('there is no common elements available in the list');
  }
}
