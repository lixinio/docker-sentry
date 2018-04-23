FROM sentry:8.22

RUN set -ex \
      && pip install --no-cache-dir https://github.com/lixinio/sentry-auth-openid/archive/master.zip \
      && pip install --no-cache-dir https://github.com/lixinio/python-casscache/archive/master.zip

COPY sentry.conf.py /etc/sentry/
