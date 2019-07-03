
echo 'the target is'
echo $1

docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  -es elasticsearch:9200 --limit 50'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --following -es elasticsearch:9200 --limit 50'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --favorites -es elasticsearch:9200 --limit 50 '
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --stats -es elasticsearch:9200 --limit 50'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --stats --limit 50'

