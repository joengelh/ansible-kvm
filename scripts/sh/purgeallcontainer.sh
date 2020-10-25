a=$(docker container ls -aq)
for i in $a
do
  echo "$i"
  docker container stop $i
  docker container rm $i
done
