FROM busybox

VOLUME /var/lib/mysql

RUN mkdir -p /var/spool/cron/crontabs

COPY bin/ /bin/

ENTRYPOINT ["entrypoint.sh"]
CMD ["crond", "-f"]
