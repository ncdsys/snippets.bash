##############################################################################
#serve #serving #staticfiles #production #django #apache.

# django.contrib.staticfiles provides a convenience management command for gathering static files in a single directory so you can serve them easily.
# 
# Set the STATIC_ROOT setting to the directory from which you’d like to serve these files #for example:

STATIC_ROOT = "/var/www/example.com/static/"
# Run the collectstatic management command:

python manage.py collectstatic
# This will copy all files from your static folders into the STATIC_ROOT directory.
# 
# Use a web server of your choice to serve the files. Deploying static files covers some common deployment strategies for static files.

