# Base64 Encoder/Decoder API - PHP Package

Base64 Encoder/Decoder encodes plain text into Base64 and decodes encoded strings back to readable characters. Submit any string with an encode or decode action to receive the converted output, the original input, and character length.

## Installation

Install via Composer:

```bash
composer require apiverve/base64
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Base64\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'Hello World',
    'action' => 'encode'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Base64\Client;
use APIVerve\Base64\Exceptions\APIException;
use APIVerve\Base64\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Hello World', 'action' => 'encode']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/base64?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/base64?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/base64?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
