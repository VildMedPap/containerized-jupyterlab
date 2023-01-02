# -----------------------------------------------------------------------------
# In this stage we start a Jupyter Lab Server for developing the package.
# --------------------------------------------------------------------- (BEGIN)
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}
COPY requirements.dev.txt requirements.dev.txt
RUN pip install --no-cache-dir --no-warn-script-location -r requirements.dev.txt
EXPOSE 8888
ENTRYPOINT [ "jupyter-lab" ]
CMD [ "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", \
      "--IdentityProvider.token=", "--ServerApp.password=", \
      "--notebook-dir=/notebooks" ]
# ----------------------------------------------------------------------- (END)
