FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install openssh-server -y
RUN apt-get install ca-certificates -y
RUN apt-get install git -y
RUN apt install tzdata -y

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get -y install gitlab-ce

RUN echo "external_url 'https://10.11.7.5'" > /etc/gitlab/gitlab.rb
RUN echo "nginx['enable'] = true" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['redirect_http_to_https'] = true" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['redirect_http_to_https_port'] = 80" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['ssl_certificate'] = \"/etc/gitlab/ssl/gitlab.crt\"" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['ssl_certificate_key'] =  \"/etc/gitlab/ssl/gitlab.key\"" >> /etc/gitlab/gitlab.rb
RUN echo "gitlab_rails['gitlab_shell_ssh_port'] = 22" >> /etc/gitlab/gitlab.rb

EXPOSE 80
EXPOSE 22
EXPOSE 443

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# docker build -t ex03 .
# docker run -p 80:80 -p 443:443 -p 10.11.7.5:22:22 ex03
# GIT_SSL_NO_VERIFY=true git clone 
