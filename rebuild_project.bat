@ECHO OFF
CALL flutter clean
CALL flutter pub get
CALL flutter packages pub run build_runner build --delete-conflicting-outputs