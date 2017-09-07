FROM prom/prometheus

VOLUME /etc/prometheus

COPY prometheus/* /etc/prometheus/

EXPOSE 9090

CMD '-config.file=/etc/prometheus/prometheus.yml -storage.local.path=/prometheus -alertmanager.url=http://alertmanager:9093'
