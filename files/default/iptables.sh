#!/bin/bash

iptables -I INPUT -p tcp --dport 50 -j ACCEPT
iptables -I INPUT -p tcp --dport 51 -j ACCEPT
iptables -I INPUT -p udp --dport 4500 -j ACCEPT
iptables -I INPUT -p udp --dport 500 -j ACCEPT
iptables -I FORWARD -p tcp -j ACCEPT
iptables -I FORWARD -p icmp -j ACCEPT
iptables-save > /etc/sysconfig/iptables
