# Etapa 1: Build do Flutter Web
FROM cirrusci/flutter:latest AS build

WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Instala dependências
RUN flutter pub get

# Gera o build do Flutter Web
RUN flutter build web --release

# Etapa 2: Servir com Nginx
FROM nginx:alpine

# Remove arquivos default do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o build para a pasta pública do nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Copia configuração customizada do nginx (opcional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expor a porta 80
EXPOSE 80

# Iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
