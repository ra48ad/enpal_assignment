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

I spent a good amount of time on the project trying to get the best possible result in the short time at hand. The focus was to get a working MVP with readable and easy-to-understand code. I tried to keep logic seperated from the UI and force Single Resposibility, as well as other SOLID principles, while not over-complicating the app.
I am happy with the result, but if I had more time I would look at the following enhancements/improvements:

- Error Handling and Edge Cases: While basic API error handling is implemented, the UI's error response system needs refinement. The application would benefit from more sophisticated error messaging and graceful handling of edge cases. Additional development time would allow for implementing comprehensive error states and recovery flows, ensuring a more robust user experience across all scenarios.
- Localization/Internationalization: All text content is currently hardcoded within the source code, making it difficult to update or translate content without modifying the codebase directly. This approach lacks the flexibility needed for supporting multiple languages and maintaining content updates efficiently.
- Dependency Injection: The current manual dependency management works adequately for the project's limited scope. However, as the application grows in complexity, implementing a dedicated dependency injection framework like GetIt or Provider would improve scalability, testability, and maintainability. This would provide better control over object lifecycles and simplify dependency management across the application.
- Data Persistence: Currently, the application lacks state persistence, causing all data to be lost when the app is closed. This limitation is particularly significant for user appointments, which can only be retrieved through re-authentication. Implementing local storage would maintain user data between sessions, eliminating the need for frequent re-authentication and providing a more seamless user experience.
- Code Readability: Further code reviews would enhance overall code clarity and maintainability. Additional refactoring would ensure the codebase is more intuitive and accessible to other developers, following established best practices and coding standards.
- Testability: just like readability, the testability can be enhanced by improving the architecture the app and following principles to a better testable code.
