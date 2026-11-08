mkdir ~/pronto
cd ~/pronto
echo "This folder contains the Pronto bike-share system's first-year open data, including station information, station status, trip records, and weather data. " > README.txt
mkdir ~/pronto/data
cd ~/pronto/data
curl -L https://s3.amazonaws.com/pronto-data/open_data_year_one.zip -o open_data_year_one.zip
unzip open_data_year_one.zip
head 2015_trip_data.csv
