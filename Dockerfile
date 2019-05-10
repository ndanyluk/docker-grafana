FROM grafana/grafana:6.1.4
# https://hub.docker.com/r/grafana/grafana/tags/

COPY docker-entrypoint.sh     /docker-entrypoint.sh
COPY datasources              /etc/grafana/provisioning/datasources/
COPY swarmprom_dashboards.yml /etc/grafana/provisioning/dashboards/
COPY dashboards               /etc/grafana/dashboards/

USER root

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin \
    GF_PATHS_PROVISIONING=/etc/grafana/provisioning/

ENTRYPOINT [ "/docker-entrypoint.sh" ]
