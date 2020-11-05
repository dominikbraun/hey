#
#       __
#      / /_  ___  __  __
#     / __ \/ _ \/ / / /
#    / / / /  __/ /_/ /
#   /_/ /_/\___/\__, /
#              /____/
#
FROM ruby:2.7.2 AS base

COPY hey.rb .
CMD ["ruby", "hey.rb"]

EXPOSE 8000
