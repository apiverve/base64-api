# Base64 Encoder/Decoder API - Dart/Flutter Client

Base64 Encoder/Decoder is a simple tool for encoding and decoding Base64 strings. It supports both encoding text to Base64 and decoding Base64 back to text.

[![pub package](https://img.shields.io/pub/v/apiverve_base64.svg)](https://pub.dev/packages/apiverve_base64)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Base64 Encoder/Decoder API](https://apiverve.com/marketplace/base64?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_base64: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_base64/apiverve_base64.dart';

void main() async {
  final client = Base64Client('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Hello World',
      'action': 'encode'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "action": "encode",
    "original": "Hello World",
    "encoded": "SGVsbG8gV29ybGQ=",
    "length": 16
  }
}
```

## API Reference

- **API Home:** [Base64 Encoder/Decoder API](https://apiverve.com/marketplace/base64?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/base64](https://docs.apiverve.com/ref/base64?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
