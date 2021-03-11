# TERPcravingz

### Business Scenario:
TERPCravingz is a medium sized restaurant review platform that showcases restaurant information, restaurant review information, and UMD Shuttles to the restaurant of choice.
 
TerpCravingz has a demand for improvement of user experience by adding analytical dashboards on their website as an add-on feature so that users can view these analytical insights and have an overall idea immediately of the best restaurants around. End users are entrepreneurs who are looking for restaurant business opportunities nearby University of Maryland (UMD) and need analysis insights for their decision making, and customers who want to find their best restaurants to visit. In addition, customers can get information about the UMD shuttles passing by the restaurant and the nearest shuttle stop to the restaurant that they want to visit. Apart from analytical and travel-searching functions, the ordinary queries are available on TerpCravingz, so that customers can look up on TERPcravingz website for reviews of restaurants and other information to which TERPcravingz offers the access for all visitors.

TerpCravingz is an imaginary restaurant review platform that has real data about the restaurants surrounding the University of Maryland, College Park. As the leader of my group, I ensured that at every step of the journey, we gave our best as a team. The first team assignment we did was to web scrape Yelp restaurant data and University of Maryland Shuttle service data in python.
After successfully retrieving the unstructured data, we set to clean and manipulate the data to align it to our project’s goals. Following this, we Identified business transactions, entities, attributes, relationships, degrees, constraints, Entity Relationship diagram, normalization, business transactions and functional dependencies. Since we had a lot of text data, we
formulated and generated a text analysis model in python that would classify a review as positive or negative and verified the results with another AFINN Sentiment Model coded in R. Finally, we constructed multiple dashboards in tableau and quite a handful of SQL queries in MySQL to present findings to two types of clients: one who wants to build a restaurant and one
who wants to find a restaurant. 

The first handful of queries study University of Maryland shuttle stops which have around 100 restaurants within a 15-minute walkable distance from them. The goal of this analysis is because the budding entrepreneur client does not want their restaurant to be located in an area neither too populated with competitive restaurants nor too deserted. At the same time, the want their restaurant to be reachable via the UMD shuttle service and not just uber or metro buses. From this analysis, 11 cities are shortlisted along with the names of the stops in each cities that satisfy the conditions mentioned. On these 11 shortlisted cities, the next set of queries is executed. This analysis deals with finding what the top restaurant themes are in each of those cities based on three factors – well-known, well-received and affordable. Well-known relates to a higher number of written reviews by the people who have experienced a particular restaurant theme. Well-received relates to a higher number of positive reviews received by a restaurant theme. Affordable relates to cheaper prices of food items pertaining to that particular restaurant theme. In this way, a decision tree graph is created to present to the entrepreneur client. Following this, the client can select the restaurant theme and location according to his taste and financial budget.

For our clients who check out our online restaurant review services, we executed a whole different set of SQL queries on Tableau to create dashboards that are fed by live data and updated dynamically. These Tableau dashboards were then presented in the form of standalone HTML pages to give dynamic insights to people searching for restaurants to dine in and are clueless about the distribution of restaurants around the UMD campus. To add to this, a review classification system is what we implemented that takes all the reviews of a restaurant as input, uses tokenization, lemmatization and Named Entity Recognition to classify the reviews as positive or negative. This way a completely new client would know the summary reports of the restaurants nearby the UMD campus.



### Links to Results:
1. Finalized ER Schema and Diagram: https://drive.google.com/file/d/1PrFhhRdhP61D4BCFfw33K_vez5adlGKZ/view?usp=sharing
2. 


### Team members: 
Cindy Chang, Aishwarya Bhangale, Jiakun Luo, Huyen Nguyen, Wenjing Cui.

