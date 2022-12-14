# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2022-12-20
### Breaking Change
- API access is now by module (wortal_ads, wortal_analytics)
- Callback events are now prefixed with module (ADS_, ANALYTICS_)

### Added
- Context API
- In-App Purchase API
- Leaderboard API
- Player API
- Session API
- Example project

### Changed
- Extension now uses Wortal SDK Core

## [1.0.1] - 2022-10-04
### Added
- Support for ad blockers

### Fixed
- Possible error on Viber init
- Incorrectly scoped ad unit id variables

## [1.0.0] - 2022-09-28
### Added
- Initial version of extension
