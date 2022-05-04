FROM ruby:2.7
WORKDIR /code

ENV http_proxy http://172.17.0.1:3129

COPY . /code
RUN bundle install
EXPOSE 3000
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "3000"]