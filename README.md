#Everything App
##UCLA Game Lab Inventory Tracking System

###Problem
The UCLA Game Lab makes many games that exist beyond the screen. Custom electronics and physical construction are the norm around here. Over the years we have accumulated lots of various leftovers and stock that can be reused for new projects. There is so much of it that it's hard for our game designers to know what we have. And because many of our projects are spontaneous, our inventory is constantly changing. We need a way to audit our inventory on a regular basis to ensure it's accuracy. 

###System
- Everything in the Game Lab is either a user, container or item
- Users and containers can have many items
- Containers can also have many containers
- Users can also be workers
- Every item and container has a barcode
- Every item and container has an expiration date
- Once a expiration date has passed, the item or container is added to a mainence list
- Workers remove items from the maintence list by validating their info (location, quantity, condition, etc...)
- Users can search the inventory by location, keywords, categories, etc...

###Item Model
Because our inventory is so variable the first step was to start cataloging everything to better understand how they might be organized. Everything has been entered into a spreadsheet, new sheets were added as needed to ensure normalization. I ended up with eleven different types of items: 
- Books
- Video Games
- Board Games
- Cables
- Tools
- Consumable Supplies
- Power Supplies
- Computers
- Software
- Computer Peripherals

I was concerned with having to maintain so many different types in the application. I wondered how sites such as Amazon or McMaster-Carr model their data. In the end I found no definitive reference for how to model this correctly so I decided to use Single Table Inheritance. 

So all types inherit from Item. I can search for things via Item or more specifically through one of it's subtypes. This also allows me to validate data at different levels of granularity. The only problem I could see with this was having sparsely populated tables. To mitigate this I used a Postgres HStore field for dissimilar attributes. The advantage here is I can still search across type specific attributes at the database level. 

Besides recording an items attributes, I also wanted to keep track of their location. This would be either a container or a user. For this I used a polymorphic belongs_to relationship. On the other side the _possessor_ has many items. This way I can update the location on the item and it will also update for the previous and current location's properties as well. 

###Container Model
I wanted to be able to search by location at different levels of granularity so I imagined that a tree structure would work well for this. The lab itself is the grandparent node. I'm using the [closure_tree](https://github.com/mceachen/closure_tree) gem. My requirements were minimal but I went with this over the other options because it looked active and mature. I'm also happy with the interface it provides with interacting with the tree. 

Other than supporting the tree structure, the container model has a barcode and expiration date for inventory audits and a description for searching. Workers can try to sort items into similarly themed containers (e.g. all screws in the same container) and then modify the description accordingly.

###User Model
Should keep track of authorization and permissions in the app. Also keeps track of what items the user is in possession of, can setup auto notifications for when items should be returned or when items / containers need to be audited. 

###Current Development Status
I've done the bulk of the work setting up the models for items and containers. I've yet to get into modelling the user. The last feature I added was a custom rake task to import our working database in google docs for development purposes. I'm taking some time from developing this to learn more about TDD. I learned a little from Michael Hartl's Rails Tutorial. But only enough to know I need it, not enough to write my own tests. So I'm blocked at the moment until I can start writing some tests. 
