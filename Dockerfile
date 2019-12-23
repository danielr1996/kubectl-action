FROM alpine
WORKDIR /opt/
RUN apk --update add curl gettext
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod a+x /opt/kubectl
COPY entrypoint.sh entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
