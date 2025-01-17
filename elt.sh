# wget command to get the file
wget -O 'nc-est2023-agesex-res.csv' -r -nd -N -A "*.csv" -i "link.txt"

# -O : Store the downloaded data with the given file name
# -r : Recursive download
# -nd : No directories to be created while downloading
# -N : Timestamping 
# -A : Accept the given file formats
# -i : Input file with the required URL's


# transferring the output to hdfs
hdfs dfs -mkdir -p /user/hadoop/files
hdfs dfs -put 'nc-est2023-agesex-res.csv' /user/hadoop/files
hdfs dfs -ls /user/hadoop/files/

# runing the hql file to create database
hive -f hive.hql
# -f : To check if a specific file exists
