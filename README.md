# CTF-challenge - CTF players and bughunters united!

## Introduction
Bug bounty hunting and playing CTF games are 2 distinct things. CTF players are known for their incredible in depth knowledge on very specific topics. Bug bounty hunters are known for their patience in doing recon. Most CTF players however dislike doing recon and bug bounty hunters sometimes miss the expertise to solve the last piece of a puzzle that's needed in order to complete a full blown exploit chain. 

## The Idea
If we as bug bounty hunters present small chunks of work in the form of a CTF challenge, we might be able to bridge the gap between CTF players and bug bounty hunters. The CTF player would not have to waste time on doing recon and the bug bounty hunter gets an extra helping hand in solving the last piece of a puzzle. Both the CTF player and the bug bounty hunter could profit from bounties that would normally be out of reach for them. The company/target would receive high(er) quality reports. 

## The Objective
In this repository you will find a golang binary named 'victim-binary'. This binary in fact is a custom webserver that plays a major role in Google's Cloudshell. If authentication can be bypassed on this webserver, we _might_ be able to complete a full exploit chain and submit a report to Google VRP. Note that this webserver runs on a remote host, so ENV vars can not be changed. The bypass has to work remotely. 

## Running the binary
git clone https://github.com/offensi/CTF-challenge  
cd CTF-challenge  
bash run-victim-binary.sh  

At this stage the binary should have opened listening port: 

curl -k https://localhost:980 -v  
...
GET / HTTP/1.1  
Host: localhost:980  
User-Agent: curl/7.52.1  
Accept: */*   
...
Connection state changed (MAX_CONCURRENT_STREAMS updated)!  
HTTP/2 302  
content-type: text/html; charset=utf-8  
location: https://accounts.google.com/o/oauth2/v2/auth? client_id=xxx.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fsomeserver%2Fdevshell%2Fgateway%2Foauth&response_type=code &scope=email&state=eyJ0b2tlbiI6InZ6QVBWcW4yT1I4aWczdy1FSy1tcUEiLCJ0YXJnZXRfaG9zdCI6ImxvY2FsaG9zdDo5ODAifQ  
content-length: 315  
date: Thu, 03 Oct 2019 09:28:55 GMT 


Good luck!  




## Rules
- I can only authorize testing on this binary ;)
- I will collaborate with the first CTF player to contact me with a working authentication bypass on this binary (DM or e-mail)
- If you can complete a full exploit chain yourself, you don't need my help. Just let me know you've succeeded and report it to the Google VRP directly
- Don't be evil


## Credits
This idea was born out of the comments posted by @the_st0rm on Twitter in reaction to @LiveOverflow's new video, featuring a bug i did discover. Thanks to @GoogleVRP and @sirdarckcat, i had the opportunity to talk to several of the worlds top CTF players in London last year. My assumptions on CTF games and players are based on these conversations. 


#### Contact
- e-mail : wtm@offensi.com
- website: https://offensi.com
- twitter: https://twitter.com/wtm_offensi





