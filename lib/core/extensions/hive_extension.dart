import 'package:hive/hive.dart';

extension ReaderExtension on BinaryReader {
  String? readNullableString() {
    final String val = readString();
    return val.isEmpty ? null : val;
  }

  List<R> readListWithAdapter<R, T extends TypeAdapter<R>>(T adapter) {
    final List<R> res = [];
    final len = readInt();
    for(int i = 0; i < len; ++i) {
      res.add(adapter.read(this));
    }
    return res;
  }
}

extension WriterExtension on BinaryWriter {
  void writeNullableString(String? obj) {
    writeString(obj ?? '');
  }
  void writeListWithAdapter<R, T extends TypeAdapter<R>>(T adapter, List<R> obj) {
    writeInt(obj.length);
    for (final value in obj) {
      adapter.write(this, value);
    }
  }
}
