FROM amazon/aws-lambda-nodejs:12

COPY index.js ./

CMD ["index.handler"]
