ARG PYTHON_VERSION

FROM brikerman/ubuntu20_python3:$PYTHON_VERSION

WORKDIR /code

RUN pip install jupyter -U && pip install jupyterlab

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
