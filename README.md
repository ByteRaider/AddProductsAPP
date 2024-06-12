# AddProductsAPP extends form_validation_productsapp_example repository

A simple and customizable login, registration screens, the app allows you to add and manage your products on the go.

## Features

- Login Screen
- Registration Form
- Field Validation
- Add new Product Screen
- Customizable UI

## Getting Started

These instructions will help you set up and run the project on your local machine for development and testing purposes.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (Flutter 3.22.1 channel stable or higher)
- [Dart](https://dart.dev/get-dart) (Dart SDK version: 3.4.1 (stable) or higher)

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/ByteRaider/AddProductsAPP.git
   ```

2. **Navigate to the project directory:**

   ```sh
   cd ByteRaider/AddProductsAPP
   ```

3. **Install the dependencies:**

   ```sh
   flutter pub get
   ```

4. **Run the application:**

   ```sh
   flutter run
   ```

## Usage

### Login Screen

- Enter your email and password to log in.
- If the credentials are incorrect, an error message will be displayed.

### Registration Form

- Fill in the required fields: Username, Email, and Password.
- The form includes validation for email format and password strength.
- Submit the form to create a new account.

## Project Structure

- `lib/`
  - `main.dart` - Entry point of the application.
  - `screens/`
    - `login_screen.dart` - Login screen UI and logic.
    - `home_screen.dart` - Registration screen UI and logic.
    - etc..
  - `widgets/`
    -`widgets.dart` - Centralized Widgets
    - etc..
