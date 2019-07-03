
echo 'the target is'
echo $1

docker exec -it 4fd934a25083 bash -c 'cd twint; exec twint -u '$1'  -es elasticsearch:9200 --limit 50'
#docker exec -it 4fd934a25083 bash -c 'cd twint; exec twint -u $target  --following -es elasticsearch:9200 --limit 50'
#docker exec -it 4fd934a25083 bash -c 'cd twint; exec twint -u $target  --favorites -es elasticsearch:9200 --limit 50 '
#docker exec -it 4fd934a25083 bash -c 'cd twint; exec twint -u $target  --stats -es elasticsearch:9200 --limit 50'
#docker exec -it 4fd934a25083 bash -c 'cd twint; exec twint -u $target  --stats --limit 50'

