FROM busybox:1.36.1
LABEL org.opencontainers.image.title="virtual-staging-url-tools" \
      org.opencontainers.image.description="Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK." \
      org.opencontainers.image.url="https://virtual-staging.app/" \
      org.opencontainers.image.source="https://github.com/wangneo276-lgtm/virtual-staging-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/virtual-staging-url-tools
RUN chmod +x /usr/local/bin/virtual-staging-url-tools
ENTRYPOINT ["/usr/local/bin/virtual-staging-url-tools"]
