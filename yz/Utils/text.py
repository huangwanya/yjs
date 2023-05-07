import urllib

string = '哲学'
biao = 'asdasdasdasd%e5%93%b2%e5%ad%a6'
# string = string.encode('utf-8')
# str = urllib.parse.quote(string)
str = urllib.parse.unquote(biao)
# str = str.encode('utf-8')
print(str)
