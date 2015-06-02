## Three options for dependencies

- Copy the AAR to the libs folder

```groovy
dependencies {
  compile fileTree(dir: 'libs', include: '*.jar')
}
```

- Deploy the AAR to a repository

```groovy
dependencies {
  compile 'your.package.name:custom-lint:1.0.0@aar'
}
```
