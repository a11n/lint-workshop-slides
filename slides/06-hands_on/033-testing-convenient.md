# Testing

**Lint JUnit rule**

```java
@Rule public Lint lint = new Lint();

@Test
public void test() throws Exception {
  lint.setFiles("AndroidManifest.xml", "res/values/string.xml");
  lint.setIssues(MyCustomRule.ISSUE);

  lint.analyze();

  List<Warning> warnings = lint.getWarnings();

  assertThat(warnings).hasSize(2);
}
```
