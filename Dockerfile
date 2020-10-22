FROM agois/jasperserver-ce:7.8.0

    RUN apt-get update

    # Locale
    RUN apt-get install -y locales \
        && localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
    ENV LANG pt_BR.utf8
    RUN echo "pt_BR.UTF-8 UTF-8" > /etc/locale.gen
    RUN locale-gen

    COPY jasper.validation.properties.zip /usr/local/share/jasperreports/customization/custom.zip
