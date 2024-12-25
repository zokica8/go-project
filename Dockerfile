# Start from the official Go image
FROM golang:1.21-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY main.go .

# Build the Go application
RUN go build -o server main.go

# Expose port 8080 to the outside world
EXPOSE 8080

# ENV command to set the environment variable for port
ENV PORT=8080

# Run the executable
CMD ["./server"]
