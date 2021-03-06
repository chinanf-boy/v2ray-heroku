
FROM alpine:latest

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"error\"},\"inbound\":{\"protocol\":\"vmess\",\"port\":
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\"
# ENV CONFIG_JSON3=\",\"alterId\":64}]},\"streamSettings\":{\"network\":\"ws\"}},\"inboundDetour\":[{\"protocol\":\"shadowsocks\",\"port\":3333\"settings\":{\"method\":\"aes-256-cfb\",\"password\":\"shadowsocks\",\"udp\":false}}],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}

RUN mkdir -m 777 /v2raybin 

ADD client_config.json /client_config.json
RUN chmod +x /client_config.json
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
