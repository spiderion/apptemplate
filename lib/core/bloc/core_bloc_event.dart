
abstract class BaseBlocEvent {}

class UserPasswordChangedEvent extends BaseBlocEvent {
  final String userPassword;

  UserPasswordChangedEvent(this.userPassword);
}

class UserConfirmPasswordChangedEvent extends BaseBlocEvent {
  final String userConfirmPassword;

  UserConfirmPasswordChangedEvent(this.userConfirmPassword);
}

class ContinueButtonClickEvent extends BaseBlocEvent {}

class EditButtonClickEvent extends BaseBlocEvent {}


class OkButtonClickEvent extends BaseBlocEvent {}

class OnPermissionProvidedEvent extends BaseBlocEvent {}
