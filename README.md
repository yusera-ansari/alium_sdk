# alium_sdk

A wrapper around Alium's Android SDK.

## Usage

### Configure the SDK with Configure()

import the alium package.

```dart
import 'package:alium_sdk/alium_sdk.dart';
```

Call configure method.

```dart
void main() {
  runApp(const MyApp());
  AliumSdk.configure("your_project_url");
}
```

This method should be the first method called when initializing the Alium SDK. It sets the project key or URL and must be invoked as soon as possible in your application's lifecycle.

### Trigger Surveys

Use AliumSdk.loadAliumSurvey() with the screen name to display surveys.

```dart
 AliumSdk.loadAliumSurvey("your_screen_name", {});
```

### Passing custom parameters to survey

```dart
 AliumSdk.loadAliumSurvey("your_screen_name", {"key": "value"});
```
