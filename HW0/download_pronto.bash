mkdir ~/cse583/pronto
cd ~/cse583/pronto
echo "These are data" > README.txt
mkdir ~/cse583/pronto/data
cd ~/cse583/pronto/data
curl -L https://s3.amazonaws.com/pronto-data/open_data_year_one.zip -o open_data_year_one.zip
unzip open_data_year_one.zip
head 2015_trip_data.csv
