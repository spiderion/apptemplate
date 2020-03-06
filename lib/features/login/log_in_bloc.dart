import 'package:apptemplate/core/bloc/base_bloc.dart';
import 'package:apptemplate/core/bloc/core_bloc_event.dart';
import 'package:apptemplate/core/states/primary/navigation_state.dart';
import 'package:apptemplate/features/login/login_event.dart';

class LogInBloc extends BaseBloc {
  LogInBloc();

  @override
  void onUiDataChange(BaseBlocEvent event) {
    if(event is LogInClickEvent){
      sinkState.add(NavigateToRootPageWithReplacementState());
    }
  }
}
