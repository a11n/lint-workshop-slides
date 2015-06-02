# IssueRegistry

- subclass `IssueRegistry`
- override `getIssues()`
- reference in `MANIFEST`

```groovy
jar {
    manifest {
        attributes 'Lint-Registry':
         'your.package.name.CustomIssueRegistry'
    }
}
```
