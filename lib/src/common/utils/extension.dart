extension StringExtension on String {
  /// convert input string to string with capital letter of each word format
  /// i.e  this is a test => This Is a Test
  String get toCapitalizeFirstofEach {
    final strictLowerCaseList = ["a", "an"];
    return split(" ").map((str) {
      return strictLowerCaseList.contains(str)
          ? str.toLowerCase()
          : str.toSentence;
    }).join(" ");
  }

  /// convert input string to sentence format
  /// i.e this is test => This is test
  String get toSentence => length <= 1
      ? '$toLowerCase()'
      : '${this[0].toUpperCase()}${substring(1)}';
}

extension IndexedIterable<E> on Iterable<E> {
  /// returns map data with index
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
