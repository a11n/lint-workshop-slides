#Example

 ```java
 public class HelloWorldDetector extends Detector
  implements XmlScanner {

  public static final Issue ISSUE = Issue.create(...);

  @Override public Collection<String> getApplicableElements() {...}

  @Override public Collection<String> getApplicableAttributes() {...}

  @Override public void visitElement(@NonNull XmlContext context,
      @NonNull Element element) {...}

  @Override public void visitAttribute(@NonNull XmlContext context,
      @NonNull Attr attribute) {...}
 }
 ```
