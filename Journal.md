Digital Profile Card Journal

Phase 1

Did you have any issues updating the pubspec? How did you have to organize your files and update the document to get your image to show up?

I had to make sure my image was inside an `assets` folder in the root of my Flutter project. I then updated the `pubspec.yaml` file to register the assets folder.

The indentation in the `pubspec.yaml` file was important because YAML requires the spacing to be correct. After updating the file, I ran `flutter pub get` and tested the application. I used `Image.asset()` to display the local image and a `Text` widget to display my name.

The main challenge was making sure the image filename and path in `Image.asset()` matched the actual file in the assets folder.
