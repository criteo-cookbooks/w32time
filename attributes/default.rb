#ntp server names
default['w32time']['servers'] = %w(0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org)
default['w32time']['type'] = 'NTP'
# 0x8 stands for time client
default['w32time']['flag'] = '0x8'
