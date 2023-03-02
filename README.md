<h1 align="center">About</h1>

# Run project
## - Android
```sh
flutter run lib/main.dart
```

## - Web
```sh
flutter run -d chrome
```

### Additional (without CORS):
1. Run cmd
2. Execute command:
```sh
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C:/ChromeDevSession"
```

## - Windows
```sh
flutter run -d windows
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Модуль 16. Cross-platform apps

#### Задание
1. Реализовать приложение, которое может отобразить интернет-страницу с учетом платформы, на котором оно запущено.

2. В приложении должен быть footer с информацией о текущей платформе и адресом интернет-страницы.

3. Загрузка интернет-страницы производится по нажатию кнопки "Загрузить"
