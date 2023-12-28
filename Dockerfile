# Use an official Python runtime as a parent image
FROM python:3.8-slim AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Install Jupyter Notebook in the Python image
RUN pip install jupyter


# Second stage: Use an R image and copy artifacts from the first stage
FROM r-base:latest

# Copy Python dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

# Install any needed R packages
RUN R -e "install.packages(c('IRkernel', 'IRdisplay'))"

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
