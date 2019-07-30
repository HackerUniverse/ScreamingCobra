#!/usr/bin/env python
# coding: latin-1
# -*- coding: utf-8 -*-
# coding: utf-8
# coding: UTF-8
# coding: UTF-16
# coding: utf-16


# Imports
import html, sys, httplib2, re, requests, urllib2, urlparse, json, time, httplib, cookielib, urllib, httplib, urllib, socket, urlparse, os, sys, time, mechanize 
from threadpool import *
from termcolor import colored

# Clear system terminal
os.system("clear")

#print(r"""\
none_ascii = '''


  ███████╗ ██████╗██████╗ ███████╗ █████╗ ███╗   ███╗██╗███╗   ██╗ ██████╗      ██████╗ ██████╗ ██████╗ ██████╗  █████╗ 
  ██╔════╝██╔════╝██╔══██╗██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔════╝     ██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔══██╗
  ███████╗██║     ██████╔╝█████╗  ███████║██╔████╔██║██║██╔██╗ ██║██║  ███╗    ██║     ██║   ██║██████╔╝██████╔╝███████║
  ╚════██║██║     ██╔══██╗██╔══╝  ██╔══██║██║╚██╔╝██║██║██║╚██╗██║██║   ██║    ██║     ██║   ██║██╔══██╗██╔══██╗██╔══██║
  ███████║╚██████╗██║  ██║███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║╚██████╔╝    ╚██████╗╚██████╔╝██████╔╝██║  ██║██║  ██║
  ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
                                                                                XSS Fuzz Swiss Knife,   version 1.0                                        
'''
#""")
print(none_ascii.decode('utf-8'))

# Information
print colored('[+] ', 'red'), colored('Coder: Haroon Awan', 'white')
print colored('[+] ', 'red'), colored('fb   : officialharoonawan', 'white')
print colored('[+] ', 'red'), colored('Insta: hackeruniversee', 'white')

# Configurations
DEBUG = True
MAX_THREAD_COUNT = 10
PAYLOADS_FILENAME = 'payloads'
SCHEME_DELIMITER = '://'
cj = cookielib.CookieJar()
opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
intt=0

# Define attack routine
def attack(url, payload):
    t_start = time.time()
    return_dict = dict()
    return_dict['url'] = url
    return_dict['vulnerability'] = False
    try:
        return_dict['method'] = 'GET'
        XSS_RESPONSE=payload
        attack= urllib2.urlopen(url).read()
        index = attack.find(XSS_RESPONSE)
        buffer = 20
        print_url=url.replace("<","<").replace(">",">")
        attack = attack.split("\n");
        len(attack)
        
        if index != -1:
            return_dict[' vulnerability'] = True
            print colored('[+] ', 'red'), colored('Reflection Found, do confirm manually', 'green')
            print print_url
            return_dict['vulnerability_data'] = line.strip()
            print "[+] Reflection Found, manually confirm\n", attack[index-buffer:index+len(XSS_RESPONSE)+buffer]
            intt=intt+1
            print intt
        t_end = time.time()
        return_dict['time'] = round((t_end - t_start), 2)
    except KeyboardInterrupt, ke:
        sys.exit(0)
    except Exception, e:
        return_dict['exception'] = str(e)

if __name__ == '__main__':
    # Init
    t_global_start = time.time()

    payloads_file = open(PAYLOADS_FILENAME)
    threadpool = ThreadPool(MAX_THREAD_COUNT)
    print colored('[+] ', 'red'), colored('Enter Absolute URI:', 'green')
    sites = str(raw_input("[-]  "))
    print colored('[+] ', 'red'), colored('Loaded Parallel Engine', 'green')
    print colored('[+] ', 'red'), colored('Loaded Payloads', 'green')
    print colored('[+] ', 'red'), colored('Performing Tests', 'green')
    payloads = []
    for payload in payloads_file:
        payloads.append(payload[:-1])

# Extract Base URL and Parameters from site
    parse_url = urlparse.urlparse(sites)
    base_url = '%s%s%s%s' % (parse_url.scheme, SCHEME_DELIMITER, parse_url.netloc, parse_url.path)

#print base_url
    param_parse_list = urlparse.urlparse(sites)[4].split()
    param_dict = dict()
    for param_parse_entry in param_parse_list:
        tmp = param_parse_entry.split()
        param_dict[tmp[0]] = tmp[0]

# Loop through payloads
    for payload in payloads:

# Loop through parameters
        for k1, v1 in iter(sorted(param_dict.iteritems())):

# Build GET param string and POST param dict
            get_params = ''
            post_params = dict()

            for k2, v2 in iter(sorted(param_dict.iteritems())):
                if k1 == k2:
                    get_params += '%s%s&' % (k2, payload)
                    post_params[k2] = payload
                else:
                    get_params += '%s%s&' % (k2, v2)
                    post_params[k2] = v2

            get_params = get_params[:-1]

# Enqueue GET attack
            get_attack_url = '%s?%s' % (base_url, get_params)
            threadpool.enqueue(attack, get_attack_url, payload)

# Wait for threadpool
    threadpool.wait()

# Exit
    t_global_end = time.time()

#if DEBUG:
    if(intt == 0):
        print colored('[!] ', 'red'), colored('Time taken for parallel scan : %.2f seconds', 'green') % (t_global_end - t_global_start)
