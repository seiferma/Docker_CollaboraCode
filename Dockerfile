FROM collabora/code

USER root
RUN sed -i 's#:100:101:#:100100:100101:#g' /etc/passwd && \
    sed -i 's#:101:#:100101:#g' /etc/group
USER cool