# Data-Visualization

## Summary
Using Hans Rosling’s Gapminder visual format, this project explores how the median radius and Period of extrasolar planets discovered each year has changed. With this visualization, we aim to show that the median radius of the planets have decreased while the median period of the planets discovered have increased as instruments have become more sensitive. This visualization also aims to explore how various planet discovery methods perform with respect to the above metrics. 

## Design

What is the structure of your dataset?
There are 5454 different exoplanets in this dataset with 4 features. 
•	DATE: The year the planet was discovered (starting in 1990)
•	Radius R (rjupiter): This represents the radius of the planet as a ratio of Jupiter's radius.
•	Period (days): This is how long a "year" is on one of those planets. Very early planets tended to orbit closely to their star, which increased the oscillations favored by the Gravity Method
Planet Discovery Methods
PLANETDISCMETHOD: Method used to discover the planet. This is a category, since there are very few methods used. The methods are as follows
•	Transit: The planet moving in front of its star causes an eclipse when viewed from Earth and thus the star's luminosity decreases.
•	Transit Timing Variation: Once a planet has been discovered by the transit method, a decrease in brightness is to be expected at a period of a planet's orbit. If a repeated decrease in brightness occurs outside of that period, it may indicate the presence of a second planet. 
•	Timing: Other timing methods such as Pulsar Timing (for planets discovered around Pulsars)
•	Microlensing: The planet's gravity bends the star's light, causing a doppler shift in the starlight.
•	Radial Velocity (RV): The planet's gravity causes the star to oscillate. By measuring the oscillation, we can approximate the planet's mass, radius, and orbit. This was the earliest method used, and it typically favors larger planets. 
•	Imaging: The planet was directly imaged. This is a new method at the time the data was collected.
Structure of visualization
Each circle represents a PLANETDISCMETH. The centroid of the circle is the median planetary Radius and Period of the planet discovered that year. A variable called numPlanets was created to demonstrate that. The Radius of the circle represents the number of planets discovered via that particular method for that year. 
•	numPlanets: I created this variable. This is the number of planets discovered in the same year as the particular exoplanet by the same planetary discovery method 
Outliers and NA
Exoplanet detection is still a new field. Thus, the data itself was incomplete. If the planet lacks any of these features, it is not taken into consideration. This is purely for the purpose of preserving the visualization. In addition, planets with extremely large radii and extremely long periods have been discovered. Free-floating planets have also been discovered, which are represented by an infinite period. Since such outliers are so far rare, they have been excluded from the visualization. As the data is right-skewed, the range of both the Period and the Radius is artificially limited to show the relevant trends.

## Analysis

## Feedback

## References
 http://exoplanets.org/index.html
https://en.wikipedia.org/wiki/Methods_of_detecting_exoplanets
https://en.wikipedia.org/wiki/Jupiter
https://en.wikipedia.org/wiki/Earth
