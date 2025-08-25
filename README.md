# Pix Hunt - Image Search App

Pix Hunt is a Flutter-based mobile application that allows users to search for images online, view them in a grid layout, inspect details in full-screen mode, download images to their device gallery, and toggle between light and dark themes with persistent settings using SharedPreferences.

## Features

- **Image Search**: Search for images online using an API (e.g., Pexels API).
- **Grid View Results**: Displays search results in a responsive grid layout, adapting to different screen sizes.
- **Full-Screen View**: Tap an image to view it in full-screen with zoom and swipe navigation.
- **Image Info**: View metadata like photographer name, URL, ID, and description in a bottom sheet.
- **Image Download**: Save images directly to the device gallery using the `gallery_saver_plus` package.
- **Theme Mode**: Switch between light, dark, and system themes, with preferences saved using SharedPreferences.

## Screenshots

*(Add screenshots of the app here for visual reference, e.g., search screen, grid view, full-screen view, and settings screen.)*

## Project Structure

```
pix_hunt/
├── lib/
│   ├── main.dart
│   ├── bindings/
│   ├── data/
│   │   ├── appExceptions.dart
│   │   ├── network/
│   │   │   ├── baseApiServices.dart
│   │   │   ├── networkApiServices.dart
│   │   ├── response/
│   │   │   ├── status.dart
│   ├── model/
│   │   ├── photosModel.dart
│   ├── permissions/
│   ├── repository/
│   │   ├── searchRepository.dart
│   │   ├── settingsRepository.dart
│   ├── res/
│   │   ├── assets/
│   │   │   ├── icons.dart
│   │   ├── colors/
│   │   │   ├── appColors.dart
│   │   ├── components/
│   │   │   ├── buttonComponent.dart
│   │   │   ├── richTextComponent.dart
│   │   │   ├── textFormFieldComponent.dart
│   │   ├── localization/
│   │   │   ├── localization.dart
│   │   ├── routes/
│   │   │   ├── routeNames.dart
│   │   │   ├── routes.dart
│   │   ├── theme/
│   │   │   ├── theme.dart
│   │   ├── urls/
│   │   │   ├── urls.dart
│   ├── utils/
│   │   ├── Utils.dart
│   ├── view/
│   │   ├── bottomNav.dart
│   │   ├── imageDetailScreen.dart
│   │   ├── searchScreen.dart
│   │   ├── settings.dart
│   │   ├── splashScreen.dart
│   ├── view_model/
│   │   ├── bottomNavVM.dart
│   │   ├── searchVM.dart
│   │   ├── settingsVM.dart
│   │   ├── splashVM.dart
├── pubspec.yaml
```

## Installation

### Prerequisites
- Flutter SDK (version 3.0.0 or higher)
- Dart SDK
- Android Studio or VS Code with Flutter plugin
- An API key for the image search service (e.g., Pexels API)

### Steps
1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd pix_hunt
   ```

2. **Install Dependencies**:
   Run the following command to install required packages:
   ```bash
   flutter pub get
   ```

3. **Configure API Key**:
    - Replace the placeholder API key in `lib/res/urls/urls.dart` with your actual API key for the image search service (e.g., Pexels API).
    - Example:
      ```dart
      class AppUrls {
        static const String searchPhotosApi = 'https://api.pexels.com/v1/search?query=';
      }
      ```

4. **Add Permissions**:
    - For Android, ensure the following permissions are added in `android/app/src/main/AndroidManifest.xml`:
      ```xml
      <uses-permission android:name="android.permission.INTERNET" />
      <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
      ```
    - For iOS, add the following keys in `ios/Runner/Info.plist`:
      ```xml
      <key>NSPhotoLibraryUsageDescription</key>
      <string>Allow access to save images to your gallery</string>
      <key>NSPhotoLibraryAddUsageDescription</key>
      <string>Allow access to save images to your gallery</string>
      ```

5. **Run the App**:
   Connect a device or emulator and run:
   ```bash
   flutter run
   ```

## Dependencies
Key packages used in the project:
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
  flutter_screenutil: ^5.9.0
  photo_view: ^0.14.0
  gallery_saver_plus: ^3.0.0
  shared_preferences: ^2.2.3
  dio: ^5.4.0
  flutter_animate: ^4.5.0
```

Run `flutter pub get` after adding these to `pubspec.yaml`.

## Usage

1. **Search Images**:
    - On the `SearchScreen`, enter a query in the search bar and press the search icon or submit.
    - Results are displayed in a responsive grid view, adjusting based on screen size.

2. **View Image Details**:
    - Tap an image in the grid to open `ImageDetailScreen` in full-screen mode.
    - Swipe left/right to navigate between images.
    - Tap the screen to toggle visibility of action buttons (download and info).

3. **Image Info**:
    - Click the info icon to open a bottom sheet displaying photographer details and image description.

4. **Download Images**:
    - Click the download icon to save the image to the device gallery (saved in the "Gallery App" album).

5. **Toggle Theme**:
    - Navigate to the settings screen via the bottom navigation bar.
    - Switch between light, dark, or system theme modes. The choice is saved using SharedPreferences.

## Code Highlights

- **SearchRepository** (`lib/repository/searchRepository.dart`): Handles API calls to fetch images using `NetworkApiServices` and the Pexels API.
- **SettingsRepository** (`lib/repository/settingsRepository.dart`): Manages theme mode persistence with SharedPreferences.
- **SearchViewModel** (`lib/view_model/searchVM.dart`): Controls search logic, image downloading, and UI state management using GetX.
- **ImageDetailScreen** (`lib/view/imageDetailScreen.dart`): Uses `photo_view` for zoomable full-screen images and a bottom sheet for metadata.
- **SearchScreen** (`lib/view/searchScreen.dart`): Displays a responsive grid of search results with a custom search bar.

## Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m "Add your feature"`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a pull request.

## Acknowledgments
- Built with Flutter and Dart.
- Uses the Pexels API for image search (ensure you have a valid API key).
- Inspired by modern image search and gallery apps.