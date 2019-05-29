import re
string_lst = ['fun', 'dum', 'sun', 'gum']
only_dirs = ['crafting_cottages','consumables','dialogs','fotd','hud','newsfeed']
x="I love to have fun."

# Output:['fun']
print (re.findall(r"(?=("+'|'.join(string_lst)+r"))",x))

longest_first = sorted(string_lst, key=len, reverse=True)
p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, longest_first))))

print(p)

f = re.compile(r'(?:{})'.format('|'.join(map(re.escape, only_dirs))))

print(f)

if p.search("I love to have."):
    print('matched')
else:
    print('not found')
