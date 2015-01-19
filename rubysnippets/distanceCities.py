from geopy.geocoders import Nominatim
from geopy.distance import vincenty
geolocator = Nominatim()
startLocation = geolocator.geocode(raw_input("State a departing city  :   "))
endLocation = geolocator.geocode(raw_input("State a destination city:   "))
depart = startLocation.latitude, startLocation.longitude
destine = endLocation.latitude, endLocation.longitude
                                   
print "The distance between these two cities is:   "
                                   
print '%.2f' % vincenty(depart, destine).miles, ' miles'
