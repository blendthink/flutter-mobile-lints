[![Pub Version](https://badgen.net/pub/v/blendthink_lints)](https://pub.dev/packages/blendthink_lints/)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/blendthink_lints)](https://pub.dev/packages/blendthink_lints/)
[![Pub popularity](https://badgen.net/pub/popularity/blendthink_lints)](https://pub.dev/packages/blendthink_lints/score)

# blendthink_lints

This package contains a recommended by blendthink set of lints for Flutter mobile apps to encourage good coding practices.

This package is built on top of Flutter's `flutter.yaml` set of lints from [package:flutter_lints](https://pub.dev/packages/flutter_lints).

## Usage

Add this package to your dev_dependencies in `pubspec.yaml`:

```yaml
dev_dependencies:
  blendthink_lints: any
```

Add the relevant line to the top of your `analysis_options.yaml` file.

```yaml
include: package:blendthink_lints/recommended.yaml
```
