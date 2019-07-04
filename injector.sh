
echo 'the target is'
echo $1
echo 'the depth is'
echo $2

echo 'Getting tweets..'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  -es elasticsearch:9200 --limit '$2''
echo 'Getting followers..'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --followers -es elasticsearch:9200 --limit '$2''
echo 'getting followings..'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --following -es elasticsearch:9200 --limit '$2''
echo 'getting favourites..'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --favorites -es elasticsearch:9200 --limit '$2' '
echo 'getting stats..'
docker exec -it twint_app bash -c 'cd twint; exec twint -u '$1'  --stats -es elasticsearch:9200 --limit '$2''


