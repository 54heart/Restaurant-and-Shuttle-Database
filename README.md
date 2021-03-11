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


Describe business processes/transactions in sentences.
●  	There are various restaurants listed on the company’s website. Each restaurant is described by a unique identifier, name, address (including street name, city, state and postal code), phone number, coordinates (described by the latitude and longitude in decimal format), the expensiveness of the restaurant(on a scale of 1 to 5), whether or not it makes deliveries or takes pick-ups (labeled as resTransactionType), average rating (shown as the number of stars from 0 to 5) and the total number of its reviews in the database. Moreover, the schedule of the time when the restaurant opens and closes from Monday to Sunday is also stored. 
●  	Foods that a restaurant sells can fall into various categories (Mexican, Italian, etc). Each category is assigned a unique identifier and gets its name as well. Each restaurant may belong to one or more categories, depending on the type of dishes it serves. A category of food can be served by multiple restaurants. 
●  	Customers can eat at any restaurant and decide whether to leave reviews for restaurants where he or she visits after meals. But he or she can leave no more than one review for each meal. Furthermore, a customer can write many online reviews to a restaurant and the number of reviews should be equal to that of visits. Each customer has a unique customer identifier and a customer name. A review is stored by its unique identifier, the rating (the number of stars) that customer assess the restaurant and the text content of the review.
●	Even though a customer is logged off for some reason, reviews provided by him or her for restaurants will remain the same. Besides, if a restaurant breaks down or move outside of the surveyed area, reviews that the restaurant obtains will not deleted or changed with the withdrawal of the restaurant.
●  	Apart from restaurant information, UMD shuttles have at least one station on their scheduled routes.  The UMD shuttle is identified by a unique identifier, bus number, bus name, bus final destination. 
●	Also, there is a stop, among all stations at which shuttles stop routinely, nearest to each restaurant, compared with other stations. Meanwhile, restaurants can share the same nearest stop or have their own nearest stops. The shuttle stops are recorded by unique stop identifiers, and corresponding stop coordinates (including the latitude and longitude information).
●  	TERPcravings allows customers to drop their reviews in the comment section for the restaurant that they have dined in.

Entities, Attributes and Primary Keys
●	Restaurant(resId, resName, resStreet, resCity, resState, resPostalCode, resPhoneNo, resLat, resLong, resStars, resRevCNT, resPrice, resTransactionType, monStartTime, monEndTime, tuesStartTime, tuesEndTime, wedStartTime, wedEndTime, thurStartTime, thurEndTime, friStartTime, friEndTime, satStartTime, satEndTime, sunStartTime, sunEndTime)
●	Category(categoryId, categoryName)
●	Customer(cusId, cusName)
●	Review(revId, revRating, revText)
●	Shuttle(busId, busNo, busName, busFinalDest)
●	Stop(stopId, stopName, stopLat, stopLong)




Relationships, Attributes, Degrees, Participating Entities and Constraints
●	Have: binary relationship:
1 shuttle to 1 or more stops
1 stop to 1 or more shuttles
●	Belong: binary relationship:
1 restaurant to 1 or more categories
1 category to 0 or more restaurants
●	Be nearest(walkTimeToRes): binary relationship
1 restaurant to 1 stop
1 stop to 1 or more restaurants
●	Write: ternary relationship:
1 customer and 1 restaurant to 0 or more reviews
1 customer and 1 review to 0 or 1 restaurant
1 review and 1 restaurant to 0 or 1 customer


### Google Doc Links:
1. Finalized ER Schema and Diagram: https://drive.google.com/file/d/1PrFhhRdhP61D4BCFfw33K_vez5adlGKZ/view?usp=sharing


### Team members: Aishwarya Bhangale, Cindy Chang, Jiakun Luo, Huyen Nguyen, Wenjing Cui.

