#ntp server name (single)
default['w32time']['ntpserver'] = 'pool.ntp.org'
default['w32time']['type'] = 'NTP'
# 0x8 stands for time client
default['w32time']['flag'] = '0x8'