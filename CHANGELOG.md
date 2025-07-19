# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.2] - 2025-07-19

### Added
- macOS Sonoma (Apple Silicon) testing support in CI/CD pipeline
- Enhanced platform compatibility testing


### Changed
- Updated dependency versions for improved stability

## [1.1.1] - 2025-06-28

### Added
- Comprehensive development tooling and project configuration
- Enhanced CI/CD pipeline with updated OTP versions
- Elixir 1.19 support in CI
- macOS testing workflow for cross-platform validation

### Changed
- Updated dependency versions for improved stability and security
- Enhanced documentation with comprehensive examples
- Improved code quality checks and formatting

### Fixed
- Applied mix format migration for consistent code formatting

## [1.1.0] - 2025-06-01

### Added
- Unique node name generation with customizable prefixes
- Utility module for node name generation

### Features
- `NodeActivator.Util.generate_node_name/1` - Utility for generating unique node names
- Automatic hostname resolution
- Random string generation for unique node identification
- Cross-platform compatibility (Linux, Windows, macOS)

## [1.0.0] - 2025-05-27

### Added
- Initial release of NodeActivator module
- Core functionality for distributed node activation
- Automatic EPMD (Erlang Port Mapper Daemon) management
- Idempotent operation support
- Comprehensive error handling and logging
- Full test coverage
- Documentation with examples and usage patterns

### Features
- `NodeActivator.run/1` - Main function for node activation
- Automatic hostname resolution
- Random string generation for unique node identification
- Cross-platform compatibility (Linux, Windows, macOS)

### Dependencies
- `epmd_up` - For EPMD management
- `get_host` - For hostname resolution
- `nstandard` - For development tooling

### Documentation
- Comprehensive module documentation
- Usage examples and patterns
- Installation instructions
- Platform compatibility matrix

### CI/CD
- GitHub Actions workflow for automated testing
- Multi-platform testing (Ubuntu, Windows, macOS)
- Multiple Elixir and OTP version support
- Code quality checks (Credo, Dialyzer, SpellWeaver)

## License

This project is licensed under the Apache License, Version 2.0 - see the [LICENSE.md](LICENSE.md) file for details.
