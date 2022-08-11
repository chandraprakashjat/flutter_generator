import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'util/sync_async_generator.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sync/Async Generator ')),
      floatingActionButton: FloatingActionButton(
        onPressed: asyncGeneratorM,
        child: const Icon(Icons.add),
      ),
    );
  }

  void generateValue() {
    Iterable<int> it = syncGenderator(1, 5);

    for (var i in it) {
      print('Retrun value is $i');
    }
  }

  void asyncGeneratorM() {
    asyncGenerator2(1, 20).listen((event) {
      print('listen value $event');
    });
  }
}
