export MONGO_USER=***************
export MONGO_PASSWORD=********
export MONGO_HOST=***********
export MONGO_PROTOCOL=mongodb+srv
export MONGO_URI="$MONGO_PROTOCOL://$MONGO_USER:$MONGO_PASSWORD@$MONGO_HOST/admin?retryWrites=true"

until mongosh $MONGO_URI --eval "db.adminCommand('ping')"; do echo waiting for mongodb; sleep 2; done





