# bloc_exercise

learning bloc pattern

https://tech.tamara.co/architect-your-flutter-app-the-clean-way-with-bloc-703e6a8c2d23

For front-end apps, we need to handle three things mainly. Which are, what the user interacts with, the logic performed by the app, and fetching data used in the app. The combination of the three specified categories is known as “Three-tier Architecture”, which is followed mostly in many of the front-end apps.

core folder will contain, (commonly used files)
presentation - common widgets, dialogs and pop-ups overall,
domain - common entities and usecases,
data - fetch data commonly used across the app,
utils - utility classes and functions,
styles - for app styles.
There can be more foldes like validators, services, etc.

features folder will contain, (each major feature of the app)
example auth feature, home feature. Each of these major feature in our app will have a seperate folder with its own presentation, domain and data layers.
auth will contain - presentation, domain, data folders.

Presentation, Domain and Data layer,
Presentation - bloc, widgets, screen.dart
Domain - usecase, entity
Data - repository, data sources and DTOs