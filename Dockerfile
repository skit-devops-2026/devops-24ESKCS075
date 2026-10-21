FROM nginx:alpine

COPY index.html add-expense.html budget.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY nginx.conf /etc/nginx/templates/default.conf.template

ENV PORT=10000

EXPOSE 10000

CMD ["sh", "-c", "envsubst '${PORT}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
