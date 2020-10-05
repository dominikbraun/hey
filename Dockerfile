#
#       __
#      / /_  ___  __  __
#     / __ \/ _ \/ / / /
#    / / / /  __/ /_/ /
#   /_/ /_/\___/\__, /
#              /____/
#
FROM alpine:3.12.0 AS base

COPY hey.sh .
RUN chmod +x hey.sh

CMD ["ash", "hey.sh"]
