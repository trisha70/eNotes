# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your JSP app (edit this path if needed)
COPY webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
