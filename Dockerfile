FROM danieldent/meteor:1.0.3.1
COPY . /opt/src
WORKDIR /opt/src
RUN meteor build .. --directory --server http://localhost:3000 \
    && cd ../bundle/programs/server \
    && npm install \
    && rm -rf /opt/src
WORKDIR /opt/bundle
USER nobody
ENV PORT 3000
CMD ["/usr/local/bin/node", "main.js"]