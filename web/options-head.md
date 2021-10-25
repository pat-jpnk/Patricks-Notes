# options and head - http methods

- OPTIONS provides information about the application interface in general 
  - which http methods are supported ? 
  - testing whether a resource exists and is accessible (e.g. a user submitted link)
  - is used for cross-origin-resource-sharing pre-flight requests


  HTTP/1.1 200 OK
  Allow: GET,HEAD,POST,OPTIONS,TRACE
  Content-Type: text/html; charset=UTF-8
  Date: Wed, 08 May 2013 10:24:43 GMT
  Content-Length: 0

- HEAD returns information about a specific resource provided by that application
  - checking whether a resource has changed (e.g. for caching purposes)
  - checking metadata about a resourc (e.g. checking size before deciding to 
    download a resource)

  HTTP/1.1 200 OK
  Accept-Ranges: bytes
  Content-Type: text/html; charset=UTF-8
  Date: Wed, 08 May 2013 10:12:29 GMT
  ETag: "780602-4f6-4db31b2978ec0"
  Last-Modified: Thu, 25 Apr 2013 16:13:23 GMT
  Content-Length: 1270

