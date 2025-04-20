# Etapa 1: Build do Flutter Web com Dart 3+
FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Copia o projeto
COPY . .

# Instala dependências
RUN flutter pub get

# Gera o build Web
RUN flutter build web --release

# Etapa 2: Servir com Nginx
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Limpa html padrão do Nginx
RUN rm -rf ./*

# Copia build do Flutter para a pasta pública do Nginx
COPY --from=build /app/build/web .

# Expor a porta
EXPOSE 80

# Inicia o nginx
CMD ["nginx", "-g", "daemon off;"]