#lang racket

(require web-server/servlet
         web-server/servlet-env
         web-server/http
         web-server/http/request-structs
         web-server/formlets
         net/url-structs)

(define (render-with-layout req c)
  `(html (head [title "chord"])
         (body (h1 "holi"))))

(define (chord req)
  (response/xexpr 
    (render-with-layout req " "
                                      )))

(serve/servlet chord
               #:port 8669
               #:servlet-path "/holi")
