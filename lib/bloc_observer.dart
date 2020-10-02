import 'package:bloc/bloc.dart';

import 'core/get_logger.dart';

final log = getLogger('TheMoviezObserver');

class TheMoviezObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    log.d('${bloc.runtimeType} $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log.d('${bloc.runtimeType} $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    if (cubit is! Bloc) {
      log.d('${cubit.runtimeType} $change');
    }
    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    log.d('${cubit.runtimeType} $error $stackTrace');
    super.onError(cubit, error, stackTrace);
  }
}
