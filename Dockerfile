FROM ubi8/python-38
EXPOSE 8080
RUN mkdir -p ${APP_ROOT}/src
COPY ./*.sh ./*.py ./requirements.txt ${APP_ROOT}/src
RUN pip3 install -r ${APP_ROOT}/src/requirements.txt
WORKDIR ${APP_ROOT}/src
CMD /bin/sh ${APP_ROOT}/src/app.sh
