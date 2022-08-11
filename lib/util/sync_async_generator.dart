Iterable<int> syncGenderator1(int start, int end) sync* {
  for (int i = start; i <= end; i++) {
    yield i;
  }
}

Iterable<int> syncGenderator(int start, int end) sync* {
  if (start < end) {
    yield 5;

    yield* syncGenderator(start + 1, end);
  }
}

Stream<int> asyncGenerator(int start, int end) async* {
  for (int i = start; i <= end; i++) {
    yield await Future.delayed(const Duration(seconds: 2), () => i);
  }
}

Stream<int> asyncGenerator2(int start, int end) async* {
  if (start < end) {
    yield start;

    yield* asyncGenerator(start + 1, end);
  }
}
