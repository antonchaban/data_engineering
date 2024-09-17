FROM python:3.12-slim
RUN pip install jupyterlab
RUN pip install requests
RUN pip install numpy pandas matplotlib seaborn scipy
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]