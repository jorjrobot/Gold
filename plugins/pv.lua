local function run(msg, matches)
   
 if msg.to.type == 'user' and not is_sudo(msg) then
     return "با سلام کاربر گرامی خوش اومدید این ربات توانایی محافظت 24 ساعته از گروه شمارو داره و میتونید از طریق این ربات هر کاری رو انجام بدید برای مثال: ممنوع کردن استیکر یا عکس و ممنوع کردن لینک یا اسپم خیلی امکانات دیگر که باید در کانال:\n🔱 @TeleGold_Team 🔱\nبه اون پرداخت \n\nبرای ورود به گروه های این ربات دستور #groups رو ارسال کنید\n\nلطفا در کانال من عضو شوید\n🔱 @TeleGold_Team 🔱"
 end
end
return {
patterns = { 
"(.*)",
},
run = run
}
