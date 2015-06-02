#Example

```java
public class CustomIssueRegistry extends IssueRegistry {
  @Override
  public List<Issue> getIssues() {
    return Arrays.asList(             //Note:
      MyCustomCheck.ISSUE,            //A check actually is a detector.
      MyAdvancedCheck.AN_ISSUE,       //One detector can report
      MyAdvancedCheck.ANOTHER_ISSUE   //multiple types of issues.
    );
  }
}
```
