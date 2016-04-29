## Elizabeth Fitzpatrick

# Challenge 9.1, Release 0

What are some common HTTP status codes?

The type--or class--of an HTTP status code can be determined by its first digit. Those that start with 1 are known as informational messages, however, they are rare. Those that start with a 2 indicate a successful response; 200, the most common status code, itself indicates a successful response to a request to the web server. Status codes that start with a 3 indicate that a redirection has taken place. Those status codes that start with a 4 are client-side error codes, where as those status codes that start with a 5 indicate that there was a server-side error. 404, the most common error code, indicates that what was requested is currently no longer available. [(1)](https://www.globo.tech/blog/5-most-common-http-error-codes-explained/)

* Other common status codes:

* 300 -- Multiple choices: What's being requested has multiple choices and can't resolve into one (like choosing among different language versions of an html page). [(2)](https://www.smartlabsoftware.com/ref/http-status-codes.htm)

* 301 -- Moved permanently: What's being requested now has different URI (of which the url is the most common type); in the future, use returned URI. [(2)](https://www.smartlabsoftware.com/ref/http-status-codes.htm)

* 302 -- Found: Temporary different URI; continue using originally requested URI [(2)](https://www.smartlabsoftware.com/ref/http-status-codes.htm)

* Error codes:

* 403 -- Forbidden: Access is forbidden, but not unauthorized (itself a 401 error). Reasons include an expired cerificate, a whitelist (list of 	those allowed a particular privilege), and faulty permissions. [(1)](https://www.globo.tech/blog/5-most-common-http-error-codes-explained/)
	
* 500 -- Internal Server Error: Catchall; no other 5xx-level error codes properly explain problem. Can retry request but might duplicate it (like when shopping online). [(1)](https://www.globo.tech/blog/5-most-common-http-error-codes-explained/)

* 503 -- Service Unavailable: Web server is unavailable. May be temporary (like many 500-level errors). [(1)](https://www.globo.tech/blog/5-most-common-http-error-codes-explained/)

* 504 -- Gateway Timeout: Access to secondary web server (i.e. the "gateway") timed out. Occurs when the webpage is being served by a caching or proxy server and actual, secondary server the proxy communicates with is unreachable. Also possibly temporary. [(1)](https://www.globo.tech/blog/5-most-common-http-error-codes-explained/)

What is the difference between a GET request and a POST request? When might each be used?

GET and POST requests are both HTTP request methods and can largely be used to do the same thing. In GET requests, form parameters are passed in at the end of the URL, whereas POST requests pass form parameters in the body of the HTTP request [(5)](http://www.programmerinterview.com/index.php/general-miscellaneous/html-get-vs-post/). POST requests also recontact the server each time [(5)](http://www.programmerinterview.com/index.php/general-miscellaneous/html-get-vs-post/). The differences between GET and POST requests make a huge difference in cybersecurity, however; because GET requests can be cached, remain in the web server or browser history, and can be distributed and shared, they are less safe and can be hacked [(3)](http://blog.teamtreehouse.com/the-definitive-guide-to-get-vs-post), [(4)](http://www.w3schools.com/tags/ref_httpmethods.asp). It is for this reason that sensitive information--such as passwords--use POST requests [(4)](http://www.w3schools.com/tags/ref_httpmethods.asp).

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small files (often encrypted) that are stored in browser directories (i.e. on the client's computer). Cookies are created by a browser when a user first contacts a website and are thus specific to a client and a website. Whenever the client goes back to the same website, the browser sends the file (cookies) to the site to facilitate browsing [(6)](http://www.whatarecookies.com/), [(7)](http://www.allaboutcookies.org/). One way this is useful is in keeping a user logged in [(8)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies).

There exist headers that deal specifically with cookies; servers send Set-Cookies with a response [(8)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies), [(9)](http://stackoverflow.com/questions/3467114/how-are-cookies-passed-in-the-http-protocol). Whenever the user contacts the same server after that, the browser sends a Cookie header [(8)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies), [(9)](http://stackoverflow.com/questions/3467114/how-are-cookies-passed-in-the-http-protocol).
