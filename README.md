# LocationAccessWithoutPermissionAndLocationService
- enable you access location without enableing location service or giving the location permission
Some context

I realised that UIKit has this information already because everytime the MKMapView is shown, the region is automatically set to fit the current user's country. Using this hypothesis I needed to find a solution to load the map without presenting it and then to reverse geocode the center coordinates to identify the country.

I implemented this solution taking into consideration the following limitations I found:

Don't ask for user permissions ideally
Device locale was not considered a reliable alternative
Detecting the sim carrier actually returns the original carrier country and not the current connected carrier (via roaming)
Retrieving the country by IP can be easily faked using VPNs which are becoming more popular lately
