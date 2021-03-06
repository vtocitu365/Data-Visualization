# Data-Visualization
http://bl.ocks.org/vtocitu365/b46419c1df363018e6bd6250d2b3658d

## Gist Address
https://gist.github.com/vtocitu365



## Summary
Every year, telescopes such as the Kepler Space Telescope discover hundreds of worlds. Using Hans Rosling’s Gapminder visual format, this visualization explores the following questions

1. How many planets were discovered each year?
2. Which planetary discovery methods have been the most effective?

The visualization confirms the exponential nature of planetary discoveries and hints at the continued predominance of the transit method. However, there is still not enough information for us to safely assume that this proves Transit is the most effective method as a lot of planets were removed from this dataset because one of these parameters wasn't listed in the publicly available dataset.

## Design

### What is the structure of your dataset?

There are 5454 different exoplanets in this dataset with 4 features. 

•	DATE: The year the planet was discovered (starting in 1990)

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

* Bar: Each bar represents the number of planets discovered using a particular discovery method for a period of a year.

* x-Axis: The year in which the planet was discovered.

* y-Axis: The log of the number of planets discovered that year

* Coloring: Each method should have its own coloring which lets it stand out when compared to other methods.

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

### Version 4
http://bl.ocks.org/vtocitu365/148cbea1ec72254ea3db79d4493756a0

https://gist.github.org/vtocitu365/148cbea1ec72254ea3db79d4493756a0

I received the review to make it a bar chart.

### Version 5
http://bl.ocks.org/vtocitu365/f38a96a0fa701f398fc72ca08de02b4b

https://gist.github.com/vtocitu365/f38a96a0fa701f398fc72ca08de02b4b

I received the review to make it a dodged bar chart.

### Version 6
http://bl.ocks.org/vtocitu365/ec061f5d5b3c36e8d40ac053e9251040

https://gist.github.com/vtocitu365/ec061f5d5b3c36e8d40ac053e9251040

The reviewer asked to fix the tooltip's position and incorrect values.

## References

http://exoplanets.org/index.html
 
https://en.wikipedia.org/wiki/Methods_of_detecting_exoplanets

https://en.wikipedia.org/wiki/Jupiter

https://en.wikipedia.org/wiki/Earth

https://brettwgreen.com/2013/01/16/motion-chart-using-d3-js/

http://stackoverflow.com/questions/13465796/d3-javascript-difference-between-foreach-and-each

http://jsbeautifier.org/

http://bl.ocks.org/mbostock/1087001

https://github.com/Caged/d3-tip/blob/master/docs/positioning-tooltips.md

http://canvasjs.com/docs/charts/basics-of-creating-html5-chart/tool-tip/

https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple#newSvg
