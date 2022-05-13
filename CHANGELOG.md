# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.9.12] - 2022-05-13
### Changed
- Updated AlCore dependency.

## [0.9.11] 2022-05-09
### Changed
- Update Sierra APIs to version 2021-11-18.
- Added check deposit feature.
- Transaction types review.

## [0.9.10] 2022-04-11
### Changed
- Reviewed transaction types.
- Bug fixes and several performance improvements.

## [0.9.9] - 2022-02-23
### Added
- Added closure, combine and async/await integration options.
### Changed
- Transaction types review.
- *Breaking Changes*
    - `OperationServiceFee` was moved to AlCore and renamed to `ServiceFeeRequest`.
    - `OperationServiceFeeTypeCalcType` was moved to AlCore and renamed to `CalcType`.
    - `OperationServiceFeeType` was moved to AlCore and renamed to `ServiceFeeType`.
    - `OperationServiceFeeValue` was moved to AlCore, renamed to `ServiceFeeValue` and refactored to an enum. `OperationServiceFeeValue(amount:percent:)` was refactored to `ServiceFeeValue.amount(_:)` and `ServiceFeeValue.percent(_:)`.
    - `BankAccountDetailsRequest` was moved to AlCore and refactored to an enum. `BankAccountDetailsRequest(ach:eft:swift:iban:clabe:)` was refactored to `BankAccountDetailsRequest.ach(routingNumber:accountNumber:)`, `BankAccountDetailsRequest.eft(transitNumber:institutionCode:accountNumber:)`, `BankAccountDetailsRequest.swift(bicCode:accountNumber:)`, `BankAccountDetailsRequest.iban(ibanNumber: String)` and `BankAccountDetailsRequest.clabe(bicCode:clabeNumber:)`.
    - `BankAccountDetails` was moved to AlCore.

## [0.9.7] - 2022-01-26
### Changed
- Updated AlCore dependency.

## [0.9.6] - 2022-01-21
### Added
- CLABE bank account are now supported for tokenization.

## [0.9.5] - 2022-01-14
### Changed
- Small code style and syntax revision.

## [0.9.4] - 2022-01-14
### Fixed
- Small bug fixes.

## [0.9.3] - 2021-12-20
### Added
- Funds movement (load and withdraw).
- Get account balance and demand deposit account details.
- Get user transaction(s).

## [0.9.2] - 2021-11-17
### Added
- Bank account tokenization through Plaid services.
- Get user account payment methods.
### Changed
- Updated iOS 15 compatibility.

## [0.9.1] - 2021-10-20
### Added
- Card management features (get and delete).
- Bank account tokenization and management.

## [0.9.0] - 2021-08-10
### Added
- Card debit feature (headless and as a UI drop-in component).
- Card tokenization UI.
- Headless interface to tokenize cards manually (without user interface).
