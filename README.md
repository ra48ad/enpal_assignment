# enpal_assignment

## Instructions

Before running the app, make sure that the api (backend) app is running on port 3000:

```
cd <api_folder>
docker build -t enpal-fe-challenge-api .
docker run --rm -d -p 3000:3000 enpal-fe-challenge-api
```

Then run the Flutter app:

```
flutter pub get
flutter run
```

Note: Running the app on the web locally requires CORS to be disabled. You can add the `--web-browser-flag` flag with the `"--disable-web-security"` value to the `flutter run` command. Like this:

```
flutter run -d chrome --web-browser-flag "--disable-web-security"
```

Note: the app uses a default for the API root url (http://localhost:3000). If you want to use a different url, pass a value for `API_BASE_URL`. For example:

```
flutter run --dart-define=API_BASE_URL=http://localhost:3000
```

Make sure that the URL does not end with a `/`.

## Developer Notes

- Flutter was chosen as the UI library for the project because of it's _rapid_ development and multi-platform support - for the future.
- The "bridge" code between the API and the Flutter app was generated using the `openapi_generator_annotations` package, thanks to the OpenAPI specification file.
- A layered architecture was used, splitting the code mainly between `core` and `features/<feature_name>`.
- [Bloc](https://pub.dev/packages/flutter_bloc) was used for state management.

## Assignment Question: trade-offs

A good amount of time was invested in the project with the main focus on getting the best possible result in a short amount of time. The focus was to get a working MVP with readable, easy-to-understand, and highly testable code. Logic was kept seperated as much as possible from the UI and SOLID principles like Single Resposibility were applied.

While the result was satisfactory, with more time at hand, I would look at the following enhancements/improvements:

- Error Handling and Edge Cases: While basic error handling is implemented, the UI's error response system needs refinement. The application would benefit from more sophisticated error messaging and graceful handling of edge cases.
- Localization/Internationalization: All text content is currently hardcoded within the source code, making it difficult to update or translate content without modifying the codebase directly.
- Dependency Injection: The current manual dependency management works adequately for the project's limited scope. However, as the application grows in complexity, implementing a dedicated dependency injection framework like GetIt or Provider would improve scalability, testability, and maintainability.
- Data Persistence: Currently, the application lacks state persistence, causing all data to be lost when the app is closed. A better solution would be to persist data like the current booking locally.
- Code Readability: Reviewing the code to make sure it is readable and understandable for others.
- Testability: just like readability, the testability can be enhanced by improving the architecture the app and following principles to a better testable code.
