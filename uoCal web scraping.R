### Library Pacakges needed for this project
library("xml2")
library("Rcrawler")
library("httr")
library("data.table")

### Function
### The original function came from the ContentScraper from Rcrawler. 
### However, this didn't work well in the ComputeCanada environment.
### Therefore, I had to add a few lines of code to avoid errors that I encountered.
### Due to the copyright, I don't believe that I could post. 
### The original Rcrawler package code can be found: https://github.com/salimk/Rcrawler


### scrapping

x<-1:25000

urllist <- lapply(x, function(x){
  uocal_url <-paste("https://uocal.uottawa.ca/en/node/",x,"/",sep='');
  return(uocal_url)
})

DATA_RAW<-ContentScraper_Modification(Url=urllist, XpathPatterns=c("//h1[@id='page-title']",
                                                        "//span[@class='date-display-start']/text()",
                                                        "//span[@class='date-display-end']/text()",
                                                        "//span[@class='date-display-single']/text()",
                                                        "//a[contains(@href, 'field_event_type')][1]/text()", 
                                                        "//a[contains(@href, 'field_event_type')][2]/text()",
                                                        "//a[contains(@href, 'field_event_type')][3]/text()", 
                                                        "//a[contains(@href, 'field_event_type')][4]/text()",
                                                        "//a[contains(@href, 'field_event_type')][5]/text()", 
                                                        "//a[contains(@href, 'field_event_type')][6]/text()",
                                                        "//a[contains(@href, 'field_event_type')][7]/text()", 
                                                        "//a[contains(@href, 'field_event_type')][8]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][1]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][2]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][3]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][4]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][5]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][6]/text()",
                                                        "//a[contains(@href, 'field_event_organization')][7]/text()",
                                                        "//a[contains(@href, '/en/map')]/text()",
                                                        "//div[@class='field field-name-field-event-roomnum field-type-text field-label-inline clearfix']/*/div[@class='field-item even']/text()"), 
                           PatternsName = c("Title", "Start", "End", "SingleDate", "ET1", "ET2", "ET3", "ET4", "ET5", "ET6", "ET7", "ET8", "EO1", "EO2", "EO3", "EO4", "EO5", "EO6", "EO7", "Location", "Room"))

df_raw <- rbindlist(DATA_RAW)
write.csv(df_raw, "FileName.csv")