echo echo %DATE%_%TIME% >> "./Logs/database-load-%1.log"
echo "Converting MongoDB Atlas created_at strings to dates" >> "./Logs/database-load-%1.log"
mongo "mongodb://julesjoseph:ftsP93gnEqiEXZPe@cluster0-shard-00-00-rsihj.mongodb.net:27017,cluster0-shard-00-01-rsihj.mongodb.net:27017,cluster0-shard-00-02-rsihj.mongodb.net:27017/furzedowntweets?ssl=true&replicaSet=Cluster0-shard-0&authSource=admin" < convert-string-to-date.js >> "./Logs/database-load-%1.log"