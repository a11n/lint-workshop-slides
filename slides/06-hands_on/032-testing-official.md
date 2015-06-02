# Testing

**LintDetectorTest**

```java
public class HardcodedValuesDetectorTest  extends AbstractCheckTest {
    @Override
    protected Detector getDetector() {
        return new HardcodedValuesDetector();
    }
    public void testStrings() throws Exception {
        assertEquals(
            "res/layout/accessibility.xml:3: Warning: [I18N] Hardcoded string \"Button\", should use @string resource [HardcodedText]\n" +
            "    <Button android:text=\"Button\" android:id=\"@+id/button1\" android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\"></Button>\n" +
            "            ~~~~~~~~~~~~~~~~~~~~~\n" +
            "res/layout/accessibility.xml:6: Warning: [I18N] Hardcoded string \"Button\", should use @string resource [HardcodedText]\n" +
            "    <Button android:text=\"Button\" android:id=\"@+id/button2\" android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\"></Button>\n" +
            "            ~~~~~~~~~~~~~~~~~~~~~\n" +
            "0 errors, 2 warnings\n",
            lintFiles("res/layout/accessibility.xml"));
    }
}
```
