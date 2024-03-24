FROM python:3.9  # Base image with Python 3.9

WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all project files (including Streamlit script)
COPY . .

# Expose Streamlit port (default 8501)
EXPOSE 8501

# Set working directory within the container (optional)
# This can be helpful for managing virtual environments or specific project structures.
# Uncomment the following line if needed:
# WORKDIR /app/your_project_directory  # Replace with your project directory

# Command to run the Streamlit app
CMD ["streamlit", "run", "tran.py"]
