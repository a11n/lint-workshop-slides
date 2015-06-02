## Three options for dependencies

- Have a Java module for the Lint rules and an Android library module as wrapper

```java
Android application project
--app         //default Android application module
--lint        //Android library, acts as wrapper for the Lint rules
--lintrules   //Java module with your custom Lint rules
```

```groovy
project.afterEvaluate {
  def compileLint = project.tasks.getByPath(':lint:compileLint')
  compileLint.dependsOn ':lintrules:jar'
  compileLint << {
    copy{
      from '../lintrules/build/libs'
      into 'build/intermediates/lint'
    }
  }
}
```
