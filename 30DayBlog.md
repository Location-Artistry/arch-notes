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
---
### #10-21-2023
I've figured out how to get the SD card working on arch, and cleared off some
space on the drive, so now we're cooking!  Downloaded the Kalamazoo GTFS transit
data from transitland and have extracted into SD working directory.  I'll need 
to review a Colab notebook that I created for a take home project related a job
interview where I analyzed transit data for Wien(Vienna).  Also need to download 
the KATS data from my email for kalamazoo bicycle infrastructure.  

Discovered that transitland already provides a GeoJSON API, which I have used
directly as read_file via GeoPandas.  Very handy, excellent API, but no need 
to parse the GTFS data from txt or csv via Rust.  What I do find myself needing
on the chromenbook is a method to convert and visualize geodata without needing
to install a heavy app such as QGIS. Data is Geopackages from KATS.  Another
project idea is a frontend app to upload Geodata of your choosing, use rust
to convert the data into something that can be mapped.  What about converting
into GeoParquet with rust API and then loading directly as GeoArrow/Array into
a DeckGL map? Could start with map via Observable, and then create-react-app.

---
Installing GeopyCLI to convert and map some data
```bash
python -V #3.11.5
pacman -S python-pip 
python -m venv .venv #create virtual environment
# all py venv will be in dev/venvs if not project related
# arch would not let me install in main environment!
# GeopyCLI is working, but permissions challenge on SD card
ls -l #show owner permissions
sudo chown -R pi 30daymap2023 #still permission denied
```
I've just copied some of the data over to main disk to try GeopyCLI.
It did work to convert the GeoPackage into GeoJSON!
Also the map command appears to work, but the coordinate system is a local one.
Using rust to also project the coordinate system would be nice.
I can do this easily with GeoPandas, but what about rust?  Could be a nice first
project for 30dayMC.  Will need to find some point data to work with however!
```bash
pip install matplotlib
# python geopandas working inside of neovim
pip install ipython #let's get some interactivity in the terminal!
pip install pyqt5 #get visuals to show for matplotlib?
# this works hooray! 
```
---
### #10-26-2023
Very cool stuff with the ipython plots in the terminal with python scripts.
Reduces the need for using Jupyter notebooks in the terminal and on lightweight distros
such as Arch Linux.  Also helps to cut eliminate VSCode once and for all!
I haven't even installed it on this chromebook, not sure I've got the disk space
or ram to make it work.  Installing several of the neovim Jupyter plugins never
seemed to work anyway, and this is one of the key use cases for those plugins.

```bash
# better plots in qt5?
pip install pyqtgraph
```
pyqtgraph doesn't seem great.  Just use standard plt and run ipython geo_scripts.py
- PYQT5 is not very user friendly and matplotlib formatting doesn't affect the displayed plot
- DIfficult APIs from the C binding, though it does work nice for a GUI application with interactivity
- Cannot get geopandas to work with it at this point
Let's try some other geopandas plotting options:
pip install folium mapclassify

https://github.com/interline-io/transitland-server/tree/main
- OK working on the transitland API docs!
- Been a bit tough to get the apikey parama working, but I think it;s good.

Figured out how to take screenshot with arch: import etc...
Also formatted the feeds.json with jq
WMU paper on kalamazoo metro transit evaluation
- https://wmich.edu/sites/default/files/attachments/u883/2016/4-4_Smith.pdf
Random site with US GTFS feeds as GeoJSON!
- https://gtfs.pro/en/usa/Kalamazoo-Metro-Transit/university-of-michigan
- https://wmich.edu/transportationcenter/technical-reports

---
Quick fixing of autocomplete options with nvim-cmp.  
Previously was <C-y> which was a horrible mapping!   
Finally fixed it to use <CR> for select, and <C-j/k> to navigate!

---
#11-25-2023
pip install pywidgets
- having some success formatting folium map with routes, stops and service area.
- Made a separate color route dict to assign colors based on route_long_name for routes & stops
- Some strange mismatch between the colors in the map and the legend
- Working to print to screen some more of the dataframe details, though all fields are truncated in ipython
- This has been a challenge before, limiting the usability fof python data anlysis on the chormebook
- Trying to install ipytwidgets to see if it can provide some additional output options.

