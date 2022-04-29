host="fabmedical-599063.mongo.cosmos.azure.com"
username="fabmedical-599063"
password="RVV7IXeZ0HAVFgRTG66rE4rwDQaJ6hqAMQ8xpO75cLx2TsY2SxIUyxy1kFrL5QZAH0f5TkEUFHbTqjTk3GwUiw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
