JunkYard
===========

This is a urandom-as-a-service sinatra app designed to act as a single node behind a load-balanced group of nodes. It (currently) provides 1024K of random junk that will be machine readable via JSON, XML, and more.


## Running

1. `git clone https://github.com/jakerobinson/junkyard.git`

2. `cd junkyard`

3. `bundle install`

4. `ruby junkyard/main.rb`

5. Open Web browser to `<yourIP>:3000`

6. For JSON or XML, use a REST client and set your Accept header to `application/json` or `application/xml`
