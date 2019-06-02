FROM python:3.7-alpine

RUN pip install shadowsocks && \
    for file in $(find /usr -name openssl.py) ; do \
        sed s/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g -i $file ; \
    done
