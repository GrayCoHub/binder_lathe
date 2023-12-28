# First stage: Use Python 3.8 image to install Python dependencies
FROM python:3.8-slim AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Second stage: Use R image and copy artifacts from the first stage
FROM r-base:latest

# Copy Python dependencies from the builder stage into the current stage
COPY --from=builder /app /app

# Install R packages (IRkernel and IRdisplay)
RUN R -e "install.packages(c('IRkernel', 'IRdisplay'))"

# Set working directory and copy notebook files
WORKDIR /app
COPY . .

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
