#!/bin/bash

postconf -e relayhost=
postconf -e relay_transport=relay
postconf -e relay_domains=static:ALL
postconf -e smtpd_end_of_data_restrictions="check_client_access static:discard"

