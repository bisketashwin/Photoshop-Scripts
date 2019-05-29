# Directory listing example:
import smbc
ctx = smbc.Context (auth_fn=my_auth_callback_fn)
entries = ctx.opendir ("smb://SERVER").getdents ()
for entry in entries:
    print (entry)

d = ctx.open ("smb://blr-fs03/share/Farm_Art/UI/_UI_Dev/_Ashwin_Nandihalli")

'''
# Write file example:
import smbc
import os
ctx = smbc.Context (auth_fn=my_auth_callback_fn)
file = ctx.open ("smb://SERVER/music/file.txt", os.O_CREAT | os.O_WRONLY)
file.write ("hello")
# Read file example:
import smbc
ctx = smbc.Context (auth_fn=my_auth_callback_fn)
file = ctx.open ("smb://SERVER/music/file.txt")
print file.read()

'''
