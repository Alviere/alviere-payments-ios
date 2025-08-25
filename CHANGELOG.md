# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [0.9.29] 2025-07-XX

### Added
- Added more 3DS preferences to payment method model.
- Added transactions list method query parameters to allow payment method and issued card filtering.
- Added support for cash loading barcode generation and store locations listing.

### Changed
- Improve support for cash loading details on transactions and receipt details.


## [0.9.28] 2025-05-XX

### Added
- Added method to update payment method 3DS preferences.
- Added enhanced transactions list method.
- [Breaking] Added authentication token on get camera token request method.

### Changed
- Improved transaction receipt support.
- Fine-tuned camera support.


## [0.9.27] 2025-03-18

### Added
- Added get wallet statement method.
- Added rejected reason to checks.
- Added bank account type to ACH payment methods.
- Added 3DS support to card payment methods.
- Added missing fields to wallet and transaction details.
- Updated camera with customization options regarding preview time and manual capture confirmation.


## [0.9.26] 2025-01-27

### Changed
- Refactored SDK core structure to adapt to async calls.
- Updated camera integration to use SwiftUI.


## [0.9.25] 2024-03-21

### Updated
- Changed minimum supported version to iOS 13.0.
- Removed transaction status from get receipt method.
- Updated camera dependency.


## [0.9.24] 2024-01-31

### Added
- Added rejected reasons to check deposit.
- Added metadata to tokenized payment methods.
- Added card processing data to transactions.

### Changed
- Updated transfer funds method.


## [0.9.23] 2023-06-27

### Changed
- Alcore integration update.


## [0.9.21] 2023-03-31

### Added
- Support for Plaid bank account activation.
- New payment method status reasons.

### Changed
- Updated receipt model to cash-pickup transactions.


## [0.9.20] 2023-01-19

### Added
- Added support to status CANCELED on check deposit.
- Added support for prepaid non-reloadable wallet type.


## [0.9.19] 2022-10-31

### Added
- Added pending funds field on wallet funds.


## [0.9.18] 2022-10-11

### Changed
- Added get a receipt and send funds methods.
- Implemented additional query parameters on the list wallets method.
- Added metadata field on load and withdraw methods.
- Added walletUuid field to get method response.


## [0.9.17] 2022-08-11

### Changed
- Fixed bugs and added several performance improvements.


## [0.9.16] - 2022-07-18

### Added
- Free check capture method on check deposits.
- Cancel transaction and list child transactions features.

### Changed
- Fixed bugs and added several performance improvements.


## [0.9.14] - 2022-06-08

### Changed
- Check deposit UI refinement.


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
- Fixed bugs and added several performance improvements.


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
