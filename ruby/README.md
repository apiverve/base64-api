# Base64 Encoder/Decoder API - Ruby Gem

Base64 Encoder/Decoder encodes plain text into Base64 and decodes encoded strings back to readable characters. Submit any string with an encode or decode action to receive the converted output, the original input, and character length.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_base64'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_base64
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_base64'

# Initialize the client
client = APIVerve::Base64::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "Hello World",
  action: "encode"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Hello World", action: "encode" })
  puts response["data"]
rescue APIVerve::Base64::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Base64::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Base64::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/base64?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/base64?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/base64?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
