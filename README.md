# alium_sdk

A wrapper around Alium's Android SDK.

## Usage

### Configure the SDK with Config()

import the alium package.

```dart
import 'package:alium_sdk/alium.dart';
```

Call configure method.

```dart
void main() {
  runApp(const MyApp());
  Alium.config("your_project_url");
}
```

This method should be the first method called when initializing the Alium SDK. It sets the project key or URL and must be invoked as soon as possible in your application's lifecycle.

### Trigger Surveys

Use Alium.trigger() with the screen name to display surveys.

```dart
 Alium.trigger("your_screen_name", {});
```

### Passing custom parameters to survey

```dart
 Alium.trigger("your_screen_name", {"key": "value"});
```
