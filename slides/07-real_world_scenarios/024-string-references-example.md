## Example

```xml
<!-- fragment_customer_signature.xml -->
<TextView android:id="@+id/tvCustomerName"
  android:text="@string/fragment_customer_signature_tvCustomerName_text" />
<EditText android:id="@+id/etCustomerName"
  android:hint="@string/fragment_customer_signature_etCustomerName_hint" />
<Button android:id="@+id/btSubmit"
  android:text="@string/fragment_customer_signature_btSubmit_text" />

<!-- string.xml -->
<string name="fragment_customer_signature_tvCustomerName_text">
  Please enter the customer name:
</string>
<string name="fragment_customer_signature_btSubmit_text">
  @string/literal_submit
</string>
```
