# Global Water Title Grid
This is a visualization, where I used the World Title Grid Map to improve the original design, which visualized global water safety using each country's Environmental Performance Index (EPI) score for water quality, making it more informative and effective.\
The original data visualisation selected for the assignment can be found at:
https://www.qssupplies.co.uk/worlds-most-dangerous-drinking-water.html

## Objective
The goal of this visualization is to illustrate global water safety by using each country’s EPI score for water quality. It aims to clearly show the differences in water safety across nations, enabling viewers to quickly identify areas with high or low water quality and make comparisons between countries.

## Audience
This visualization is targeted at environmental researchers and public health advocates who are focused on global water safety challenges. It is also relevant for the general public, particularly travelers, who want to check the water safety of their destination and have preparations.

## Critique
The visualization chosen had the following three main issues:
### 1. Cluttered design:
The cluttered labels and overuse of lines pointing to data points drastically undermine the readability and usability of the visualization. In crowded sections of the chart, such as where countries like Niger or Chad with low EPI scores are represented by smaller markers, the labels and lines are packed too tightly. These lines, intended to help direct attention to the correct markers, often overlap or come too close to one another, making it difficult to tell which label corresponds to which country. This confusion forces viewers to spend unnecessary time sorting through the mess of labels, lines, and markers, disrupting the flow of information and frustrating users.
### 2. Ineffective comparison:
The original visualization, with its water droplet shape and circular markers of varying sizes, presents significant challenges in terms of comparison. The use of circles makes it unclear whether the perception of size, color, or position differences. This is especially problematic when trying to compare countries with lower EPI scores. For example, nations with smaller markers, like Niger or Haiti, are often densely packed and poorly labeled, making it difficult to differentiate between them. Adding to the confusion, countries with similar EPI scores are not grouped together, particularly those with low scores, which complicates direct comparisons. It’s almost impossible to make comparison between Mauritania (13.6 epi score) and Namibia (18.9 epi score) on the plot. This makes it hard for users to quickly scan the visualization for comparing similar data points scattered across the visualization.
### 3. Data weighting:
The use of varying marker sizes in the original visualization causes larger circles to stand out more, even when they do not represent the most important data points. This visual imbalance can lead viewers to mistakenly focus on countries with larger markers simply because they are more noticeable, rather than because their data is more relevant. At the same time, countries with lower EPI scores, which often have the most critical water safety concerns, are represented by smaller, less prominent circles, making them harder to find. As a result, users have to spend additional time searching for key information. For example, countries like the United States or Canada might have larger circles, even though their water safety scores may not be particularly notable. On the other hand, countries such as Niger, with a low EPI score of 1.7, have circles so small that they are barely visible. This imbalance distorts the viewer’s perception, emphasizing data that may not be as significant and downplaying critical information from countries with much lower scores.

## References
Bob, R. (2019, July 17). World tile grid geom for ggplot2 [WIP]. Retrieved September 24, 2024, from Github website: https://github.com/hrbrmstr/worldtilegrid. <br />
Centers for Disease Control and Prevention (CDC). (n.d.). Food and water safety. Retrieved September 24, 2024, from CDC Travelers’ Health website: https://wwwnc.cdc.gov/travel/page/food-water-safety. <br />
Jon, S. (2017, October 12). The world tile grid map. Retrieved September 24, 2024, from PolicyViz website: https://policyviz.com/2017/10/12/the-world-tile-grid-map/.<br />
Kylie, W. (2023, August 3). Where is the world’s most dangerous drinking water? Retrieved September 24, 2024, from QS Supplies website: https://www.qssupplies.co.uk/worlds-most-dangerous-drinking-water.html. <br />
Reddit. (n.d.). Quality of drinking water – Proud to be Austrian. Retrieved September 24, 2024, from Reddit website: https://www.reddit.com/r/dataisugly/comments/1dp2cf7/quality_of_drinking_water_proud_to_be_austrian/. <br />
Reddit. (n.d.). Quality of drinking water – Proud to be Austrian. Retrieved September 24, 2024, from Reddit website: https://www.reddit.com/r/HydroHomies/comments/1doaxkl/quality_of_drinking_water_proud_to_be_austrian/. <br />
Yale Center for Environmental Law & Policy. (2022). EPI Results 2022: Component - Unsafe drinking water (UWD). Retrieved September 24, 2024, from Yale University website: https://epi.yale.edu/epi-results/2022/component/uwd
