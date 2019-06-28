# READY TO GO TWINT CONTAINER 
FROM python:3
ADD . /code
WORKDIR /code
RUN git clone https://github.com/twintproject/twint.git
RUN pip install -r twint/requirements.txt
RUN pip3 install --upgrade -e git+https://github.com/twintproject/twint.git@origin/master#egg=twint

# INJECT SOME DATA INTO KIBANA 

#RUN twint -u realDonaldTrump  -es elasticsearch:9200 --limit 50
#RUN twint -u realDonaldTrump  --followers -es elasticsearch:9200 --limit 50
#RUN twint -u realDonaldTrump  --following -es elasticsearch:9200 --limit 50
#RUN twint -u realDonaldTrump  --favorites -es elasticsearch:9200 --limit 50
#RUN twint -u realDonaldTrump  --stats -es elasticsearch:9200 --limit 50
#RUN twint -u realDonaldTrump  --stats --limit 50