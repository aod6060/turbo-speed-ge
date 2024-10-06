import os




list = []

for x in os.listdir():
	if x.endswith(".svg"):
		list.append("- [ ] " + x)
		
		

fp = open("list.txt", "w")


for l in list:
	fp.write(l + "\n")
	
fp.close()