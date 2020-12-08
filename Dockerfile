
FROM python:3.7
FROM jupyter/minimal-notebook
WORKDIR $HOME
RUN python -m pip install --upgrade pip
ADD app/credit-data.csv .
ADD app/Fligoo_TechInterview_Credit.ipynb .
RUN pip3 install pandas numpy sklearn seaborn imblearn
CMD ["jupyter", "notebook"]
