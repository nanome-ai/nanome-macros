# Summary


# Selection fonctionality

DETAILS: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/SELECTION.md

Ability to manipulate workspace selection

```csharp
Selection_All() -> null
Selection_Clear() -> null
Selection_Invert() -> null

Selection_Change(string mode, Atom atom) -> null
Selection_Change(string mode, Residue residue) -> null
Selection_Change(string mode, Chain chain) -> null
Selection_Change(string mode, Molecule molecule) -> null
Selection_Change(string mode, Complex complex) -> null

Selection_Change(string mode, List<Atom> atoms) -> null
Selection_Change(string mode, List<Residue> residues) -> null
Selection_Change(string mode, List<Chain> chains) -> null
Selection_Change(string mode, List<Molecule> molecules) -> null
Selection_Change(string mode, List<Complex> complexes) -> null

Selection_Extend(float distance, bool byResidues) -> null
Selection_Shrink(float distance, bool byResidues) -> null

Selection_GetAtoms() -> List<Atom>
Selection_GetResidues() -> List<Residue>
Selection_GetChains() -> List<Chain>
Selection_GetMolecules() -> List<Molecule>
Selection_GetComplexes() -> List<Complex>
```

# Command fonctionality

DETAILS: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/COMMAND.md

Manipulate the workspace and the selection within the workspace

```csharp
Command_Load(string name, string type, string source, string payload) -> null

Command_Notification(string message) -> null
Command_Wait(int milliseconds) -> null

Command_Split();
Command_Duplicate() -> null
Command_Merge() -> null

Command_Center() -> null
Command_Zoom() -> null
Command_Align(List<Complex> complexes) -> null

Command_Delete(List<Complex> complexes) -> null
Command_Delete(List<Molecule> molecules) -> null
Command_Delete(List<Chain> chain) -> null
Command_Delete(List<Residue> residues) -> null
Command_Delete(List<Atom> atoms) -> null

Command_ShowAtomsBonds(bool enabled) -> null
Command_ShowRibbons(bool enabled) -> null
Command_ShowSurfaces(bool enabled) -> null

Command_ShowWaters(bool enabled) -> null
Command_ShowHydrogens(bool enabled) -> null

Command_ShowHetAtomsBonds(bool enabled) -> null
Command_ShowHetSurfaces(bool enabled) -> null

Command_ShowResidueLabels(bool enabled) -> null
Command_ShowAtomLabels(bool enabled) -> null

Command_SetAtomsBondsRender(string mode) -> null
Command_SetRibbonsRender(string mode) -> null
Command_SetSurfacesTransparency(float value) -> null

Command_ColoringAtomsBonds(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
Command_ColoringRibbons(string scheme, Color color1, Color color2) -> null
Command_ColoringSurfaces(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
```

# Molecular functionality

Ability to manipulate molecular entities

```csharp
Workspace_GetNetwork() -> NetworkNode
Workspace_GetComplexes() -> List<Complex>

Workspace_GetCenter() -> Vector3
Workspace_GetScale() -> Vector3

Workspace_SetCenter(Vector3 value) -> null
Workspace_SetScale(Vector3 value) -> null

Complex_GetNetwork(Complex complex) -> NetworkNode

Complex_GetName(Complex complex) -> string
Complex_GetTagNumber(Complex complex) -> int
Complex_GetTagString(Complex complex) -> string
Complex_GetVisible(Complex complex) -> bool
Complex_GetBoxed(Complex complex) -> bool
Complex_GetLocked(Complex complex) -> bool

Complex_GetAnimationFrame(Complex complex) -> int
Complex_GetAnimationMode(Complex complex) -> int
Complex_GetAnimationSpeed(Complex complex) -> float
Complex_GetAnimationLooping(Complex complex) -> bool

Complex_GetGlobalPosition(Complex complex) -> Vector3
Complex_GetGlobalRotation(Complex complex) -> Quaternion
Complex_GetLocalPosition(Complex complex) -> Vector3
Complex_GetLocalRotation(Complex complex) -> Quaternion

Complex_SetName(Complex complex, string value) -> null
Complex_SetTagNumber(Complex complex, int value) -> null
Complex_SetTagString(Complex complex, string value) -> null
Complex_SetVisible(Complex complex, bool value) -> null
Complex_SetBoxed(Complex complex, bool value) -> null
Complex_SetLocked(Complex complex, bool value) -> null

Complex_SetAnimationFrame(Complex complex, int value) -> null
Complex_SetAnimationMode(Complex complex, int value) -> null
Complex_SetAnimationSpeed(Complex complex, float value) -> null
Complex_SetAnimationLooping(Complex complex, bool value) -> null

Complex_SetGlobalPosition(Complex complex, Vector3 value) -> null
Complex_SetGlobalRotation(Complex complex, Quaternion value) -> null
Complex_SetLocalPosition(Complex complex, Vector3 value) -> null
Complex_SetLocalRotation(Complex complex, Quaternion value) -> null

Complex_GetMolecules(Complex complex) -> List<Molecule>
Complex_GetCurrentMolecule(Complex complex) -> Molecule

Molecule_GetNetwork(Molecule molecule) -> NetworkNode
Molecule_GetComplex(Molecule molecule) -> Complex
Molecule_GetChains(Molecule molecule) -> List<Chain>
Molecule_GetName(Molecule molecule) -> string

Chain_GetNetwork(Chain chain) -> NetworkNode
Chain_GetComplex(Chain chain) -> Complex
Chain_GetMolecule(Chain chain) -> Molecule
Chain_GetResidues(Chain chain) -> List<Residue>
Chain_GetName(Chain chain) -> string

Residue_GetNetwork(Residue residue) -> NetworkNode
Residue_GetComplex(Residue residue) -> Complex
Residue_GetMolecule(Residue residue) -> Molecule
Residue_GetChain(Residue residue) -> Chain
Residue_GetAtoms(Residue residue) -> List<Atom>
Residue_GetName(Residue residue) -> string
Residue_GetSerial(Residue residue) -> int
Residue_GetLabelContent(Residue residue) -> string
Residue_SetLabelContent(Residue residue, string value) -> null

Atom_GetNetwork(Atom atom) -> NetworkNode
Atom_GetComplex(Atom atom) -> Complex
Atom_GetMolecule(Atom atom) -> Molecule
Atom_GetChain(Atom atom) -> Chain
Atom_GetResidue(Atom atom) -> Residue
Atom_GetSymbol(Atom atom) -> string
Atom_GetName(Atom atom) -> string
Atom_GetSerial(Atom atom) -> int
Atom_GetPosition(Atom atom) -> Vector3
Atom_GetSelected(Atom atom) -> bool
Atom_GetLabeled(Atom atom) -> bool
Atom_GetIsHet(Atom atom) -> bool
Atom_GetBFactor(Atom atom) -> float
Atom_GetLabelContent(Atom atom) -> string
Atom_SetLabelContent(Atom atom, string value) -> null
```

# Menu fonctionality

Ability to manipulate the menus in the room

```csharp
Menu_FindByName(string name) -> Menu
Menu_FindAll() -> List<Menu>

Menu_GetNetwork(Menu menu) -> NetworkNode
Menu_GetName(Menu menu) -> string
Menu_GetVisible(Menu menu) -> bool
Menu_GetLocked(Menu menu) -> bool
Menu_GetPosition(Menu menu) -> Vector3
Menu_GetRotation(Menu menu) -> Quaternion
Menu_GetScale(Menu menu) -> Vector3

Menu_SetVisible(Menu menu, bool value) -> null
Menu_SetLocked(Menu menu, bool value) -> null
Menu_SetPosition(Menu menu, Vector3 value) -> null
Menu_SetRotation(Menu menu, Quaternion value) -> null
Menu_SetScale(Menu menu, Vector3 value) -> null
```

# User fonctionality

Ability to manipulate the user in the room

```csharp
User_GetMain() -> User

User_GetEyesForward(User user) -> Vector3
User_GetEyesPosition(User user) -> Vector3
User_GetEyesRotation(User user) -> Quaternion

User_GetLeftHandForward(User user) -> Vector3
User_GetLeftHandPosition(User user) -> Vector3
User_GetLeftHandRotation(User user) -> Quaternion

User_GetRightHandForward(User user) -> Vector3
User_GetRightHandPosition(User user) -> Vector3
User_GetRightHandRotation(User user) -> Quaternion

User_GetOriginForward(User user) -> Vector3
User_GetOriginPosition(User user) -> Vector3
User_GetOriginRotation(User user) -> Quaternion

User_SetOriginPosition(User user, Vector3 value) -> null
User_SetOriginRotation(User user, Quaternion value) -> null
```

# Store fonctionality

DETAILS: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/STORE.md

Ability to save values between macro runs

```csharp
Store_Set(string key, object value) -> null
Store_SetString(string key, string value) -> null
Store_SetFloat(string key, float value) -> null
Store_SetInt(string key, int value) -> null
Store_SetBool(string key, bool value) -> null

Store_Has(string key) -> bool

Store_Get(string key) -> object
Store_GetString(string key) -> string
Store_GetFloat(string key) -> float
Store_GetInt(string key) -> int
Store_GetBool(string key) -> bool
```

# Basic and utility types functionality

Give access to a set of function to manipulate basic API types

```csharp
List_Make() -> List<object>
List_Get(List<object> list, int idx) -> object
List_Length(List<object> list) -> int
List_Add(List<object> list, object value) -> null
List_Set(List<object> list, int idx, object value) -> null
List_Clear(List<object> list) -> null
List_Iterator(List<object> list) -> iterator<object>
List_Pair(List<object> list) -> iterator<int, object>

Vector3_Make(float x, float y, float z) -> Vector3
Vector3_Add(Vector3 a, Vector3 b) -> Vector3
Vector3_Sub(Vector3 a, Vector3 b) -> Vector3
Vector3_Mul(Vector3 vector, float value) -> Vector3
Vector3_Div(Vector3 vector, float value) -> Vector3
Vector3_Rotate(Vector3 vector, Quaternion quaternion) -> Vector3
Vector3_GetX(Vector3 vector) -> float
Vector3_GetY(Vector3 vector) -> float
Vector3_GetZ(Vector3 vector) -> float

Quaternion_Make(float x, float y, float z) -> Quaternion
Quaternion_LookAt(Vector3 direction, Vector3 up) -> Quaternion
Quaternion_Inverted(Quaternion quaternion) -> Quaternion
Quaternion_GetAngles(Quaternion quaternion) -> Vector3
Quaternion_Multiply(Quaternion a, Quaternion b) -> Quaternion

Color_RGB(int r, int g, int b) -> Color
Color_GetR(Color color) -> int
Color_GetG(Color color) -> int
Color_GetB(Color color) -> int
Color_GetA(Color color) -> int

Path_Executable() -> string
Path_Storage() -> string
Path_Make(string format) -> string

Time_Now() -> float
```

# Network functionality

DETAILS: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/NETWORK.md

EXPERT ONLY: Ability to directly edit the underlying state of the room

```csharp
Network_Root() -> NetworkNode
Network_GetType(NetworkNode node) -> string
Network_GetParent(NetworkNode node) -> NetworkNode
Network_GetChildren(NetworkNode node) -> List<NetworkNode>
Network_GetChildWithType(NetworkNode node, string type) -> NetworkNode
Network_GetChildrenWithType(NetworkNode node, string type) -> List<NetworkNode>

Network_HasProperty(NetworkNode node, string property) -> bool
Network_GetPropertyBool(NetworkNode node, string property) -> bool
Network_GetPropertyByte(NetworkNode node, string property) -> int
Network_GetPropertyInt(NetworkNode node, string property) -> int
Network_GetPropertyFloat(NetworkNode node, string property) -> float
Network_GetPropertyString(NetworkNode node, string property) -> string
Network_GetProperty(NetworkNode node, string property) -> object

Network_Make(NetworkNode parent, string type, object payload) -> NetworkNode
Network_Delete(NetworkNode node) -> null
Network_SetPropertyBool(NetworkNode node, string property, bool value) -> null
Network_SetPropertyByte(NetworkNode node, string property, int value) -> null
Network_SetPropertyInt(NetworkNode node, string property, int value) -> null
Network_SetPropertyFloat(NetworkNode node, string property, float value) -> null
Network_SetPropertyString(NetworkNode node, string property, string value) -> null
Network_SetProperty(NetworkNode node, string property, object value) -> null
```
