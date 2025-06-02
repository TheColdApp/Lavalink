FROM eclipse-temurin:18-jre-jammy

# Create lavalink user/group for security
RUN groupadd -g 322 lavalink && \
    useradd -r -u 322 -g lavalink lavalink

WORKDIR /opt/Lavalink

# Download Lavalink jar directly from official releases
RUN apt-get update && apt-get install -y curl && \
    curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/download/4.0.0/Lavalink.jar && \
    chown lavalink:lavalink Lavalink.jar && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN chown -R lavalink:lavalink /opt/Lavalink

USER lavalink

# Remove copying application.yml, config comes from env var

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
