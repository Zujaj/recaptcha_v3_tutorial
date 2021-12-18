/// A Configuration Class that holds the `Google reCAPTCHA v3` API Confidential Information.
class Config {
  /// Prevents from object instantiation.
  Config._();

  /// Holds the 'Site Key' for the `Google reCAPTCHA v3` API .
  static const String siteKey = 'recaptcha-site-key';

  /// Holds the 'Secret Key' for the `Google reCAPTCHA v3` API .
  static const String secretKey = 'recaptcha-secret-key';

  /// Holds the 'Verfication URL' for the `Google reCAPTCHA v3` API .
  static final verificationURL =
      Uri.parse('https://www.google.com/recaptcha/api/siteverify');
}
