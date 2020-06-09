docker run --mount type=bind,source="$(pwd)",target=/app/ \
-e SPOTIFY_CID=${SPOTIFY_CID} \
-e SPOTIFY_SECRET=${SPOTIFY_SECRET} \
-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
-e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
-e AWS_BUCKET=${AWS_BUCKET} \
-e AVC_MYSQL_USER=${AVC_MYSQL_USER} \
-e AVC_MYSQL_PASSWORD=${AVC_MYSQL_PASSWORD} \
-e AVC_MYSQL_HOST=${AVC_MYSQL_HOST} \
-e AVC_MYSQL_PORT=${AVC_MYSQL_PORT} \
-e AVC_DATABASE_NAME=${AVC_DATABASE_NAME} \
-p 5000:5000 \
--name test litness app.py