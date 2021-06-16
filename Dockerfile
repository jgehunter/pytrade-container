#
# Building a Docker Image with
# the latest Ubuntu Version and
# Basic Python Install
#

# latest Ubuntu version
FROM ubuntu:latest

# add the bash script
ADD install.sh /
# change rights for the script
RUN chmod u+x /install.sh
# run the bash script
RUN /install.sh
# prepend the new path
ENV PATH /root/miniconda3/bin:$PATH

# execute IPython when container is run
CMD ["ipython"]

