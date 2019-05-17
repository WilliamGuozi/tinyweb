FROM nginx:1.14-alpine
LABEL maintainer="WilliamGuo <634206396@qq.com>"
ENV WEB_DOC_ROOT="/data/web/html"
RUN mkdir -p ${WEB_DOC_ROOT} && \
    echo "<h1> BUSYBOX SERVER</h1>" > ${WEB_DOC_ROOT}/index.html
ADD entrypoint.sh /bin/
RUN chmod +x /bin/entrypoint.sh
CMD ["/usr/sbin/nginx","-g","daemon off;"]
ENTRYPOINT ["/bin/entrypoint.sh"]

