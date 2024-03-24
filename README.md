# Yelp APP
Complete Flutter Application with Bloc (state management), Freezed(code generator for data-classes), Clean architecture and GetIt (dependency injection).

<video src='https://youtube.com/shorts/EVQGPqmY8SQ?feature=share'/>

## Features
- API REST (Yelp)
- Restaurant Search
- Surprise reveal countdown
- Roulette Spinner


## Setup project

Download project
```bash
git clone https://github.com/divinity360/yelpflutter
```

Get flutter dependencies
```bash
flutter pub get
```


You need to create an account at https://www.yelp.com/developers/ to get a personal API KEY

Create an env file and input the api key in the format below

```bash
YELP_API_KEY = {Yelp_KEY}
```

To generate the freezed data-classes using the code generator, Execute the following comand

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```


Run the app
```bash
flutter run
```

