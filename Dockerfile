FROM python
COPY requirements.txt /src/requirements.txt
WORKDIR /src/
RUN pip3 install -r requirements.txt
COPY . /src/
RUN python3 setup.py install
ENTRYPOINT [ "/usr/local/bin/wsproxy", "run" ]  