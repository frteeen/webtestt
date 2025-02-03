# Use a lightweight web server image as the base
FROM nginx:alpine

# Copy the website files from your repository to the container's web server directory
COPY . /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# (Optional) If your site needs specific nginx configurations, you can copy a custom config file.
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# (Optional) Set file permissions if needed
# RUN chown -R www-data:www-data /usr/share/nginx/html

# (Optional) If building a production-ready site, consider using multi-stage builds to reduce the final image size.