# Data-Visualization

## Gist Address
https://gist.github.com/vtocitu365



## Summary
Every year, telescopes such as the Kepler Space Telescope discover hundreds of worlds. These telescopes not only confirm the planet's existence, but they also record characteristics of the planet such as its Radius and its Period (the time it takes the planet to orbit the star). Using Hans Rosling’s Gapminder visual format, this visualization explores the following questions

1. How many planets were discovered each year?
2. Which planetary discovery methods have been the most effective?
3. How has the median Radius and Period changed ove the years?

## Design

### What is the structure of your dataset?

There are 5454 different exoplanets in this dataset with 4 features. 

•	DATE: The year the planet was discovered (starting in 1990)

•	Radius R (rjupiter): This represents the radius of the planet as a ratio of Jupiter's radius.

•	Period (days): This is how long a "year" is on one of those planets. Very early planets tended to orbit closely to their star, which increased the oscillations favored by the Gravity Method

•	numPlanets: I created this variable. This is the number of planets discovered in the same year as the particular exoplanet by the same planetary discovery method 

### Planet Discovery Methods
PLANETDISCMETHOD: Method used to discover the planet. This is a category, since there are very few methods used. The methods are as follows

•	Transit: The planet moving in front of its star causes an eclipse when viewed from Earth and thus the star's luminosity decreases.

•	Timing: Other timing methods such as Pulsar Timing (for planets discovered around Pulsars)

•	Radial Velocity (RV): The planet's gravity causes the star to oscillate. By measuring the oscillation, we can approximate the planet's mass, radius, and orbit. This was the earliest method used, and it typically favors larger planets. 

•	Imaging: The planet was directly imaged. This is a new method at the time the data was collected.

## Outliers and NA
Exoplanet detection is still a new field. Thus, the data itself was incomplete. If the planet lacks any of these features, it is not taken into consideration. This is purely for the purpose of preserving the visualization. In addition, planets with extremely large radii and extremely long periods have been discovered. Free-floating planets have also been discovered, which are represented by an infinite period. Since such outliers are so far rare, they have been excluded from the visualization. As the data is right-skewed, the range of both the Period and the Radius is artificially limited to show the relevant trends.

## Structure of visualization

* Circle: Each circle represents a planetary discovery method. Since there are four discovery methods, each year has up to four circles. Note that some of these methods didn't exist in the 1990s and 2000s. Also, some of these methods didn't yield any discoveries or their planets were removed from consideration as described in the section above. Thus, the circles representing some methods don't appear every year.

* x-Axis: The radius of the planets as a ratio of Jupiter's radius

* y-Axis: The planet's equivalent of a year (period) measured in days

* Centroid-x: The median radii of the planets discovered that year

* Centroid-y: The median period of the planets discovered that year

* Radius: The square root of the number of planets discovered by each method that particular year. We want the circle's area to be proportional to the number of planets discovered that year.

* Coloring: Each method should have its own coloring which lets it stand out when compared to other methods.

## Analysis
The visualization confirms the exponential nature of planetary discoveries. At the same time, it hints at the continued predominance of the transit method. However, there is still not enough information for us to safely assume that this proves Transit is the most effective method. Remember, a lot of planets were removed from this dataset because one of these parameters wasn't listed in the publicly available dataset. With this limitation in mind, we can make the following tentative observations

The median radius and period of planets discovered have increased. The increase in the period hints at an increase in the sensitivity of planet hunting instruments, since a planet that's farther away from its host star requires more sensitive instruments to detect. The increase in median Radius presents a complication in that this median hides the fact that newer instruments can detect ever smaller planets. 

As more data comes in, this visual should improve in its functionality

## Feedback
The feedback came from a variety of sources, both Udacity and co-workers. The co-workers reviewed it, but I don't have their permission to publicly list their names. Instead, I will put their contributions in its own list. I receive some Udacity feedback from the reviews of previous submissions. Since I don't know the reviewer's name, I will just list them as Reviewer 1, Reviewer 2, etc.

Co-workers

* The legend is poorly aligned

* The title can't simply be two words, pleas make it longer

* You need to fix the x and y axis. Since the distribution is exponential, people may miss the smaller bubbles

Udacity

* Take the square root of numPlanets so that the circle area is proportional to the number of planets discovered (Sheng Kung, Udacity Coach)

*  Please be sure to include an explanation for all visual encodings, position, color, etc. (Reviewer 1)

* Communicate the findings and explanations within the visualization, either in the title, a paragraph, or an animation (Reviewer 2)

* The points are too small (everyone at Udacity)

* Consider using a different scale (Geore Liu)

* Get rid of the gridlines (Myles Callan)

* Tooltip configured incorrectly (Myles Callan and George Liu)

### Previous Versions
1. 

2. http://bl.ocks.org/vtocitu365/cda2fa4f7e47e57ba1d6c170bf761388

## References

http://exoplanets.org/index.html
 
https://en.wikipedia.org/wiki/Methods_of_detecting_exoplanets

https://en.wikipedia.org/wiki/Jupiter

https://en.wikipedia.org/wiki/Earth

https://brettwgreen.com/2013/01/16/motion-chart-using-d3-js/

http://stackoverflow.com/questions/13465796/d3-javascript-difference-between-foreach-and-each
