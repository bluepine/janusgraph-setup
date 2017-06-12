for i in cassandra  elasticsearch  janusgraph; do
    cd $i;
    "$@"
    cd ..
done
