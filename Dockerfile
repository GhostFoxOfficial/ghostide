FROM codercom/code-server:latest

USER root
RUN apt-get update && apt-get install -y git curl wget && rm -rf /var/lib/apt/lists/*

USER coder
WORKDIR /home/coder/project

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "password", "--disable-telemetry", "."]
