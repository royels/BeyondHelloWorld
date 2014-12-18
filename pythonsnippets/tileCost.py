from sys import argv

print "Keep consistent units!"
width =  int(raw_input("Width of the room (in meters)  :   "))
height = int(raw_input("Height of the room (in meters) :   "))
cost = float(raw_input("Cost per square unit in $      :   "))
print "Total cost: $%.2f" % (cost * float(width * height))
