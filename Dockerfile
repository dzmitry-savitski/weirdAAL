FROM python
WORKDIR /weirdAAL
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN apt update
RUN apt install -y nano
COPY . .
RUN cp env.sample .env
RUN python3 create_dbs.py
CMD [ "/bin/bash"]
