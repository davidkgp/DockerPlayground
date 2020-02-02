FROM postgres:12.1
ENV POSTGRES_PASSWORD something_wierd
ENV POSTGRES_USER usr1
ENV POSTGRES_DB testdb

RUN groupadd -r mygrp && useradd --no-log-init -r -g mygrp somedocker
USER postgres