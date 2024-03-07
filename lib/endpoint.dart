class EndPoints{
  static const String baseUrl=String.fromEnvironment('baseUrl'); // 'baseUrl' is the key name we have declared in the env directory and only belong to dev, stg and prod
  static const String getInfo= "/api/getInfo";
}

//command line while calling the environment type
/** flutter run --dart-define-from-file=env/dev.json **/
/** flutter run --dart-define-from-file=env/prod.json **/
/** flutter run --dart-define-from-file=env/stg.json **/