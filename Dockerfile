#tells docker that you want your container to operate on Cent OS 7
FROM centos:7

#tells your container to install eog (our image viewing software) and dbus (a program that helps your container and host communicate)
RUN yum -y install eog dbus-x11

#copies a jpg named hedgehog to the home file on your container
COPY hedgeHog.jpg /home

#Checks if a system has a universally unique ID, creating one if a system doesn't have one already. This helps with communicating between host and container
RUN dbus-uuidgen > /var/lib/dbus/machine-id

#tells your container to open eog (our photo viewing software), and gives the container the location of the image you'd like to open
CMD ["eog", "/home/hedgeHog.jpg"]


