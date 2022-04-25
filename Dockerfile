FROM nginx:1.10.1-alpine

RUN mkdir files
ARG OO="xren"
ENV OO ${OO}
RUN echo ${OO} > xx
COPY k.sh /files
WORKDIR /files
# RUN chmod +x k.sh
# RUN k.sh

# RUN echo `[[ "$(uname)" = "Darwin" ]] && echo "pip install -U --no-cache-dir" || echo "pip install -U --no-cache-dir --no-use-pep517"` > /root/tmp_variable
# RUN echo "$(uname)" > /root/ss