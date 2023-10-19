# 30DayMapChallenge2023
## Updates
---
### #10-19-2023
Current next steps for 30Day GeoRust Project
1. Work through some more basic rust commands using Rust in 30 min
2. Attempt more example code in the GeoRust Book examples
3. Test some code using Polars/GeoPolars to process real data
4. Build a very simple API using axum following tutorial
5. Test LV blog, fix avatar pic
6. Add new short blog post for 30DayMapChallenge2023

Possible project ideas:
1. Online geoodata convertor and mapping service similar to geojson.io
2. Command line geodata convertor and ability to send file to map
3. Focus on KML conversion/parsing for data formats
4. API to map and explore transit data
5. Rust backend serving geodata and tiles, JS frontend for local transit data

I'm leaning towards number 5 just looking at the options now.  I can start with
the minimal bicycle route data I've collected for Kalamazoo Metro are from KATS.
I could potentially add the OSM data for the region, and look for any public 
transit data that is available.  Could hand code or scrape some of the bus and
train data as part of the project.  Ideally it would look like this:

Backend:   Rust/Axum
Frontend:  Typescript/DeckGL
Database:  Postgres/DuckDB?
Transfer:  GeoParquet/GeoArrow

Would be really amazing to load the data directly into DeckGL via GeoArrow.
Will need to review Kyle Barron's articles on zerocopy geodata viz
