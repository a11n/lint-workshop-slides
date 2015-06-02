# Example

 ```java
 public static final Issue ISSUE = Issue.create(
    "HelloWorld",                                 //ID
    "Unexpected application title",               //brief description
    "The application title should"                //explanation
      + "state 'Hello world'",
    Category.CORRECTNESS,                         //category
    5,                                            //priority
    Severity.INFORMATIONAL,                       //severity
    new Implementation(                           //implementation
        HelloWorldDetector.class,                 //detector
        Scope.MANIFEST_SCOPE                      //scope
    )
);
 ```
