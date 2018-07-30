FROM nginx:alpine
RUN npm install
RUN npm install -g @angular/cli@1.7.1
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html
COPY dist/ .
