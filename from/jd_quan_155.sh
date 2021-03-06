#### https://github.com/wulove/wa/blob/main/jd_quan_155.sh

#!/bin/bash
# 极速版15-5券 9,11,13,15,18,20,22点
expday=`date -d "2021-05-$1 $2:59:58" +%s`
echo $expday
endday=$[$expday+5];

count=0;
for((i=1;;i++));
# 在控制请求几次
do
#当前时间 对应的秒时间戳
current=`date +%s`;
echo $current
if [ $current -ge $endday ]; then
  echo '运行到截止时间，跳出...';
  break;
elif [ $current -ge $expday ]; then
 	 # 执行程序
 	curl 'https://api.m.jd.com/client.action?functionId=newBabelAwardCollection' \
  -H 'authority: api.m.jd.com' \
  -H 'user-agent: Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'accept: */*' \
  -H 'origin: https://pro.m.jd.com' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://pro.m.jd.com/' \
  -H 'accept-language: zh-CN,zh;q=0.9,en;q=0.8' \
  -H 'cookie: __jd_ref_cls=Babel_RushExpo; mba_muid=1620749136153845447991.783.1620808240474; mba_sid=783.84; 3AB9D23F7A4B3C9B=6ES37ACVMSHLGKHKE7KNZQAYOTNIO4F3HUARMGGY5TASV22ATSVQXFQLQRTTRO5MDAPE6WGVBZEPPUM2F7MYYYBFGE; shshshfpb=pMCWkTXjOBAYNVm8c6ipsBA%3D%3D; unpl=V2_ZzNtbUUERUFzX0QBf0tZB2JXFwgRUhQTJgxFUn5MDABhUBIOclRCFnUUR1RnGloUZwYZXUBcQx1FCEVkexhdBWcFFl9EVnMlBgg7URp6K3piYBUvO1QrEhYNQ1xLGlw1ZjNBWBJRRh11XxNcKB1bBTMCQg5AVxEUIFsUUnkeDAZuBCJtRVdKJUV7NC8CGVwEbjMXXEdTSiV0OERVehteB2EDFl9yHC0UOFtDBH0cVAUwVhoORlBDQXRYFVZ7S11QNFEUX0UHQBxyOEZVehhdBWEHFFpyVA%3D%3D; shshshfp=d6c5387543165de169e847c2934c65b7; shshshfpa=f3e47f5d-8f5a-937e-b4e9-acfb371d8677-1607340476; shshshsID=2eafd3bdf4e1c48343c998e6ca94e74b_6_1620808235514; __jda=122270672.1620749136153845447991.1620749136.1620802273.1620806362.5; __jdb=122270672.8.1620749136153845447991|5.1620806362; __jdc=122270672; __jdv=122270672%7Ciosapp%7Ct_335139774%7Cliteshare%7CCopyURL%7C1617380307423; pre_seq=41; pre_session=d27a6dbe585636a0c2eead74556f73373dd71231|2014; pt_key=app_openAAJgmqtPADD-vax-VFJTbHPbPjY_E1JaVrCjq1_HG0GsXH59T87PrDlHHxq_CRB8mZDlBHJ99-4; pt_pin=%E6%81%8B%E4%BD%A0%E8%8E%B2%E6%88%91; pwdt_id=%E6%81%8B%E4%BD%A0%E8%8E%B2%E6%88%91; sid=c85906df41094c854c0281a6cacaeecw' \
  --data-raw 'body=%7B%22activityId%22%3A%22vN4YuYXS1mPse7yeVPRq4TNvCMR%22%2C%22scene%22%3A%221%22%2C%22args%22%3A%22key%3DF0A48F811520B7906998A93543124F4A765DC00D50CB71848FBD869CB65E77B50A7E7B7847B9907A4D28E9B6BC1B9744_babel%2CroleId%3D23DDF973EFB7FAA1AD86B13B60A49D01_babel%2CstrengthenKey%3D084E4D6B0277CC49034E6F7870047ED5A04FDB87965ADD7E8311FE4C1540D4B2C0929A154B4191DBE56A397E00EDA3B8_babel%22%2C%22platform%22%3A%223%22%2C%22orgType%22%3A%222%22%2C%22openId%22%3A%22-1%22%2C%22pageClickKey%22%3A%22-1%22%2C%22eid%22%3A%226ES37ACVMSHLGKHKE7KNZQAYOTNIO4F3HUARMGGY5TASV22ATSVQXFQLQRTTRO5MDAPE6WGVBZEPPUM2F7MYYYBFGE%22%2C%22fp%22%3A%22771fabf693da772ecfa4e9741f1cfbc1%22%2C%22shshshfp%22%3A%22d6c5387543165de169e847c2934c65b7%22%2C%22shshshfpa%22%3A%22f3e47f5d-8f5a-937e-b4e9-acfb371d8677-1607340476%22%2C%22shshshfpb%22%3A%22pMCWkTXjOBAYNVm8c6ipsBA%3D%3D%22%2C%22childActivityUrl%22%3A%22https%253A%252F%252Fpro.m.jd.com%252Fjdlite%252Factive%252FvN4YuYXS1mPse7yeVPRq4TNvCMR%252Findex.html%253F__in_task_view__%253DjdLiteiOS%2526lng%253D0.000000%2526lat%253D0.000000%2526sid%253Dc85906df41094c854c0281a6cacaeecw%2526un_area%253D15_1290_22047_59432%22%2C%22userArea%22%3A%22-1%22%2C%22client%22%3A%22-1%22%2C%22clientVersion%22%3A%22-1%22%2C%22uuid%22%3A%22-1%22%2C%22osVersion%22%3A%22-1%22%2C%22brand%22%3A%22-1%22%2C%22model%22%3A%22-1%22%2C%22networkType%22%3A%22-1%22%2C%22jda%22%3A%22122270672.1620749136153845447991.1620749136.1620802273.1620806362.5%22%2C%22sdkToken%22%3A%22%22%2C%22token%22%3A%22FK2PBGD3LNNP5FBLDEBTFDYKGTEP4GVOLOPA747V7M4O6MXJ5M7YA2ZF7RX7MJ527Y4OMMS26FSJ6%22%2C%22jstub%22%3A%22SUR2HTE3T5E2UYRHNLFMUWRJI7OWKEKOQGY4U3JGIM5CWR7BLAYNJUDW4RRR2EX624HBUEX53KFS5NHEAVMV5HWHQWRITOBMCVF3OSQ%22%2C%22pageClick%22%3A%22Babel_Coupon%22%2C%22la%22%3A%22605715ec560d6508f7403b91b677d79c%22%2C%22lb%22%3A%22605715ec560d6508f7403b91b677d79c%22%2C%22mitemAddrId%22%3A%22%22%2C%22geo%22%3A%7B%22lng%22%3A%220.000000%22%2C%22lat%22%3A%220.000000%22%7D%2C%22addressId%22%3A%2286971581%22%2C%22posLng%22%3A%22%22%2C%22posLat%22%3A%22%22%2C%22homeLng%22%3A%22%22%2C%22homeLat%22%3A%22%22%2C%22focus%22%3A%22%22%2C%22innerAnchor%22%3A%22%22%2C%22cv%22%3A%222.0%22%7D&screen=750*1334&client=wh5&clientVersion=1.0.0&sid=c85906df41094c854c0281a6cacaeecw&uuid=1620749136153845447991.783.1620808295687&area=15_1290_22047_59432' \
  --compressed
 	let count+=1;
 	echo $count;
 	if [ $count -eq 200 ]; then
 		break;
 	else
 	  sleep 0.100;
 		continue;
 	fi
else
  sleep 1;
	continue;
fi
done
