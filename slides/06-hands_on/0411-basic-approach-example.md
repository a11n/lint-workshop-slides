#Basic approach
```
#!/bin/sh

# Build .jar
./gradlew assemble

# Install
if [ ! -d "~/.android/lint/" ]; then
  mkdir ~/.android/lint/
fi

cp build/libs/lint.jar ~/.android/lint/
```
