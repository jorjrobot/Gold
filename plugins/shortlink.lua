local function run(msg, matches)
  local yon = http.request('http://api.yon.ir/?url='..URL.escape(matches[1]))
  local jdat = json:decode(yon)
  local bitly = https.request('https://api-ssl.bitly.com/v3/shorten?access_token=f2d0b4eabb524aaaf22fbc51ca620ae0fa16753d&longUrl='..URL.escape(matches[1]))
  local data = json:decode(bitly)
  local yeo = http.request('http://yeo.ir/api.php?url='..URL.escape(matches[1])..'=')
 local opizo = http.request('http://cruel-plus.ir/opizo.php?url='..URL.escape(matches[1])..'&mail=mohamad.khoshnava@gmail.com')
  local u2s = http.request('http://u2s.ir/?api=1&return_text=1&url='..URL.escape(matches[1]))
  local llink = http.request('http://llink.ir/yourls-api.php?signature=a13360d6d8&action=shorturl&url='..URL.escape(matches[1])..'&format=simple')
   local s2a = http.request('http://s2a.newsandroid.ir/api.php?url='..URL.escape(matches[1]))
   local gs2 = http.request('http://gs2.ir/api.php?url='..URL.escape(matches[1]))
 
    return '🔱 لینک های کوتاه شده:\n________________________\n🔱Link :\n'..data.data.long_url..'\n________________________\n🔱gs2 :\n'..gs2..'\n________________________\n🔱S2a :\n'..s2a..'\n________________________ \n🔱 Bitly \n'..data.data.url..'\n________________________\n🔱Yeo :\n'..yeo..'\n________________________\n🔱Opizo :\n'..opizo..'\n________________________\n🔱U2s :\n'..u2s..'\n________________________\n🔱Llink : \n'..llink..'\n________________________\n🔱Yon : \nyon.ir/'..jdat.output..'\n\n🔱 @TeleGold_Team 🔱'
end
return {
  usage = "",
  patterns = {
    "^[!#/][Ss][Hh][Oo][Rr][Tt][lL][iI][Nn][kK] (.*)$",
	 "^[Ss][Hh][Oo][Rr][Tt][lL][iI][nN][kK] (.*)$"
  },
  run = run
}
