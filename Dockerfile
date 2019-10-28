FROM microsoft/dotnet:latest

COPY azcopy.tar.gz /root
COPY docker-entrypoint.sh /
WORKDIR /root
RUN tar -xf /root/azcopy.tar.gz && \
    rm /root/azcopy.tar.gz && \
    mv /root/azcopy_linux_amd64_10.3.1/azcopy /bin && \
    rm -rf /root/azcopy_linux_amd64_10.3.1 && \
    chmod +x /bin/azcopy /docker-entrypoint.sh && \
    mkdir /source

ENV MODE=sync SOURCE="/source"
CMD ["/docker-entrypoint.sh"]