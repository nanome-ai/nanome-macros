
# Available functions: Network

### Navigate network tree

* [Network_Root](#network_root) ()
* [Network_GetType](#network_gettype) ()
* [Network_GetParent](#network_getparent) ()
* [Network_GetChildren](#network_getchildren) ()
* [Network_GetChildWithType](#network_getchildwithtype) ()
* [Network_GetChildrenWithType](#network_getchildrenwithtype) ()

### Read network nodes

* [Network_HasProperty](#network_hasproperty) ()
* [Network_GetPropertyBool](#network_getpropertybool) ()
* [Network_GetPropertyByte](#network_getpropertybyte) ()
* [Network_GetPropertyInt](#network_getpropertyint) ()
* [Network_GetPropertyFloat](#network_getpropertyfloat) ()
* [Network_GetPropertyString](#network_getpropertystring) ()
* [Network_GetProperty](#network_getproperty) ()

### Edit network nodes

* [Network_Make](#network_make) ()
* [Network_Delete](#network_delete) ()
* [Network_SetPropertyBool](#network_setpropertybool) ()
* [Network_SetPropertyByte](#network_setpropertybyte) ()
* [Network_SetPropertyInt](#network_setpropertyint) ()
* [Network_SetPropertyFloat](#network_setpropertyfloat) ()
* [Network_SetPropertyString](#network_setpropertystring) ()
* [Network_SetProperty](#network_setproperty) ()

# Documentation API : Network

### Network_Root
Definition
```csharp
Network_Root() -> NetworkNode
```
Example:
```lua
```

### Network_GetType
Definition
```csharp
Network_GetType(NetworkNode node) -> string
```
Example:
```lua
```

### Network_GetParent
Definition
```csharp
Network_GetParent(NetworkNode node) -> NetworkNode
```
Example:
```lua
```

### Network_GetChildren
Definition
```csharp
Network_GetChildren(NetworkNode node) -> List<NetworkNode>
```
Example:
```lua
```

### Network_GetChildWithType
Definition
```csharp
Network_GetChildWithType(NetworkNode node, string type) -> NetworkNode
```
Example:
```lua
```

### Network_GetChildrenWithType
Definition
```csharp
Network_GetChildrenWithType(NetworkNode node, string type) -> List<NetworkNode>
```
Example:
```lua
```

### Network_HasProperty
Definition
```csharp
Network_HasProperty(NetworkNode node, string property) -> bool
```
Example:
```lua
```

### Network_GetPropertyBool
Definition
```csharp
Network_GetPropertyBool(NetworkNode node, string property) -> bool
```
Example:
```lua
```

### Network_GetPropertyByte
Definition
```csharp
Network_GetPropertyByte(NetworkNode node, string property) -> int
```
Example:
```lua
```

### Network_GetPropertyInt
Definition
```csharp
Network_GetPropertyInt(NetworkNode node, string property) -> int
```
Example:
```lua
```

### Network_GetPropertyFloat
Definition
```csharp
Network_GetPropertyFloat(NetworkNode node, string property) -> float
```
Example:
```lua
```

### Network_GetPropertyString
Definition
```csharp
Network_GetPropertyString(NetworkNode node, string property) -> string
```
Example:
```lua
```

### Network_GetProperty
Definition
```csharp
Network_GetProperty(NetworkNode node, string property) -> object
```
Example:
```lua
```

### Network_Make
Definition
```csharp
Network_Make(NetworkNode parent, string type, object payload) -> NetworkNode
```
Example:
```lua
```

### Network_Delete
Definition
```csharp
Network_Delete(NetworkNode node) -> null
```
Example:
```lua
```

### Network_SetPropertyBool
Definition
```csharp
Network_SetPropertyBool(NetworkNode node, string property, bool value) -> null
```
Example:
```lua
```

### Network_SetPropertyByte
Definition
```csharp
Network_SetPropertyByte(NetworkNode node, string property, int value) -> null
```
Example:
```lua
```

### Network_SetPropertyInt
Definition
```csharp
Network_SetPropertyInt(NetworkNode node, string property, int value) -> null
```
Example:
```lua
```

### Network_SetPropertyFloat
Definition
```csharp
Network_SetPropertyFloat(NetworkNode node, string property, float value) -> null
```
Example:
```lua
```

### Network_SetPropertyString
Definition
```csharp
Network_SetPropertyString(NetworkNode node, string property, string value) -> null
```
Example:
```lua
```

### Network_SetProperty
Definition
```csharp
Network_SetProperty(NetworkNode node, string property, object value) -> null
```
Example:
```lua
```
