FROM python:3.12-slim
# Встановлення Jupyter
RUN pip install jupyterlab
# Встановлення необхідних бібліотек
RUN pip install numpy pandas matplotlib seaborn scipy
# Відкриття порту для Jupyter Lab
EXPOSE 8888
# Команда для запуску Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]