FROM ghcr.io/amacneil/dbmate:2 as dbmate
FROM rockylinux:9

# Update the system
RUN dnf update -y

# Copy dbmate
COPY --from=dbmate /usr/local/bin/dbmate /usr/bin/dbmate

