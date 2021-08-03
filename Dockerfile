FROM ubuntu

RUN apt update
RUN apt install net-tools && apt install -y iputils-ping
RUN mkdir /Datos
WORKDIR /Datos
RUN touch f1.txt
COPY index.html .
COPY app.log /Datos
ADD entrypoint.sh .
##RUN apt install -y apache2
##EXPOSE 80
##CMD /Datos/entrypoint.sh
ENTRYPOINT ["/bin/bash"]
