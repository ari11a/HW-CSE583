I used mkdir to create the pronto peoject folder and a data subfolder, and cd to move between these folders.

I used echo to create a short README.txt file in the project folder.

I used curl -L to download open_data_year_one.zip into the data folder.

I used unzip to extract the download files.

I used head to display the first 10 lines of 2015_trip_data.csv.

Then I make a github repository to hold all the homeworks.

I initially cloned the repository using its HTTPS URL, but I encountered an authentication error when trying to push my homework to GitHub. 

I asked ChatGPT for help, and it explained that I could switch to SSH by typing git remote set-url origin followed by the repository’s SSH URL.

Then I placed download_pronto.bash and README.md in the HW0 folder of the local repository.

I committed the changes with "git commit -m "Update Bash script and README for HW0", and uploaded the commit to Github with "git push".

Finally I ran "bash -x download_pronto.bash" to check whether the script executed successfully.
