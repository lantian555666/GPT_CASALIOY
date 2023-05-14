FROM python:3.11

WORKDIR /srv
RUN git clone https://github.com/hippalectryon-0/CASALIOY.git
WORKDIR CASALIOY

RUN pip3 install poetry
RUN python3 -m poetry config virtualenvs.create false
RUN python3 -m poetry install
RUN python3 -m pip install --force streamlit  # Temp fix, see pyproject.toml
RUN pre-commit install
COPY example.env .env
