x = [1,2,3]
y = "'" + "','".join(map(str, x)) + "'"
z = "'" + ",".join(map(str, x)) + "'"
z2 = ",".join(map(str, x))
print(y)
print(z)
print(z2)
