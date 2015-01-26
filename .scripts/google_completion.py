from urllib import urlencode, urlopen
from json import loads as jloads
from sys import argv
import re


def google_complete(query):
    params = urlencode({'client': 'firefox', 'q': query})
    url = 'https://suggestqueries.google.com/complete/search?%s' % params
    raw = urlopen(url).read()
    return jloads(raw)[1]

try:
    query = re.sub(r'\\ |\\$', ' ', ' '.join(argv[1:]))

    keyword_list = google_complete(query)
    keyword_list = [k for k in keyword_list if k[:len(query)] == query]
    keyword_list = [k.replace(' ', '\\ ') for k in keyword_list]

    print '\n'.join(keyword_list)
except:
    pass
