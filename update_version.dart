import 'dart:io';

void main() {
  final version = Platform.environment['VERSION'];
  final pubspec = File('pubspec.yaml');
  final lines = pubspec.readAsLinesSync();

  for (var i = 0; i < lines.length; i++) {
    if (lines[i].startsWith('version: ')) {
      lines[i] = 'version: $version';
      break;
    }
  }

  pubspec.writeAsStringSync(lines.join('\n'));
}
