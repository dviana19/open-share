# Open Share

[![Ruby Version](https://img.shields.io/badge/ruby-3.4.2-red.svg)](https://www.ruby-lang.org/)
[![Rails Version](https://img.shields.io/badge/rails-7.1.3-red.svg)](https://rubyonrails.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/your-username/open-share/pulls)

Open Share is an open-source application designed for secure password sharing. It provides a simple and secure way to share sensitive information with others while maintaining control over access and visibility.

## About

This app provides a quick and secure way to share passwords, similar to sending a self-destructing message. It's designed for simplicity, security, and peace of mind.

## Features

1. **Instant Encryption**: Passwords are immediately encrypted upon entry.
2. **Unique URL Generation**: A special URL containing the encrypted password and a unique secret key is created.
3. **Expiration Setting**: Users can set an expiration time for added security.
4. **No Storage Policy**: Passwords are never stored on our servers, existing only within the generated URL.

## Tech Stack

- Ruby on Rails 8
- SQLite
- Turbo JS
- Stimulus.js for JavaScript interactions

## Prerequisites

- Ruby 3.4.2 or higher
- SQLite

## Getting Started
1. Clone the repository
```bash
  # Example commands
  git clone https://github.com/dviana19/open-share.git
  cd open-share
```
2. Build the image:
```bash
  docker compose build
```
3. Start the container:
```bash
  docker compose up
```
4. Visit `http://localhost:3000` in your browser

## Usage

[Provide basic usage instructions or link to more detailed documentation]

1. Navigate to the app's URL
2. Enter the password you want to share
3. Set an expiration time
4. Click on "Generate Link"
5. Share the generated link with your intended recipient

## Contributing

We welcome contributions from the community! Please read our [Contributing Guidelines](CONTRIBUTING.md) for details on how to contribute to this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Security Considerations

- The link should be shared through a secure channel
- Recipients should access the link promptly before expiration
- For maximum security, use the app over HTTPS

## Deployment instructions
```bash
# Example commands
kamal deploy
```

## How to run the test suite
```bash
# Example commands
rails test
```

### Code Style

This project follows the Ruby Style Guide. To check your code:

```bash
bundle exec rubocop
```

---

Experience the future of secure password sharing – fast, simple, and completely traceless.
