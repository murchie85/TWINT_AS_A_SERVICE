# ELASTIC, KIBANA & TWINT IN ONE BUNDLE 

![WORLD](https://murchie85.github.io/images/bg.jpg)

## SET UP IN 3 STEPS 
 
 
1. Clone this repo and cd into it 
2. `docker-compose up -d`
3. Go make a cup of tea, come back and check everything works by going to `localhost:9200` for elastic or `localhost:5601` for kibana

You are done :)

  

# Twitter profiling

1. If you want to do Twitter analytics grab CONTAINER ID for twint_as_a_service_compose_twint_1
2. SSH onto the container `docker exec -it CONTAINER ID bash `
3. and run the below commands to populate elastic (change Trump to any twitter handle as many times as you like) 


```
twint -u realDonaldTrump  -es elasticsearch:9200 --limit 50
twint -u realDonaldTrump  --followers -es elasticsearch:9200 --limit 50
twint -u realDonaldTrump  --following -es elasticsearch:9200 --limit 50
twint -u realDonaldTrump  --favorites -es elasticsearch:9200 --limit 50
twint -u realDonaldTrump  --stats -es elasticsearch:9200 --limit 50
twint -u realDonaldTrump  --stats --limit 50
```



Powered by (twint)[https://github.com/twintproject/twint]