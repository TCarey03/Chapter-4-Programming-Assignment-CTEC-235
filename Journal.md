Digital Profile Card Journal

Phase 1

Did you have any issues updating the pubspec? How did you have to organize your files and update the document to get your image to show up?

I had to make sure my image was inside an `assets` folder in the root of my Flutter project. I then updated the `pubspec.yaml` file to register the assets folder.

The indentation in the `pubspec.yaml` file was important because YAML requires the spacing to be correct. After updating the file, I ran `flutter pub get` and tested the application. I used `Image.asset()` to display the local image and a `Text` widget to display my name.

The main challenge was making sure the image filename and path in `Image.asset()` matched the actual file in the assets folder.

-----------------------------

Phase 2

What was the most challenging part of getting your content to look visually balanced on screen? What happens to your layout when you test it on different screen sizes or device orientations?

The most challenging part was making sure there was enough space between the image, name, subtitle, and contact information. I used Padding and SizedBox to add spacing and make the layout easier to read.

I also used a Container to group the contact information together and give it a background color. The Row allowed me to put the email label and email address next to each other.

When I test the app on different screen sizes, the amount of available space changes. A layout that looks good on a larger screen can become more crowded on a smaller screen. Using padding and spacing helps keep the layout organized.
