# Flutter Project Setup

## Global folder structure

- Common will contain commonly used widgets like loading indicators, dialogs, and any widget you use frequently on your modules.

- Widgets fill contain high-level widget files like your wrapped function of [https://pub.dev/packages/flutter_form_builder] fields or a data table widget for example.

- Utils will contain const variables you have created. These can be styles and design values. It can also contain functions you frequently use.

- Themes will contain your themes created with official documentation: [https://docs.flutter.dev/cookbook/design/themes]

- Controllers will contain controllers that you use globally in your modules or before starting the app.

- Interceptors will contain for example a fetching interceptor or a route interceptor. I use Dio for data fetching so I create Dio’s interceptor there.

- Endpoints will contain string URL functions that you use for data fetching. Using endpoints like this will make it quicker to update and see what endpoints you are using overall.

- Models will contain JSON models you have created with official documentation here: [https://docs.flutter.dev/development/data-and-backend/json]

- Services will contain functions that fetch from API.

  - Both services and models must be in a global folder in a big app. The reason for this is you can use a service both in the profile module and home module etc.

  - If you create models and services per module it will get complicated in the long run.

## Modules folder structure

- Controllers will contain controls (or view models. I am using GetX which is why I named them “Controllers”) you have created. It can be a GetX controller or other state management packages you have used.

- The widgets folder will contain widgets that we will use on our view. I always advise you to cut chunks of your view into smaller widgets whenever possible.

- And then there is your view. Which will be your view.. amazing isn’t it? It should not be more than 300 lines of code max.

  - Business logic should be handled in your controllers. Widgets in your view should be separated by files and then recalled on your view.

## So I don't complicate stuff here, I will put the contents guide in the README.md file in their respective folders, and I will try to keep it simple

### structure idea is from [Umut Arpat](https://levelup.gitconnected.com/scalable-flutter-folder-structure-for-big-apps-480a9b266793) a senior flutter developer
