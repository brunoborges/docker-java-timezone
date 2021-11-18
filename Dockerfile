FROM mcr.microsoft.com/openjdk/jdk:11-ubuntu

ENV TZ "America/Sao_Paulo"

RUN echo "System.out.println(java.util.Calendar.getInstance().getTimeZone().getID());" >> timezone.jsh
RUN echo "/exit" >> timezone.jsh

RUN jshell timezone.jsh
