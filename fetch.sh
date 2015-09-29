#!/bin/bash
args=("$@")
whois -h whois.crsnic.net ${args[0]} | grep -i ${args[0]} | awk -F. '{for (i=1; i<NF; i++) printf "%s.",$i; printf "%s\n",$NF}'
