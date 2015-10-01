#!/bin/bash

postconf -e relayhost=
postconf -e relay_transport=relay
postconf -e relay_domains=static:ALL
postconf -e smtpd_end_of_data_restrictions="check_client_access static:discard"
postconf -e smtp_dns_support_level=disabled
postconf -e disable_dns_lookups=yes
postconf -e in_flow_delay=0
postconf -e smtpd_error_sleep_time=0
postconf -e smtpd_client_connection_count_limit=0