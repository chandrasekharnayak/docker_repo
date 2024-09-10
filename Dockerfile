#1. Specify the base image
FROM python:3.9-slim

#2. Set the working directory in the contanier
WORKDIR /app

#3 Copy the requirement.txt file
COPY    requirements.txt .

# Step 3: Copy the current directory contents into the container at /app
COPY SecondFlaskApp /app

#5 Install the required Python Package
RUN pip install --no-cache-dir -r requirements.txt

#6 Expose the port that Flask will use
Expose 5000

# Step 7: Define environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

#8 Set the command to run the flask application
CMD["flask","run", "--host=0.0.0.0", "--port=5000"]

