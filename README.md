
# Product Management App

This is a simple Flutter project for managing products. The app allows users to log in, add products, view a list of products, search products by name, and delete products. The product details are saved using shared preferences.

## Features

- **Login Page**: Users can log in using email and password.
- **Home Page**: View all added products, search for products by name, and delete products.
- **Add Product Page**: Add new products with a name and price. No duplicate products are allowed.
- **Shared Preferences**: Products are saved locally using shared preferences.

## Folder Structure

```
product_app/
└── lib/
    ├── models/
    │   └── product.dart           # Product model
    ├── pages/
    │   ├── login_page.dart        # Login screen UI and logic
    │   ├── home_page.dart         # Home screen UI and product list
    │   └── add_product_page.dart  # UI for adding a new product
    └── services/
        ├── api_service.dart       # Handles login API calls
        └── product_service.dart   # Manages product data with shared preferences
```

## How to Run

1. **Clone the project** or download the project folder.
2. Open the project in **VS Code**.
3. Run the following commands to fetch the required packages:
   ```bash
   flutter pub get
   ```
4. Launch an Android/iOS emulator or connect your device.
5. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- `http`: For making HTTP requests (used for login).
- `shared_preferences`: To store products locally on the device.

## License

This project is open-source and can be modified as needed.
