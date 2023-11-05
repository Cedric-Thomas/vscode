# To generate the vscode certificate we use the following command

```bash
[[ ! -d .certificates ]] && mkdir -v .certificates;
sudo openssl req -x509 -newkey rsa:4096 \
  -keyout .certificates/vscode.key      \
  -out    .certificates/vscode.crt      \
  -sha256 -days 365 \
  -nodes  -subj "/CN=vscode.docker.internal" \
  -addext "subjectAltName=DNS:vscode,DNS:vscode.docker.internal,IP:127.0.0.1"
``` 
