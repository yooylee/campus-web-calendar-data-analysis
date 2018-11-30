# Analysis and visualization of the campus web calendar data with R & Python

The R and Python codes used for this project

## Research Question

In the past few years, the University of Ottawa Library has significantly increased its outreach activities by sponsoring or co-sponsoring events in library spaces where rooms are equipped with cutting-edge technologies.

As there are competing demands for library spaces, we have to prioritize requests in order to maximize their usage and provide our users with alternate spaces available on campus.

However, there was no information available about how campus spaces were used for events based on their types. Therefore, we seek to answer our research question using uoCal data, the online campus-wide calendar of events.

## Methods

Since uoCal, the online campus-wide calendar of events, contains comprehensive information on campus events, we decided to utilize uoCal data to analyze and visualize how campus spaces have been used based on event types and hours.

Using R and Python, we scrap web data, conduct data wrangling, analyze, and visualize datasets in order to make evidence-based decisions.

### First Step: web scraping

Using ComputeCanada with R, we were able to download 10,757 datasets from uoCal available since 2011 on November 22, 2018.
File: uoCal web scraping.R
