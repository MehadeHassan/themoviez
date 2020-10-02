import 'package:logger/logger.dart';

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}

class SimpleLogPrinter extends LogPrinter {
  SimpleLogPrinter(this.className);
  final String className;

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final vLine = PrettyPrinter.verticalLine;
    final message = event.message;

    return [
      color('$emoji $className  $vLine  $message'),
    ];
  }
}
