# Hunter's Brook Notes 2024
#July26-2024   
UP cabin notes, Cornell MI NW of Escanaba, confluence of Hunter's Brook and the
Escanaba River. No internet connection, no browsing just notes :)  

---

### ASL Ideas
Rethinking conversation from last week with Kelley and Mary regarding long term 
goals and personal development.  I came up with training from ASL engineers.  
Other areas of interest to explore:   
- Innovative hardware interface/GCS project
- Upcoming Geospatial Technologies
- Incorporating GeoAI into workflows
- Documentation as code 
- Time to refactor and rework code and concepts
- React training with developers 

Finding methods to incorporate upcoming products, product pipeline, into 
personal development ideas. Continue to add value and innovation using 
personal developemnt projects.
#### Add Value
- Improve uptime on Solutions API
- Best practices doc for Marketplace App Dev
- Scheduled time to review, refactor, and test code 
- Simple automated E2E testing for apps after changes to main
- How can codebase be more reusable? Generics, Decoupling
- Generics & Hooks, Generic DataStore using Factory Pattern 

#### HexGen Related:
- 3D surface visualizations
- Land Use Land Cover
- LiDAR surface and 3D viz 
- Emergency Landings  
- LULC as proxy for population...
- Population as proxy for other data  

#### Main Areas of Focus:
- Full Stack Development
- Geospatial Data Science 
- Data visualizations
- UAS Hardware/Software interface 
- 3D/4D analysis and visualization 

---

### Refactor Concepts 
Review each of the existing apps   
Which components are most often used across apps?   
Which components are best candidates for reusability?  
Begin implementing new cross-app decoupled components   
Code base will continue to grow as new apps are added   
How can we reduce/minimize amount of code?   
Most important part for tech debt & maintainability?   
Not testing necessarily, but having less code to maintain!  
By limiting and/or eliminating code from code base we make our current and 
future lives better!   
We want our code to be more integrated across apps and not less.   
Tighter integration gives us the benefits of shared code.    
Without this we may as well have separate projects   
With less code it will be easier to test and make sure things are working across the marketplace  
##### Steps:
1. Remove any legacy planner ETL code, stash in legacy planner branch 
2. Remove relics of planner code that are no longer needed 
3. Review component usage across apps as shown above 
4. Re-write new reusable components and begin implementing
5. How can components and Types be more generic?  
6. Can we spread a variety of props to eliminate number of named props?
7. Similar process for hooks, which logic is used across apps? 
8. 

#### Ideas:
- place context into custom hook => useDataStore() 
- Need to investigate this more


