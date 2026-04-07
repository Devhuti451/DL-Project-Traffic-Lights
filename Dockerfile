FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip

# Install required libraries (adjust if needed)
RUN pip install numpy pandas matplotlib opencv-python jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
