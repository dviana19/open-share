# Contributing to Open Share

Thank you for your interest in contributing to Open Share! This document provides guidelines and instructions for contributing to the project.

## Code of Conduct

By participating in this project, you agree to abide by our Code of Conduct. Please be respectful and considerate of others.

## How to Contribute

1. **Fork the Repository**
   - Click the "Fork" button on the GitHub repository page
   - Clone your forked repository to your local machine

2. **Create a Branch**
   - Create a new branch for your feature or bugfix
   - Use a descriptive name for your branch (e.g., `feature/add-new-feature` or `fix/bug-description`)

3. **Make Changes**
   - Make your changes following the project's coding standards
   - Write clear commit messages
   - Test your changes thoroughly

4. **Submit a Pull Request**
   - Push your changes to your forked repository
   - Create a pull request to the main repository
   - Provide a clear description of your changes

## Development Setup

1. **Prerequisites**
   - Ruby 3.4.2 or higher
   - SQLite
   - Docker (optional, for containerized development)

2. **Installation**
   ```bash
   git clone https://github.com/your-username/open-share.git
   cd open-share
   bundle install
   ```

3. **Running Tests**
   ```bash
   rails test
   ```

4. **Code Style**
   - Follow the Ruby Style Guide
   - Run Rubocop before submitting changes:
     ```bash
     bundle exec rubocop
     ```

## Pull Request Process

1. Ensure your code follows the project's style guidelines
2. Update the README.md if necessary
3. Add tests for new features or bug fixes
4. Ensure all tests pass
5. Update documentation as needed
6. The PR will be reviewed by maintainers

## Reporting Issues

When reporting issues, please include:
- A clear description of the problem
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Any relevant error messages or logs

## Questions?

Feel free to open an issue if you have any questions about contributing to the project.
