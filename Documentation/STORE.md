
## Available functions: Store

### Write store content

* [Store_Set](#store_set) (Set the value of a specific key in the store)
* [Store_SetString](#store_setstring) (Set the string value of a specific key in the store)
* [Store_SetFloat](#store_setfloat) (Set the float value of a specific key in the store)
* [Store_SetInt](#store_setint) (Set the int value of a specific key in the store)
* [Store_SetBool](#store_setbool) (Set the boolean value of a specific key in the store)

### Read store content

* [Store_Has](#store_has) (Check if the store contains a specific key)
* [Store_Get](#store_get) (Get the generic value of a specific key)
* [Store_GetString](#store_getstring) (Get the string value of a specific key)
* [Store_GetFloat](#store_getfloat) (Get the float value of a specific key)
* [Store_GetInt](#store_getint) (Get the int value of a specific key)
* [Store_GetBool](#store_getbool) (Get the boolean value of a specific key)

## Documentation API

### Store_Set
Definition
```csharp
Store_Set(string key, object value) -> null
```
Example:
```lua
-- Save color into store
Store_Set("example-color", Color_RGB(255, 255, 255));
```

### Store_SetString
Definition
```csharp
Store_SetString(string key, string value) -> null
```
Example:
```lua
-- Save text into store
Store_SetString("example-text", "hello");
```

### Store_SetFloat
Definition
```csharp
Store_SetFloat(string key, float value) -> null
```
Example:
```lua
-- Save floating point value into store
Store_SetFloat("example-float", 0.1);
```

### Store_SetInt
Definition
```csharp
Store_SetInt(string key, int value) -> null
```
Example:
```lua
-- Save integer into store
Store_SetInt("example-int", 42);
```

### Store_SetBool
Definition
```csharp
Store_SetBool(string key, int value) -> null
```
Example:
```lua
-- Save integer into store
Store_SetBool("example-bool", true);
```

### Store_Has
Definition
```csharp
Store_Has(string key) -> bool
```
Example:
```lua
-- Check if store contains the key
if Store_Has("example-key") then
    Command_Notification("The store contains the example-key!");
end;
```


### Store_Get
Definition
```csharp
Store_Get(string key) -> object
```
Example:
```lua
```

### Store_GetString
Definition
```csharp
Store_GetString(string key) -> string
```
Example:
```lua
```

### Store_GetFloat
Definition
```csharp
Store_GetFloat(string key) -> float
```
Example:
```lua
```

### Store_GetInt
Definition
```csharp
Store_GetInt(string key) -> int
```
Example:
```lua
```

### Store_GetBool
Definition
```csharp
Store_GetBool(string key) -> bool
```
Example:
```lua
```