ARG COLLABORA_VERSION=
FROM collabora/code:${COLLABORA_VERSION} AS base

FROM busybox:latest AS builder
COPY --from=base /etc/passwd /etc/group /tmp
RUN sed -i 's#:1001:1001:#:101001:101001:#g' /tmp/passwd && \
    sed -i 's#:1001:#:101001:#g' /tmp/group

FROM base
COPY --from=builder /tmp/passwd /tmp/group /etc