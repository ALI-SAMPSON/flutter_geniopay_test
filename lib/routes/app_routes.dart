// ignore_for_file: constant_identifier_names

part of app_pages;

abstract class Routes {
  Routes._();

  static const REGISTRATION_PAGE = _Paths.REGISTRATION_PAGE;
  static const SUBSCRIPTION_PAGE = _Paths.SUBSCRIPTION_PAGE;
  static const TRANSFER_PAGE = _Paths.TRANSFER_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const PROOF_IDENTITY_PAGE = _Paths.PROOF_IDENTITY_PAGE;
}

abstract class _Paths {
  static const REGISTRATION_PAGE = '/registration-page';
  static const SUBSCRIPTION_PAGE = '/subscription-page';
  static const TRANSFER_PAGE = '/transfer-page';
  static const HOME_PAGE = '/home-page';
  static const PROOF_IDENTITY_PAGE = '/proof-identity-page';
}