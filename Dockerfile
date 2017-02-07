FROM openshift/php:7.0

# Add clean phpPgAdmin
ADD app/ /opt/app-root/src/

# database config
ADD config.inc.php /opt/app-root/src/conf/config.inc.php

# Remove and mount attached storage
RUN chmod a+rwx /opt/app-root/src
