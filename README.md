u-so-random
===========

WHY U SO RANDOM


This is a urandom-as-a-service sinatra app designed to act as a single node behind a load-balanced group of nodes. It (currently) provides 1024K of random junk that will be machine readable via JSON, XML, and more.


## Running

1. Clone repo
`git clone https://github.com/jakerobinson/u-so-random.git`

2. Run Sinatra app
`ruby u-so-random/main.rb`

3. Open Web browser to `<yourIP>:3000`

4. For JSON or XML, use a REST client and set your Accept header to `application/json` or `application/xml`
