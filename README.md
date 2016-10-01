# Data-Visualization
http://bl.ocks.org/vtocitu365/148cbea1ec72254ea3db79d4493756a0

## Gist Address
https://gist.github.com/vtocitu365



## Summary
Every year, telescopes such as the Kepler Space Telescope discover hundreds of worlds. These telescopes not only confirm the planet's existence, but they also record characteristics of the planet such as its Radius and its Period (the time it takes the planet to orbit the star). Using Hans Rosling’s Gapminder visual format, this visualization explores the following questions

1. How many planets were discovered each year?
2. Which planetary discovery methods have been the most effective?
3. How has the median Period changed ove the years?

## Design

### What is the structure of your dataset?

There are 5454 different exoplanets in this dataset with 4 features. 

•	DATE: The year the planet was discovered (starting in 1990)

•	Radius: The radius of the planet as a ratio of Jupiter's radius

•	numPlanets: I created this variable. This is the number of planets discovered in the same year as the particular exoplanet by the same planetary discovery method 

### Planet Discovery Methods
PLANETDISCMETHOD: Method used to discover the planet. This is a category, since there are very few methods used. The methods are as follows

•	Transit: The planet moving in front of its star causes an eclipse when viewed from Earth and thus the star's luminosity decreases.

•	Timing: Other timing methods such as Pulsar Timing (for planets discovered around Pulsars)

•	Radial Velocity (RV): The planet's gravity causes the star to oscillate. By measuring the oscillation, we can approximate the planet's mass, radius, and orbit. This was the earliest method used, and it typically favors larger planets. 

•	Imaging: The planet was directly imaged. This is a new method at the time the data was collected.

## Outliers and NA
Exoplanet detection is still a new field. Thus, the data itself was incomplete. If the planet lacks any of these features, it is not taken into consideration. This is purely for the purpose of preserving the visualization. In addition, planets with extremely large radii have been discovered. Since such outliers are so far rare, they have been excluded from the visualization. As the data is right-skewed, the range of and the Radius is artificially limited to show the relevant trends.

## Structure of visualization

* Circle: Each circle represents a planetary discovery method. Since there are four discovery methods, each year has up to four circles. Note that some of these methods didn't yield any discoveries or their planets were removed from consideration as described in the section above. Thus, the circles representing some methods don't appear every year.

* x-Axis: The year in which the planet was discovered.

* y-Axis: The log of the number of planets discovered that year

* Radius: The median Radii of the planets discovered that year.

* Coloring: Each method should have its own coloring which lets it stand out when compared to other methods.

## Analysis
The visualization confirms the exponential nature of planetary discoveries. At the same time, it hints at the continued predominance of the transit method. However, there is still not enough information for us to safely assume that this proves Transit is the most effective method. Remember, a lot of planets were removed from this dataset because one of these parameters wasn't listed in the publicly available dataset. With this limitation in mind, we can make the following tentative observations

The median radius of the planets discovered has increased. This is a surprise. The first is that some of the largest planets detected are very close to their stars, with periods of days. Thus, these were the first planets ever detected as they were the easiest to detect. As the instruments became more sensitive, smaller planets were able to be discovered. Of course, any method which discovers smaller planets is more than capable of discovering the easy-to-find large planets. 

As more data comes in, this visual should improve in its functionality

## Feedback
The feedback came from a variety of sources, both Udacity and co-workers. The co-workers reviewed it, but I don't have their permission to publicly list their names. Instead, I will put their contributions in its own list. I receive some Udacity feedback from the reviews of previous submissions. Since I don't know the reviewer's name, I will just list them as Reviewer 1, Reviewer 2, etc.

### Version 1
http://bl.ocks.org/vtocitu365/1df33113d3c03f294f6add0740df4435
https://gist.github.com/vtocitu365/1df33113d3c03f294f6add0740df4435

This is the feedback I received in version 1: 
Co-workers

* The legend is poorly aligned

* The title can't simply be two words, pleas make it longer

* You need to fix the x and y axis. Since the distribution is exponential, people may miss the smaller bubbles

Udacity

* Take the square root of numPlanets so that the circle area is proportional to the number of planets discovered (Sheng Kung, Udacity Coach)

*  Please be sure to include an explanation for all visual encodings, position, color, etc. (Reviewer 1)

To fix the problems, I changed the alignment of the legend to be closer to PLANETDISCMETH. I changed the title. To show the smaller bubbles, I added an x and y maximum override. Unfortunately, that didn't show many of the smaller bubbles. I changed the Summary and Analysis sections of the Readme in response to Reviewer 1.

### Version 2
http://bl.ocks.org/vtocitu365/cda2fa4f7e47e57ba1d6c170bf761388
https://gist.github.com/vtocitu365/cda2fa4f7e47e57ba1d6c170bf761388

Here is the feedback I received for this version. All this feedback was from Udacity reviewers

* Communicate the findings and explanations within the visualization, either in the title, a paragraph, or an animation (Reviewer 2)

* The points are too small (everyone at Udacity)

* Consider using a different scale (Geore Liu)

* Get rid of the gridlines (Myles Callan)

* Tooltip configured incorrectly (Myles Callan and George Liu)

To fix the problems above, I expanded the title and wrote text explaining the visualization. I used log10 for both the x and y axis. I also got rid of the gridlines.

### Version 3
http://bl.ocks.org/vtocitu365/e3bd334d89c1a6083a1da33ccc9d65d7
https://gist.github.com/vtocitu365/e3bd334d89c1a6083a1da33ccc9d65d7

I received the following feedback from the Udacity reviewer:

* This figure has 'low information density'.

* Place the year on the x-axis, the number of planets on the y-axis, and the Period as the radius, and the planet's radius as the colorscheme.

* Properly align the text

I adopted his suggestion, with one exception. I still wanted to keep the PLANETDISCMETH as the color. Thus, I got rid of the period as a variable. Instead, I added an animation which should highlight different planetary discovery methods. 

## References

http://exoplanets.org/index.html
 
https://en.wikipedia.org/wiki/Methods_of_detecting_exoplanets

https://en.wikipedia.org/wiki/Jupiter

https://en.wikipedia.org/wiki/Earth

https://brettwgreen.com/2013/01/16/motion-chart-using-d3-js/

http://stackoverflow.com/questions/13465796/d3-javascript-difference-between-foreach-and-each

http://jsbeautifier.org/
