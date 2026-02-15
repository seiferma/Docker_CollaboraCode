ARG COLLABORA_VERSION=
FROM collabora/code:${COLLABORA_VERSION} 

USER root
RUN sed -i 's#:1001:1001:#:101001:101001:#g' /etc/passwd && \
    sed -i 's#:1001:#:101001:#g' /etc/group
USER cool