# custom code-server dockerfile
FROM codercom/code-server:latest
USER root
RUN apt-get update && apt-get upgrade -y
RUN apt-get install shellcheck
RUN code-server --install-extension catppuccin.catppuccin-vsc-icons
RUN code-server --install-extension timonwong.shellcheck
ENTRYPOINT ["code-server"]
CMD ["--disable-telemetry",                   \
     "--auth","none",                         \
     "--cert","/certificates/vscode.crt",     \
     "--cert-key","/certificates/vscode.key", \
     "--bind-addr","0.0.0.0:443"              \
]
