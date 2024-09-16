# Use the official Rust image as the base image
FROM rust:latest

# Install cargo-watch for live reloading
RUN cargo install cargo-watch

# Set the working directory
WORKDIR .

# Copy the Cargo.toml and src files into the container
COPY . .

# Install dependencies
RUN cargo build

# Run cargo-watch to automatically rebuild and run the code on changes
CMD ["cargo", "watch", "-x", "run"]
