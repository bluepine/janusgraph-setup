for i in bigdata-cassandra  bigdata-elasticsearch  bigdata-janusgraph; do
    cd $i;
    "$@"
    cd ..
done
