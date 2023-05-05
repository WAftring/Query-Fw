# Query-FW.ps1

This script is intended to identify schema mismatches for imports of Windows Firewall rules.

The Firewall schema is determined on a per Windows version and rules that leverage a new schema cannot be loaded by a Windows version that is of a older schema.

Windows Firewall will load rules with the same and older schema.

## Example

```
PS C:\> .\Query-FW.ps1 -Policy .\fw.wfw
Host Schema Version: v2.31
Importing rules into temporary registry
Querying rule schema. This may take awhile...
Incompatible Rule: {0319D0E8-74B2-4965-8B2B-08D425BBC8B0} Schema Version v2.32
Incompatible Rule: {0A6CDF94-C5BA-4BA5-BF71-9627C63DFBD2} Schema Version v2.32
Incompatible Rule: {1795A31D-BFE9-4575-B2B7-09596FBC64B2} Schema Version v2.32
Incompatible Rule: {1C061A7C-0005-4079-A1BD-B80579DBB3A5} Schema Version v2.32
Incompatible Rule: {1FB42570-4471-41E8-966A-1688960219F6} Schema Version v2.32
Incompatible Rule: {22B1C54A-B948-4C72-98B5-6409A608F0CA} Schema Version v2.32
Incompatible Rule: {2A636B7F-F3EC-4830-A55F-C8CF70E8F76B} Schema Version v2.32
Incompatible Rule: {2B631C41-9373-4DEB-A496-B97ED60C45FF} Schema Version v2.32
Incompatible Rule: {340A9841-205B-4398-915C-98160EFBD37C} Schema Version v2.32
Incompatible Rule: {34A4CE0D-7E15-40BE-A558-95894EC0BD27} Schema Version v2.32
Incompatible Rule: {3634B676-BDCD-4B96-8642-37AA72DB20BB} Schema Version v2.32
Incompatible Rule: {3BA92FC6-725C-4735-B113-4A48A938C7FB} Schema Version v2.32
Incompatible Rule: {3D73CBC0-500E-4AA7-AA46-36470485F65B} Schema Version v2.32
Incompatible Rule: {3E0AEEE5-9F14-48C0-910F-A1C4830C518F} Schema Version v2.32
Incompatible Rule: {3F412E95-D0D7-4D16-B817-E055E843CB90} Schema Version v2.32
Incompatible Rule: {43387F90-75E6-44EB-9718-0989F3F86279} Schema Version v2.32
Incompatible Rule: {4BAE1EA3-E550-4956-8857-26164601EEE0} Schema Version v2.32
Incompatible Rule: {53233301-88E5-4CC3-B2B7-2ABEBA8CA58F} Schema Version v2.32
Incompatible Rule: {5618137C-6ECA-4F64-80EB-F3B58FBC7AA6} Schema Version v2.32
Incompatible Rule: {577B1018-E89D-4592-AD43-4A4EDE834944} Schema Version v2.32
Incompatible Rule: {57FDD83F-22BC-47D3-950D-E4F1945401CB} Schema Version v2.32
Incompatible Rule: {5A52D67E-3257-40CF-9F3B-DFAF0929AD83} Schema Version v2.32
Incompatible Rule: {5C76E36E-B297-4D63-8769-5A540406C9D5} Schema Version v2.32
Incompatible Rule: {5D9CEAC8-602A-44EC-8100-11680085938F} Schema Version v2.32
Incompatible Rule: {604BF4EC-C8B7-402A-8527-BBBA2B31B30E} Schema Version v2.32
Incompatible Rule: {64B8C874-F86B-47B7-B4EA-242718174DC6} Schema Version v2.32
Incompatible Rule: {6617A0AC-2E5B-4FEE-B7C5-4B86829922B0} Schema Version v2.32
Incompatible Rule: {765B554F-39E7-4E92-90FF-2B2BF6E31AFF} Schema Version v2.32
Incompatible Rule: {76A9FB83-AC20-4F7B-8F71-D01562E748BE} Schema Version v2.32
Incompatible Rule: {783B8E5B-92DF-4607-B196-57992ADB4DF6} Schema Version v2.32
Incompatible Rule: {7CDFF1D1-C57C-4B43-9EDF-4B4F11301E04} Schema Version v2.32
Incompatible Rule: {7E9FA71B-D933-4AA7-87B5-9128C3689D28} Schema Version v2.32
Incompatible Rule: {810B052D-D5FA-4A4E-9CBF-21C9C52117E3} Schema Version v2.32
Incompatible Rule: {83CFEC80-C1B5-40A9-9A6E-C652B6BAA42F} Schema Version v2.32
Incompatible Rule: {86BCDBCC-387B-4EC6-AA19-8B750568C3B4} Schema Version v2.32
Incompatible Rule: {890F56D8-0A79-453E-9608-B47E56808676} Schema Version v2.32
Incompatible Rule: {8C0485A2-26FD-4A38-AEF1-CFACEA51FCEF} Schema Version v2.32
Incompatible Rule: {96653F6E-158D-486F-AA57-B6192B145B74} Schema Version v2.32
Incompatible Rule: {9C9156FB-7B8F-43FA-9EE0-1E88BCBD4757} Schema Version v2.32
Incompatible Rule: {9D262458-3D84-4650-8FF5-FF20A3BF2E26} Schema Version v2.32
Incompatible Rule: {9EC6132E-0BF9-4814-8180-349C34A4027C} Schema Version v2.32
Incompatible Rule: {A2C27654-C969-4228-999C-2B59592F7FDC} Schema Version v2.32
Incompatible Rule: {A479B7E9-FDAE-4D13-99DD-D6D8184AF645} Schema Version v2.32
Incompatible Rule: {B2EDDEDD-45A4-4715-BB7E-F233E3149A5E} Schema Version v2.32
Incompatible Rule: {B684A146-29F5-41C8-807F-C549997C8EBC} Schema Version v2.32
Incompatible Rule: {B87CAAB7-1ACA-45F9-B1FC-1EA9E6F58A33} Schema Version v2.32
Incompatible Rule: {BCC2437C-3D20-4B60-9571-C5DE532CD969} Schema Version v2.32
Incompatible Rule: {BDB80259-611C-47F1-939F-B8AAFE8F3CB9} Schema Version v2.32
Incompatible Rule: {C28CA8ED-8407-43BC-AD31-173E6E22FFA4} Schema Version v2.32
Incompatible Rule: {C608C87C-5B2A-43A4-A716-329744EC150B} Schema Version v2.32
Incompatible Rule: {CB7C154E-2077-4E47-BB16-4C03739A7C2F} Schema Version v2.32
Incompatible Rule: {CD683CE2-423E-4498-9159-BC7561AD09C4} Schema Version v2.32
Incompatible Rule: {D072B6EB-78A6-4298-B1C9-539C004D7570} Schema Version v2.32
Incompatible Rule: {DD788EA6-9FE9-4EBA-BDA5-7D4A40E76FA8} Schema Version v2.32
Incompatible Rule: {DECD04B3-F0B7-4F14-814A-CF6C3AEC04C0} Schema Version v2.32
Incompatible Rule: {E1153971-F871-4628-9BA0-1AD8257FF652} Schema Version v2.32
Incompatible Rule: {E35B458D-8A73-4451-A4D0-4A2AF1FDF63A} Schema Version v2.32
Incompatible Rule: {E70A27F7-4E5D-4A51-9F02-4E46AAC129DF} Schema Version v2.32
Incompatible Rule: {E7BB0FDA-15A0-4E8F-84A1-A9A102F05482} Schema Version v2.32
Incompatible Rule: {EAFDF350-00AF-4C05-8AF4-859BAB718897} Schema Version v2.32
Incompatible Rule: {F2C6FB82-B0BB-484A-B798-DEFB45B8947B} Schema Version v2.32
Incompatible Rule: {F31150DD-5B6D-4C9F-8BC6-9FBE8E4CA35C} Schema Version v2.32
Incompatible Rule: {F43E870F-CEAA-4E7E-8E24-3712B7485D0D} Schema Version v2.32
Incompatible Rule: {F7DB2433-6C65-40B0-8AD6-F0360D35C6D8} Schema Version v2.32
Incompatible Rule: {FA9E3EB2-BB65-4F13-94B1-455373390BEE} Schema Version v2.32
Cleaning up the registry
The operation completed successfully.
```
