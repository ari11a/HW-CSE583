(base) renzt@zitongdeMacBook-Air ~ % mkdir ~/cse583/pronto
(base) renzt@zitongdeMacBook-Air ~ % cd ~/cse583/pronto
(base) renzt@zitongdeMacBook-Air pronto % echo "These are data" > README.txt
(base) renzt@zitongdeMacBook-Air pronto % mkdir ~/cse583/pronto/data
(base) renzt@zitongdeMacBook-Air pronto % cd ~/cse583/pronto/data
(base) renzt@zitongdeMacBook-Air data % curl -L 
https://s3.amazonaws.com/pronto-data/open_data_year_one.zip -o open_data_year_one.zip
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 70.8M  100 70.8M    0     0  1686k      0  0:00:43  0:00:43 --:--:-- 4619k
(base) renzt@zitongdeMacBook-Air data % unzip open_data_year_one.zip
Archive:  open_data_year_one.zip
  inflating: 2015_station_data.csv   
  inflating: 2015_status_data.csv    
  inflating: 2015_trip_data.csv      
  inflating: 2015_weather_data.csv   
  inflating: README.txt
(base) renzt@zitongdeMacBook-Air data % head 2015_trip_data.csv
trip_id,starttime,stoptime,bikeid,tripduration,from_station_name,to_station_name,from_station_id,to_station_id,usertype,gender,birthyear
431,10/13/2014 10:31,10/13/2014 10:48,SEA00298,985.935,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Male,1960
432,10/13/2014 10:32,10/13/2014 10:48,SEA00195,926.375,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Male,1970
433,10/13/2014 10:33,10/13/2014 10:48,SEA00486,883.831,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Female,1988
434,10/13/2014 10:34,10/13/2014 10:48,SEA00333,865.937,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Female,1977
435,10/13/2014 10:34,10/13/2014 10:49,SEA00202,923.923,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Male,1971
436,10/13/2014 10:34,10/13/2014 10:47,SEA00337,808.805,2nd Ave & Spring 
St,Occidental Park / Occidental Ave S & S Washington St,CBD-06,PS-04,Annual 
Member,Male,1974
437,10/13/2014 11:35,10/13/2014 11:45,SEA00202,596.715,Occidental Park / 
Occidental Ave S & S Washington St,King Street Station Plaza / 2nd Ave 
Extension S & S Jackson St,PS-04,PS-05,Annual Member,Male,1978
438,10/13/2014 11:35,10/13/2014 11:45,SEA00311,592.131,Occidental Park / 
Occidental Ave S & S Washington St,King Street Station Plaza / 2nd Ave 
Extension S & S Jackson St,PS-04,PS-05,Annual Member,Male,1983
439,10/13/2014 11:35,10/13/2014 11:45,SEA00486,586.347,Occidental Park / 
Occidental Ave S & S Washington St,King Street Station Plaza / 2nd Ave 
Extension S & S Jackson St,PS-04,PS-05,Annual Member,Female,1974
