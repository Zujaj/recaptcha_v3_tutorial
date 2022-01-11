# recaptcha_v3_tutorial

![Depiction of Bot Attack on a Web Form.](https://miro.medium.com/max/2708/1*i_asQCziUxW3PaBFbAH4Kw.jpeg)
As a **web developer,** do you want to:

🛡️ Secure the website traffic from spam data?

🧹 Detect bots injecting malicious code in web forms?

📈 Integrate a ready-made solution for risk analysis?

This project is a demo tutorial through which you can learn the [implementation of Google reCAPTCHA v3 in Flutter Web](https://levelup.gitconnected.com/how-to-implement-google-recaptcha-v3-in-flutter-web-38000139bbc0).

## Project Structure

```dart
recaptcha_v3_tutorial
├─ lib
│  ├─ config 
│  │  └─ config.dart // Holds the confidential information.
│  ├─ model
│  │  └─ recaptcha_response.dart // Holds the Google reCAPTCHA v3 HTTP Response.
│  ├─ page
│  │  └─ demo_page.dart // A Demo Page with a [FlutterLogo],a [NameField] & an [ElevatedButton].
│  ├─ service
│  │  └─ recaptcha_service.dart // Holds the Google reCAPTCHA v3 Operations.
│  ├─ widget
│  │   ├─ info_dialog.dart // Shows an [AlertDialog] to the user.  
│  │   └─ name_field.dart // Shows a custom [TextFormField] to the user.  
│  ├─ main.dart
├─  web
│  ├─ index.html
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
```

## Getting Started

1. Register your site via the [Google reCAPTCHA](https://www.google.com/recaptcha/about).

    ![Illustration of Google reCAPTCHA v3 Site Registration Form](https://miro.medium.com/max/652/1*7OhtC2p23W5dQ5S6NPihdg.png)

2. Copy the reCAPTCHA v3 `site` and `secret` keys.

    ![Illustration of Google reCAPTCHA v3 Site and Secret Keys.](https://miro.medium.com/max/700/1*hZOIPNiFfIZNzjWZWVPTCA.png)

3. Navigate to the `web` folder, open the `index.html` file and paste the below script inside the `<body>` tag.

    ```html
    <body>
     <script src="https://www.google.com/recaptcha/api.js?render=recaptcha-site-key"></script>
     <!-- This script installs service_worker.js to provide PWA functionality to
       application. For more information, see:
       https://developers.google.com/web/fundamentals/primers/service-workers -->
    </body>
    ```

4. In the `config.dart` file, paste the reCAPTCHA `site` & `secret` key.

    ```dart
    /// Holds the 'Site Key' for the `Google reCAPTCHA v3` API.
    static const String siteKey = 'recaptcha-site-key';

    /// Holds the 'Secret Key' for the `Google reCAPTCHA v3` API.
    static const String secretKey = 'recaptcha-secret-key';
    ```

5. Congratulations! You're done, run the app.

    ![Demo of the Google reCAPTCHA v3 in Flutter Web](https://miro.medium.com/max/700/1*GZE7rGDgL8pIYDOkZHcruw.gif)
  
## TOOLS & LANGUAGE

- [Microsoft Visual Studio Code](https://code.visualstudio.com/download)
- [Flutter](https://flutter.dev/)
