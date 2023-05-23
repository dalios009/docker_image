# Use a base image
FROM golang:1.16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary files to the container
COPY . .

# Build the application
RUN go build -o main .

# Set environment variables
ENV POSTGRES_HOST=db
ENV POSTGRES_PORT=5432
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mysecretpassword
ENV POSTGRES_DB=postgres

# Expose the port on which the application will run
EXPOSE 8080

# Set the command to run the application
CMD ["./main"]
