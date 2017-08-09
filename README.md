# Add Uuid filter plugin for Embulk

This filter plugin is support to add uuid-based string as new columns.

## Overview

* **Plugin type**: filter

## Configuration

- **name**: The name of the new column (string, required)
- **prefix**: Specify prefix for uuid (string, default: `null`)
- **suffix**: Specify suffix for uuid (string, default: `null`)

## Example
### config
```yaml
filters:
  - type: add_uuid
    name: uid
```

### preview
```
+--------------------------------------+
|                           uid:string |
+--------------------------------------+
| 6db1054b-f083-4b40-b9f3-99130713c043 |
| f552e394-6512-4056-8950-6dea76b6e58f |
| 748ef271-39ae-4320-ade1-f7f2e412cd01 |
+--------------------------------------+
```

## Build

```
$ rake
```
