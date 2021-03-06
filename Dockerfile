FROM sentry:9.1

RUN set -ex \
      && pip install --no-cache-dir https://github.com/lixinio/sentry-auth-openid/archive/master.zip \
      && pip install --no-cache-dir https://github.com/lixinio/python-casscache/archive/master.zip \
      && pip install --no-cache-dir https://github.com/lixinio/sentry-nightswatch/archive/master.zip 

COPY sentry.conf.py /etc/sentry/
