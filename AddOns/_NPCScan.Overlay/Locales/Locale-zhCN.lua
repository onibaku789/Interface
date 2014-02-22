--[[****************************************************************************
  * _NPCScan.Overlay by Saiket                                                 *
  * Locales/Locale-zhCN.lua - Localized string constants (zh-CN).              *
  ****************************************************************************]]


if ( GetLocale() ~= "enCN" and GetLocale() ~= "zhCN" ) then
	return;
end


-- See http://wow.curseforge.com/addons/npcscan-overlay/localization/zhCN/
local private = select( 2, ... );
private.L = setmetatable( {
	NPCs = setmetatable( {
	}, { __index = private.L.NPCs; } );
}, { __index = private.L; } );

private.L.NPCs["100"] = "格拉夫·疾齿"
private.L.NPCs["10077"] = "死亡之喉"
private.L.NPCs["10078"] = "特罗斯巴克"
private.L.NPCs["10080"] = "杉达尔·沙掠者"
private.L.NPCs["10081"] = "灰尘怨灵"
private.L.NPCs["10082"] = "泽雷利斯"
private.L.NPCs["10119"] = "沃尔查"
private.L.NPCs["10196"] = "科巴塔恩将军"
private.L.NPCs["10197"] = "嚎叫者米基尔"
private.L.NPCs["10198"] = "劫掠者卡苏克"
private.L.NPCs["10199"] = "雪爪灰熊怪"
private.L.NPCs["10200"] = "拉克西里"
private.L.NPCs["10202"] = "埃苏罗斯"
private.L.NPCs["10263"] = "燃烧地狱卫士"
private.L.NPCs["10356"] = "贝恩"
private.L.NPCs["10357"] = "毒针雷萨恩"
private.L.NPCs["10358"] = "菲林森特的阴影"
private.L.NPCs["10359"] = "瑟斯库克"
private.L.NPCs["10376"] = "水晶之牙"
private.L.NPCs["10393"] = "斯库尔"
private.L.NPCs["10509"] = "杰德"
private.L.NPCs["10558"] = "弗雷斯特恩"
private.L.NPCs["10559"] = "薇丝比娅"
private.L.NPCs["1063"] = "翡翠龙"
private.L.NPCs["10639"] = "洛吉什"
private.L.NPCs["10640"] = "橡爪"
private.L.NPCs["10641"] = "钳枝沼泽兽"
private.L.NPCs["10642"] = "埃卡洛姆"
private.L.NPCs["10644"] = "迷雾嚎叫者"
private.L.NPCs["10647"] = "拉兹王子"
private.L.NPCs["10741"] = "赛洛塔姆"
private.L.NPCs["10809"] = "石脊"
private.L.NPCs["10817"] = "杜甘·蛮锤"
private.L.NPCs["10818"] = "死亡骑士索比莱尔"
private.L.NPCs["10819"] = "布拉德贝恩男爵"
private.L.NPCs["10820"] = "瑞格雷沃公爵"
private.L.NPCs["10821"] = "腐烂者海德姆什"
private.L.NPCs["10823"] = "祖布林·扭枝"
private.L.NPCs["10824"] = "死亡猎人霍克斯比尔"
private.L.NPCs["10825"] = "僵硬的吉斯"
private.L.NPCs["10826"] = "黑暗镰刀"
private.L.NPCs["10827"] = "亡语者塞伦德"
private.L.NPCs["10828"] = "莉尼亚·阿比迪斯"
private.L.NPCs["1106"] = "失落者厨师"
private.L.NPCs["1112"] = "吸血寡妇"
private.L.NPCs["1119"] = "锤脊"
private.L.NPCs["1130"] = "游荡的冰爪熊"
private.L.NPCs["1132"] = "狂暴的冬狼"
private.L.NPCs["1137"] = "饥饿的雪怪"
private.L.NPCs["11383"] = "高阶祭司海瓦纳"
private.L.NPCs["1140"] = "刺喉雌龙"
private.L.NPCs["11447"] = "姆斯高格"
private.L.NPCs["11467"] = "苏斯"
private.L.NPCs["11497"] = "拉扎尔"
private.L.NPCs["11498"] = "沮丧的斯卡尔"
private.L.NPCs["11688"] = "被诅咒的半人马"
private.L.NPCs["12037"] = "乌索洛克"
private.L.NPCs["12237"] = "收割者麦什洛克"
private.L.NPCs["12431"] = "血牙狼人"
private.L.NPCs["12433"] = "暗影编织者克雷希斯"
private.L.NPCs["1260"] = "霜鬃长老"
private.L.NPCs["12902"] = "洛古斯·杰特"
private.L.NPCs["13896"] = "鳞须海龟"
private.L.NPCs["1398"] = "大头目加尔高什"
private.L.NPCs["1399"] = "玛高什"
private.L.NPCs["14221"] = "格拉维斯·斯里诺特"
private.L.NPCs["14222"] = "阿拉加"
private.L.NPCs["14223"] = "暴躁的本希"
private.L.NPCs["14224"] = "7:XT"
private.L.NPCs["14225"] = "凯雷恩王子"
private.L.NPCs["14226"] = "卡斯克"
private.L.NPCs["14227"] = "西斯普拉克"
private.L.NPCs["14228"] = "基格勒尔"
private.L.NPCs["14229"] = "可憎的滑刃纳迦"
private.L.NPCs["14230"] = "贼眼"
private.L.NPCs["14231"] = "咆哮者杜格斯"
private.L.NPCs["14232"] = "达尔特"
private.L.NPCs["14233"] = "雷普斯凯尔"
private.L.NPCs["14234"] = "哈尤克"
private.L.NPCs["14235"] = "腐烂者"
private.L.NPCs["14236"] = "安戈雷尔"
private.L.NPCs["14237"] = "泥浆虫"
private.L.NPCs["1424"] = "掘地工头目"
private.L.NPCs["1425"] = "卡布"
private.L.NPCs["14266"] = "纺织者杉达"
private.L.NPCs["14267"] = "摧毁者埃摩戈"
private.L.NPCs["14268"] = "康达尔"
private.L.NPCs["14269"] = "搜寻者埃库隆"
private.L.NPCs["14270"] = "斯奎迪克"
private.L.NPCs["14271"] = "雷布查斯"
private.L.NPCs["14272"] = "斯纳弗莱尔"
private.L.NPCs["14273"] = "波德哈特"
private.L.NPCs["14275"] = "塔尔玛·雷矛"
private.L.NPCs["14276"] = "斯卡基尔"
private.L.NPCs["14277"] = "塞菲莉斯"
private.L.NPCs["14278"] = "洛巴尔克"
private.L.NPCs["14279"] = "克雷普塞斯"
private.L.NPCs["14280"] = "萨姆拉斯"
private.L.NPCs["14281"] = "流血者吉米"
private.L.NPCs["14339"] = "死亡之嚎"
private.L.NPCs["14340"] = "奥辛尔·灵息"
private.L.NPCs["14342"] = "拉吉波尔"
private.L.NPCs["14343"] = "智者奥尔姆"
private.L.NPCs["14344"] = "莫戈雷斯"
private.L.NPCs["14345"] = "欧加尔"
private.L.NPCs["14424"] = "米尔洛"
private.L.NPCs["14425"] = "纳博恩"
private.L.NPCs["14426"] = "哈尔伯·邪泉"
private.L.NPCs["14427"] = "吉比斯尼克"
private.L.NPCs["14428"] = "乌鲁森"
private.L.NPCs["14429"] = "格雷莫尔"
private.L.NPCs["14430"] = "暮色巡游者"
private.L.NPCs["14431"] = "愤怒的谢尔达"
private.L.NPCs["14432"] = "瑟雷基尔"
private.L.NPCs["14433"] = "斯拉丁"
private.L.NPCs["14445"] = "维尔玛克中尉"
private.L.NPCs["14446"] = "芬加特"
private.L.NPCs["14447"] = "基摩里安"
private.L.NPCs["14448"] = "摩塔索恩"
private.L.NPCs["14471"] = "瑟提斯"
private.L.NPCs["14472"] = "格雷瑟尔"
private.L.NPCs["14473"] = "拉普雷斯"
private.L.NPCs["14474"] = "苏尔拉"
private.L.NPCs["14475"] = "雷克斯·亚希尔"
private.L.NPCs["14476"] = "克里拉克"
private.L.NPCs["14477"] = "格鲁布索尔"
private.L.NPCs["14478"] = "哈瑞坎尼安"
private.L.NPCs["14479"] = "暮光之王艾沃兰"
private.L.NPCs["14487"] = "戈鲁格尔"
private.L.NPCs["14488"] = "罗洛克"
private.L.NPCs["14490"] = "瑞帕"
private.L.NPCs["14491"] = "库尔莫克"
private.L.NPCs["14492"] = "维里弗尼克斯"
private.L.NPCs["1531"] = "失落的灵魂"
private.L.NPCs["1533"] = "痛苦的灵魂"
private.L.NPCs["1552"] = "金鳞蜥蜴"
private.L.NPCs["16179"] = "潜伏者希亚其斯"
private.L.NPCs["16180"] = "滑翔者沙德基斯"
private.L.NPCs["16181"] = "蹂躏者洛卡德"
private.L.NPCs["16184"] = "蛛怪监工"
private.L.NPCs["16854"] = "埃迪纳库斯"
private.L.NPCs["16855"] = "特雷格拉"
private.L.NPCs["17144"] = "血齿鳄"
private.L.NPCs["18241"] = "硬壳蟹"
private.L.NPCs["1837"] = "血色法官"
private.L.NPCs["1838"] = "血色质问者"
private.L.NPCs["1839"] = "血色高阶牧师"
private.L.NPCs["1841"] = "血色刽子手"
private.L.NPCs["1843"] = "工头杰瑞斯"
private.L.NPCs["1844"] = "工头玛希瑞德"
private.L.NPCs["1847"] = "弗曼恩"
private.L.NPCs["1848"] = "玛达萨尔"
private.L.NPCs["1849"] = "恐怖耳语者"
private.L.NPCs["1850"] = "普特迪乌斯"
private.L.NPCs["1851"] = "哈斯克"
private.L.NPCs["18677"] = "野蛮的麦索格"
private.L.NPCs["18678"] = "弗尔古格"
private.L.NPCs["18679"] = "沃拉克姆"
private.L.NPCs["18680"] = "玛尔提卡"
private.L.NPCs["18681"] = "盘牙大使"
private.L.NPCs["18682"] = "泥沼潜伏者"
private.L.NPCs["18683"] = "空灵猎手亚尔"
private.L.NPCs["18684"] = "独行者布罗加斯"
private.L.NPCs["18685"] = "奥卡雷"
private.L.NPCs["18686"] = "灾难预言者尤瑞姆"
private.L.NPCs["18689"] = "残骨骷髅"
private.L.NPCs["18690"] = "莫克拉什"
private.L.NPCs["18692"] = "赫玛希恩"
private.L.NPCs["18693"] = "演讲者玛尔高姆"
private.L.NPCs["18694"] = "扭曲观察者科里度斯"
private.L.NPCs["18695"] = "耶瑞卡尔大使"
private.L.NPCs["18696"] = "克兰托尔"
private.L.NPCs["18697"] = "主工程师洛杉德尔"
private.L.NPCs["18698"] = "惩罚者埃沃考尔"
private.L.NPCs["1885"] = "血色铁匠"
private.L.NPCs["1910"] = "穆亚德"
private.L.NPCs["1911"] = "迪布"
private.L.NPCs["1936"] = "农夫索利丹"
private.L.NPCs["2090"] = "马鲁克·龙鳞"
private.L.NPCs["20932"] = "努拉莫克"
private.L.NPCs["2108"] = "加内格·焦颅"
private.L.NPCs["2162"] = "阿高尔"
private.L.NPCs["2172"] = "雌性森林陆行鸟"
private.L.NPCs["21724"] = "捕鹰者"
private.L.NPCs["2175"] = "影爪"
private.L.NPCs["2184"] = "莫嘉泽尔"
private.L.NPCs["2186"] = "卡尼沃斯"
private.L.NPCs["2191"] = "利斯林"
private.L.NPCs["2192"] = "召火者拉迪森"
private.L.NPCs["22060"] = "刺客芬妮萨"
private.L.NPCs["22062"] = "维斯利姆博士"
private.L.NPCs["2258"] = "玛格拉克"
private.L.NPCs["2452"] = "斯格霍尔"
private.L.NPCs["2453"] = "洛格罗什"
private.L.NPCs["2476"] = "格什哈尔迪"
private.L.NPCs["2541"] = "萨克拉希斯"
private.L.NPCs["2598"] = "达贝尔·蒙特罗斯"
private.L.NPCs["2600"] = "歌唱者"
private.L.NPCs["2601"] = "弗尔伯利"
private.L.NPCs["2602"] = "鲁尔·巨石"
private.L.NPCs["2603"] = "考沃克"
private.L.NPCs["2604"] = "碎骨者穆罗克"
private.L.NPCs["2605"] = "扎拉斯·枯木"
private.L.NPCs["2606"] = "屠杀者尼玛尔"
private.L.NPCs["2609"] = "地占师弗林塔格"
private.L.NPCs["2744"] = "暗炉指挥官"
private.L.NPCs["2749"] = "攻城傀儡"
private.L.NPCs["2751"] = "作战傀儡"
private.L.NPCs["2752"] = "拉姆布勒"
private.L.NPCs["2753"] = "巴纳布斯"
private.L.NPCs["2754"] = "安纳塞姆斯"
private.L.NPCs["2779"] = "纳兹加克王子"
private.L.NPCs["2850"] = "断牙"
private.L.NPCs["2931"] = "扎里科特"
private.L.NPCs["3058"] = "阿兰其亚"
private.L.NPCs["3068"] = "马兹拉纳其"
private.L.NPCs["32357"] = "水晶树皮"
private.L.NPCs["32358"] = "方卜拉布·飞轮"
private.L.NPCs["32361"] = "冰角"
private.L.NPCs["32377"] = "嗜血者比洛巴斯"
private.L.NPCs["32386"] = "女战士维格蒂丝"
private.L.NPCs["32398"] = "乒乒国王"
private.L.NPCs["32400"] = "图克姆斯"
private.L.NPCs["32409"] = "疯狂的因度雷幸存者"
private.L.NPCs["32417"] = "血色领主达尔因"
private.L.NPCs["32422"] = "格罗卡拉"
private.L.NPCs["32429"] = "沸腾之怨"
private.L.NPCs["32435"] = "瓦尔"
private.L.NPCs["32438"] = "雕骨者希蕾娜"
private.L.NPCs["32447"] = "祖达克斥候"
private.L.NPCs["32471"] = "戈雷根"
private.L.NPCs["32475"] = "恐惧织网者"
private.L.NPCs["32481"] = "奥图纳"
private.L.NPCs["32485"] = "暴龙王克鲁什"
private.L.NPCs["32487"] = "古老的普迪图斯"
private.L.NPCs["32491"] = "迷失的始祖幼龙"
private.L.NPCs["32495"] = "海达娜·窃魂者"
private.L.NPCs["32500"] = "迪尔奇"
private.L.NPCs["32501"] = "大领主约夫斯"
private.L.NPCs["32517"] = "洛卡纳哈"
private.L.NPCs["3253"] = "异种收割者"
private.L.NPCs["32630"] = "维拉苟萨"
private.L.NPCs["3270"] = "秘法师拉佐斯诺特"
private.L.NPCs["3295"] = "淤泥畸体"
private.L.NPCs["33776"] = "古德利亚"
private.L.NPCs["3398"] = "格沙拉罕"
private.L.NPCs["3470"] = "拉索利安"
private.L.NPCs["35189"] = "逐日"
private.L.NPCs["3535"] = "恶臭的黑苔兽"
private.L.NPCs["3581"] = "下水道鳄鱼"
private.L.NPCs["3652"] = "鞭笞者特里高雷"
private.L.NPCs["3672"] = "博艾恩"
private.L.NPCs["3735"] = "药剂师法尔瑟斯"
private.L.NPCs["3736"] = "屠杀者摩迪沙尔"
private.L.NPCs["3773"] = "阿克瑞鲁斯"
private.L.NPCs["3792"] = "恐狼族长"
private.L.NPCs["38453"] = "阿克图瑞斯"
private.L.NPCs["3872"] = "死亡之誓"
private.L.NPCs["39183"] = "沙漠巨蝎"
private.L.NPCs["39185"] = "涎腭"
private.L.NPCs["39186"] = "地狱凝视者"
private.L.NPCs["4066"] = "纳尔塔萨"
private.L.NPCs["4132"] = "克尔克斯克"
private.L.NPCs["4339"] = "布雷姆戈"
private.L.NPCs["43488"] = "碎地者莫尔德伊"
private.L.NPCs["43613"] = "末日预言者智蹄"
private.L.NPCs["43720"] = "波奇·刺鬃"
private.L.NPCs["4380"] = "暗雾寡妇蛛"
private.L.NPCs["44224"] = "双趾"
private.L.NPCs["44225"] = "鲁夫斯·暗矢"
private.L.NPCs["44226"] = "萨尔图斯"
private.L.NPCs["44227"] = "湖岸猎手加兹"
private.L.NPCs["4425"] = "盲眼猎手"
private.L.NPCs["44714"] = "精神失常的弗朗科"
private.L.NPCs["44722"] = "纳瑞安的扭曲映像"
private.L.NPCs["44750"] = "卡利夫·斯科比斯汀"
private.L.NPCs["44759"] = "安德雷·费尔比德"
private.L.NPCs["44761"] = "自由的亚奎门塔斯"
private.L.NPCs["44767"] = "堕落者奥库鲁斯"
private.L.NPCs["45257"] = "莫尔达克·扭夜者"
private.L.NPCs["45258"] = "蛇行女王卡希亚"
private.L.NPCs["45260"] = "黑叶"
private.L.NPCs["45262"] = "厄运使者纳里克苏斯"
private.L.NPCs["45369"] = "莫里克·黑酒"
private.L.NPCs["45380"] = "灰尾巴"
private.L.NPCs["45384"] = "贤爪"
private.L.NPCs["45398"] = "格里兹拉克"
private.L.NPCs["45399"] = "擎天鸟"
private.L.NPCs["45401"] = "白鳍"
private.L.NPCs["45402"] = "尼克斯"
private.L.NPCs["45404"] = "地塑者玛尔伦"
private.L.NPCs["45739"] = "无名战士"
private.L.NPCs["45740"] = "守夜人伊瓦"
private.L.NPCs["45771"] = "玛鲁斯"
private.L.NPCs["45785"] = "雕刻南瓜怪"
private.L.NPCs["45801"] = "伊莉莎"
private.L.NPCs["45811"] = "玛丽娜·德希露斯"
private.L.NPCs["462"] = "乌尔图斯"
private.L.NPCs["46981"] = "奈塔拉什"
private.L.NPCs["46992"] = "月夜狂怒者贝拉尔德"
private.L.NPCs["47003"] = "波尔加夫"
private.L.NPCs["47008"] = "芬维克·萨托斯"
private.L.NPCs["47009"] = "不受束缚的阿夸留斯"
private.L.NPCs["47010"] = "因迪苟斯"
private.L.NPCs["47012"] = "埃芬里图斯"
private.L.NPCs["47015"] = "阿鲁高失落之子"
private.L.NPCs["47023"] = "图勒·鸦爪"
private.L.NPCs["471"] = "母蜘蛛"
private.L.NPCs["472"] = "费德菲尼尔"
private.L.NPCs["47386"] = "虫巢女王安娜米丝"
private.L.NPCs["47387"] = "感染者哈拉其斯"
private.L.NPCs["4842"] = "唤地者哈穆加"
private.L.NPCs["49822"] = "玉牙页岩蛛"
private.L.NPCs["49913"] = "蕾蒂拉拉"
private.L.NPCs["50005"] = "波塞冬斯"
private.L.NPCs["50009"] = "魔布斯"
private.L.NPCs["50050"] = "索克沙拉克"
private.L.NPCs["50051"] = "鬼脚蟹"
private.L.NPCs["50052"] = "布尔吉·黑心"
private.L.NPCs["50053"] = "被放逐的萨图科"
private.L.NPCs["50056"] = "加尔"
private.L.NPCs["50057"] = "焰翼"
private.L.NPCs["50058"] = "泰罗佩内"
private.L.NPCs["50059"] = "格尔加洛克"
private.L.NPCs["50060"] = "泰博鲁斯"
private.L.NPCs["50061"] = "埃克萨妮奥娜"
private.L.NPCs["50062"] = "奥伊纳克斯"
private.L.NPCs["50063"] = "阿卡玛哈特"
private.L.NPCs["50064"] = "乌黑的赛勒斯"
private.L.NPCs["50065"] = "硕铠鼠"
private.L.NPCs["50085"] = "崩裂之怒主宰"
private.L.NPCs["50086"] = "邪恶的塔乌斯"
private.L.NPCs["50089"] = "厄运尤拉克"
private.L.NPCs["50138"] = "卡洛玛"
private.L.NPCs["50154"] = "梅迪克西斯（褐）"
private.L.NPCs["50159"] = "桑巴斯"
private.L.NPCs["50328"] = "法格诺"
private.L.NPCs["50329"] = "拉克"
private.L.NPCs["50330"] = "克雷耶"
private.L.NPCs["50331"] = "苟汗"
private.L.NPCs["50332"] = "考达·多罗斯"
private.L.NPCs["50333"] = "蛮牛隆恩"
private.L.NPCs["50334"] = "破坏者哒克"
private.L.NPCs["50335"] = "阿里图斯"
private.L.NPCs["50336"] = "利眼约里克"
private.L.NPCs["50337"] = "柯拉克"
private.L.NPCs["50338"] = "克纳斯·夜蛮"
private.L.NPCs["50339"] = "苏里克夏"
private.L.NPCs["50340"] = "散毒者贾恩"
private.L.NPCs["50341"] = "波尔金·黑拳"
private.L.NPCs["50342"] = "希罗尼斯"
private.L.NPCs["50343"] = "奎乌尔"
private.L.NPCs["50344"] = "诺拉克西"
private.L.NPCs["50345"] = "阿里提"
private.L.NPCs["50346"] = "罗纳克"
private.L.NPCs["50347"] = "黑化者卡尔"
private.L.NPCs["50348"] = "诺里斯西"
private.L.NPCs["50349"] = "灵魂窃贼康戈"
private.L.NPCs["50350"] = "莫戈林·碎牙"
private.L.NPCs["50351"] = "虬达"
private.L.NPCs["50352"] = "柯纳思"
private.L.NPCs["50353"] = "玛纳斯"
private.L.NPCs["50354"] = "哈瓦克"
private.L.NPCs["50355"] = "卡提尔"
private.L.NPCs["50356"] = "“利刃”科罗尔"
private.L.NPCs["50357"] = "阳翼"
private.L.NPCs["50358"] = "错乱的夺日者构造体"
private.L.NPCs["50359"] = "乌戈拉克斯"
private.L.NPCs["50361"] = "奥奈特"
private.L.NPCs["50362"] = "长牙黑潭"
private.L.NPCs["50363"] = "克拉希斯伊克"
private.L.NPCs["50364"] = "撕裂者纳拉克"
private.L.NPCs["50370"] = "圣像卡拉"
private.L.NPCs["50388"] = "托里可·伊提斯"
-- private.L.NPCs["50409"] = "Mysterious Camel Figurine"
private.L.NPCs["506"] = "利爪队长"
private.L.NPCs["507"] = "芬罗斯"
private.L.NPCs["50724"] = "棘刺爬行者"
private.L.NPCs["50725"] = "艾泽兽"
private.L.NPCs["50726"] = "卡里克斯"
private.L.NPCs["50727"] = "长钩的斯崔克"
private.L.NPCs["50728"] = "死亡掠食者"
private.L.NPCs["50730"] = "毒脊"
private.L.NPCs["50731"] = "针牙"
private.L.NPCs["50733"] = "斯基提克"
private.L.NPCs["50734"] = "漫游者李斯伊克"
private.L.NPCs["50735"] = "响尾蛇迅眼"
private.L.NPCs["50737"] = "厄科隆尼斯"
private.L.NPCs["50738"] = "灰鳞"
private.L.NPCs["50739"] = "嘎洛克"
private.L.NPCs["50741"] = "卡克斯"
private.L.NPCs["50742"] = "科姆"
private.L.NPCs["50743"] = "玛纳科斯"
private.L.NPCs["50744"] = "奎里克"
private.L.NPCs["50745"] = "洛萨耶"
private.L.NPCs["50746"] = "潜地者邦尼斯"
private.L.NPCs["50747"] = "提克斯"
private.L.NPCs["50748"] = "尼阿耶"
private.L.NPCs["50749"] = "凋零的卡尔提克"
private.L.NPCs["50750"] = "易西斯"
private.L.NPCs["50752"] = "塔兰蒂斯"
private.L.NPCs["50759"] = "寡妇伊莉丝"
private.L.NPCs["50763"] = "暗影猎手"
private.L.NPCs["50764"] = "帕拉里斯"
private.L.NPCs["50765"] = "迈阿斯弥丝"
private.L.NPCs["50766"] = "塞勒纳"
private.L.NPCs["50768"] = "柯尼斯水黾"
private.L.NPCs["50769"] = "被放逐的赞伊"
private.L.NPCs["50770"] = "佐恩"
private.L.NPCs["50772"] = "艾什隆"
private.L.NPCs["50775"] = "捕猎者里克"
private.L.NPCs["50776"] = "纳拉什·沃登提斯"
private.L.NPCs["50777"] = "缝衣针"
private.L.NPCs["50778"] = "铁网"
private.L.NPCs["50779"] = "龙孢"
private.L.NPCs["50780"] = "萨罕·潮猎者"
private.L.NPCs["50782"] = "萨纳克"
private.L.NPCs["50783"] = "萨尔因作战斥候"
private.L.NPCs["50784"] = "阿尼斯"
private.L.NPCs["50785"] = "天影"
private.L.NPCs["50786"] = "烁翼"
private.L.NPCs["50787"] = "邪鳞阿尔尼斯"
private.L.NPCs["50788"] = "奎兹尔"
private.L.NPCs["50789"] = "预言者奈松"
private.L.NPCs["50790"] = "艾俄尼斯"
private.L.NPCs["50791"] = "研磨者斯特里斯"
private.L.NPCs["50792"] = "奇伊亚"
private.L.NPCs["50797"] = "尤基可"
private.L.NPCs["50803"] = "嚼骨者"
private.L.NPCs["50804"] = "裂翼"
private.L.NPCs["50805"] = "奥米斯·戈林洛克"
private.L.NPCs["50806"] = "独眼摩尔多"
private.L.NPCs["50807"] = "卡塔"
private.L.NPCs["50808"] = "行者育鲁碧"
private.L.NPCs["50809"] = "赫拉斯"
private.L.NPCs["50810"] = "伊希斯特的最爱"
private.L.NPCs["50811"] = "纳斯拉·斑皮"
private.L.NPCs["50812"] = "阿雷耶"
private.L.NPCs["50813"] = "芬尼摩尔"
private.L.NPCs["50814"] = "嗜尸者"
private.L.NPCs["50815"] = "刀疤"
private.L.NPCs["50816"] = "鲁恩·灵爪"
private.L.NPCs["50817"] = "漫游者阿波尼"
private.L.NPCs["50818"] = "黑暗徘徊者"
private.L.NPCs["50819"] = "冰爪"
private.L.NPCs["50820"] = "俞·野爪"
private.L.NPCs["50821"] = "艾利·天镜"
private.L.NPCs["50822"] = "迅云艾然"
private.L.NPCs["50823"] = "暴怒先生"
private.L.NPCs["50825"] = "菲勒斯"
private.L.NPCs["50828"] = "波罗波斯"
private.L.NPCs["50830"] = "斯普林金"
private.L.NPCs["50831"] = "斯克里奇"
private.L.NPCs["50832"] = "怒嚎"
private.L.NPCs["50833"] = "暮皮"
private.L.NPCs["50836"] = "聪明的伊克伊克"
private.L.NPCs["50837"] = "卡什"
private.L.NPCs["50838"] = "泰布斯"
private.L.NPCs["50839"] = "镀铬火犬"
private.L.NPCs["50840"] = "纳纳斯少校"
private.L.NPCs["50842"] = "熔岩犬王"
private.L.NPCs["50846"] = "奴喉"
private.L.NPCs["50855"] = "幽爪贾克斯"
private.L.NPCs["50856"] = "史纳克"
private.L.NPCs["50858"] = "暮翼"
private.L.NPCs["50864"] = "茂茂"
private.L.NPCs["50865"] = "萨乌里克斯"
private.L.NPCs["50874"] = "特诺克"
private.L.NPCs["50875"] = "奈科斯"
private.L.NPCs["50876"] = "阿维斯"
private.L.NPCs["50882"] = "楚帕卡布罗"
private.L.NPCs["50884"] = "胆小的掠尘"
private.L.NPCs["50886"] = "海翼"
private.L.NPCs["50891"] = "博罗什"
private.L.NPCs["50892"] = "辛恩"
private.L.NPCs["50895"] = "沃鲁克斯"
private.L.NPCs["50897"] = "丘猎者费克司科"
private.L.NPCs["50901"] = "特洛马克"
private.L.NPCs["50903"] = "沼泽领主奥利克斯"
private.L.NPCs["50905"] = "赛达"
private.L.NPCs["50906"] = "叠翼"
private.L.NPCs["50908"] = "夜嚎"
private.L.NPCs["50915"] = "响鼻"
private.L.NPCs["50916"] = "啜泣者残爪"
private.L.NPCs["50922"] = "瓦格"
private.L.NPCs["50925"] = "茸爪"
private.L.NPCs["50926"] = "灰斑熊大本"
private.L.NPCs["50929"] = "小布约恩"
private.L.NPCs["50930"] = "沉睡者西布鲁斯"
private.L.NPCs["50931"] = "芒格"
private.L.NPCs["50937"] = "腌皮"
private.L.NPCs["50940"] = "斯维"
private.L.NPCs["50942"] = "刨根者阿呆"
private.L.NPCs["50945"] = "脏脏"
private.L.NPCs["50946"] = "赫格奇拉"
private.L.NPCs["50947"] = "瓦拉"
private.L.NPCs["50948"] = "晶背"
private.L.NPCs["50949"] = "费恩的先锋"
private.L.NPCs["50952"] = "寄居蟹吉姆"
private.L.NPCs["50955"] = "卡西纳克"
private.L.NPCs["50957"] = "巨钳"
private.L.NPCs["50959"] = "卡尔金"
private.L.NPCs["50964"] = "硬腭"
private.L.NPCs["50967"] = "掠食者伏爪"
private.L.NPCs["50986"] = "金背"
private.L.NPCs["50993"] = "盖尔多拉克"
private.L.NPCs["50995"] = "布鲁泽"
private.L.NPCs["50997"] = "顶撞者波纳克"
private.L.NPCs["51000"] = "坚不可摧的黑壳"
private.L.NPCs["51001"] = "毒爪"
private.L.NPCs["51002"] = "天蝎波克斯"
private.L.NPCs["51004"] = "托克斯"
private.L.NPCs["51007"] = "瑟科特"
private.L.NPCs["51008"] = "骇影"
private.L.NPCs["51010"] = "天蝎史尼普斯"
private.L.NPCs["51014"] = "特拉皮斯"
private.L.NPCs["51017"] = "戈赞"
private.L.NPCs["51018"] = "佐尔穆斯"
private.L.NPCs["51021"] = "漩涡猛兽"
private.L.NPCs["51022"] = "考迪克斯"
private.L.NPCs["51025"] = "戴尔纳"
private.L.NPCs["51026"] = "纳丝"
private.L.NPCs["51027"] = "斯必罗库拉"
private.L.NPCs["51028"] = "深坑虫"
private.L.NPCs["51029"] = "帕拉西图斯"
private.L.NPCs["51031"] = "觅踪者"
private.L.NPCs["51037"] = "失落的吉尔尼斯斗犬"
private.L.NPCs["51040"] = "喘鼻"
private.L.NPCs["51042"] = "冷心"
private.L.NPCs["51044"] = "瘟神"
private.L.NPCs["51045"] = "阿卡努斯"
private.L.NPCs["51046"] = "菲多尼斯"
private.L.NPCs["51048"] = "瑞克萨斯"
private.L.NPCs["51052"] = "采蕉者吉布"
private.L.NPCs["51053"] = "克里克斯"
private.L.NPCs["51057"] = "维维尔"
private.L.NPCs["51058"] = "阿菲斯"
private.L.NPCs["51059"] = "黑蹄"
private.L.NPCs["51061"] = "罗斯萨拉姆"
private.L.NPCs["51062"] = "科贝雷"
private.L.NPCs["51063"] = "法拉纳克斯"
private.L.NPCs["51066"] = "晶牙"
private.L.NPCs["51067"] = "格林特"
private.L.NPCs["51069"] = "辛提勒斯"
private.L.NPCs["51071"] = "弗罗伦斯船长"
private.L.NPCs["51076"] = "洛佩克司"
private.L.NPCs["51077"] = "灌尾"
private.L.NPCs["51078"] = "费迪南"
private.L.NPCs["51079"] = "船长费尔温德"
private.L.NPCs["51401"] = "梅迪克西斯（红）"
private.L.NPCs["51402"] = "梅迪克西斯（绿）"
private.L.NPCs["51403"] = "梅迪克西斯（黑）"
private.L.NPCs["51404"] = "梅迪克西斯（蓝）"
private.L.NPCs["51658"] = "操亡者莫赫"
private.L.NPCs["51661"] = "苏尔卡鲁"
private.L.NPCs["51662"] = "穆哈姆巴"
private.L.NPCs["51663"] = "博格雅恩"
private.L.NPCs["519"] = "斯拉克"
private.L.NPCs["520"] = "布拉克"
private.L.NPCs["521"] = "鲁伯斯"
private.L.NPCs["52146"] = "蜘蜘"
private.L.NPCs["534"] = "奈法鲁"
private.L.NPCs["5343"] = "莎尔莱"
private.L.NPCs["5345"] = "钻石头"
private.L.NPCs["5346"] = "潜行者布拉多尔"
private.L.NPCs["5347"] = "滑翔者安蒂鲁斯"
private.L.NPCs["5348"] = "睡梦守卫弗克托"
private.L.NPCs["5349"] = "阿拉瑟希斯"
private.L.NPCs["5350"] = "基洛特"
private.L.NPCs["5352"] = "灰腹老熊"
private.L.NPCs["5354"] = "纳尔利夫"
private.L.NPCs["5356"] = "咆哮者"
private.L.NPCs["54318"] = "安卡"
private.L.NPCs["54319"] = "马格瑞亚"
private.L.NPCs["54320"] = "班萨罗斯"
private.L.NPCs["54321"] = "莎利克斯"
private.L.NPCs["54322"] = "德丝缇拉克"
private.L.NPCs["54323"] = "柯尔利克斯"
private.L.NPCs["54324"] = "掠行之火"
private.L.NPCs["54338"] = "安塞瑞丝"
private.L.NPCs["54533"] = "拉克玛亲王"
private.L.NPCs["56081"] = "乐观的本希"
private.L.NPCs["572"] = "莱布里萨斯"
private.L.NPCs["573"] = "死神4000型"
private.L.NPCs["574"] = "纳拉克西斯"
private.L.NPCs["5785"] = "海特拉什"
private.L.NPCs["5786"] = "断矛"
private.L.NPCs["5787"] = "执行者埃米尔冈德"
private.L.NPCs["5807"] = "扫荡者"
private.L.NPCs["5809"] = "指挥官萨拉菲尔"
private.L.NPCs["5822"] = "斯考恩"
private.L.NPCs["5823"] = "死亡毒蝎"
private.L.NPCs["5824"] = "獠牙队长"
private.L.NPCs["5826"] = "吉欧洛德·杂斑"
private.L.NPCs["5828"] = "狮王休玛"
private.L.NPCs["5829"] = "土狼斯诺特"
private.L.NPCs["5830"] = "莱丝塔伦"
private.L.NPCs["5831"] = "迅鬃斑马"
private.L.NPCs["5832"] = "雷蹄蜥蜴"
private.L.NPCs["58336"] = "暗月兔"
private.L.NPCs["5834"] = "天空之刃艾泽里"
private.L.NPCs["5835"] = "工头葛瑞尔斯"
private.L.NPCs["5836"] = "技师维尔雷格"
private.L.NPCs["5837"] = "石臂"
private.L.NPCs["5838"] = "断矛"
private.L.NPCs["584"] = "卡松"
private.L.NPCs["5841"] = "石枪"
private.L.NPCs["5842"] = "“跳跃者”塔克"
private.L.NPCs["5847"] = "赫金·石须"
private.L.NPCs["58474"] = "血尖"
private.L.NPCs["5848"] = "玛尔金·麦酒"
private.L.NPCs["5849"] = "矿工弗雷姆"
private.L.NPCs["5851"] = "基洛戈·锤趾队长"
private.L.NPCs["5859"] = "哈格"
private.L.NPCs["5863"] = "土地祭司古科罗克"
private.L.NPCs["5864"] = "斯文格加特·矛鬃"
private.L.NPCs["5865"] = "迪舒"
private.L.NPCs["58768"] = "裂齿"
private.L.NPCs["58769"] = "钳颚"
private.L.NPCs["58771"] = "浗"
private.L.NPCs["58778"] = "伊萨"
private.L.NPCs["58817"] = "牢非的灵魂"
private.L.NPCs["58949"] = "屠夫白锦"
private.L.NPCs["5912"] = "变异精灵龙"
private.L.NPCs["5915"] = "拉文诺克修士"
private.L.NPCs["5928"] = "悲哀之翼"
private.L.NPCs["5930"] = "瑞雯"
private.L.NPCs["5932"] = "工头维普弗恩"
private.L.NPCs["5933"] = "被流放的阿切鲁斯"
private.L.NPCs["5935"] = "不可战胜的铁眼"
private.L.NPCs["59369"] = "瑟尔林·卡斯迪诺夫教授"
private.L.NPCs["5937"] = "邪刺恐蝎"
private.L.NPCs["596"] = "被洗脑的贵族"
private.L.NPCs["599"] = "魔理莎·杜派格 "
private.L.NPCs["60491"] = "怒之煞"
private.L.NPCs["61"] = "索罗斯·莱特芬格"
private.L.NPCs["6118"] = "瓦罗森的幽灵"
private.L.NPCs["616"] = "查特"
private.L.NPCs["62"] = "大蜡烛伽格"
private.L.NPCs["6228"] = "黑铁大使"
private.L.NPCs["62346"] = "炮舰"
private.L.NPCs["62880"] = "铁拳苟畅"
private.L.NPCs["62881"] = "裂魂使高珲"
private.L.NPCs["63101"] = "铁木贾将军"
private.L.NPCs["63240"] = "暗影主宰塞铎"
private.L.NPCs["63510"] = "乌麟"
private.L.NPCs["63691"] = "火霜"
private.L.NPCs["63695"] = "献祭者宝赉"
private.L.NPCs["63977"] = "维拉克西斯"
private.L.NPCs["63978"] = "科里充"
private.L.NPCs["64403"] = "阿拉尼"
private.L.NPCs["6581"] = "暴掠龙女王"
private.L.NPCs["6582"] = "萨瓦丝女王"
private.L.NPCs["6583"] = "格鲁夫"
private.L.NPCs["6584"] = "暴龙之王摩什"
private.L.NPCs["6585"] = "乌卡洛克"
private.L.NPCs["6648"] = "安提里奥斯 "
private.L.NPCs["6649"] = "瑟丝彼拉"
private.L.NPCs["6650"] = "方弗罗将军"
private.L.NPCs["6651"] = "拉格罗尔"
private.L.NPCs["68317"] = "梅薇思·哈姆斯"
private.L.NPCs["68318"] = "达兰·碎夜"
private.L.NPCs["68319"] = "笛沙·菲尔沃顿"
private.L.NPCs["68320"] = "鬼祟的乌班提"
private.L.NPCs["68321"] = "卡尔·好战者"
private.L.NPCs["68322"] = "穆尔塔"
private.L.NPCs["69099"] = "纳拉克"
private.L.NPCs["69664"] = "穆塔"
private.L.NPCs["69768"] = "赞达拉战斗斥候"
private.L.NPCs["69769"] = "赞达拉战争使者"
private.L.NPCs["69841"] = "赞达拉战争使者"
private.L.NPCs["69842"] = "赞达拉战争使者"
private.L.NPCs["69843"] = "曹卓"
private.L.NPCs["69996"] = "攫天者库莱"
private.L.NPCs["69997"] = "布根尼图斯"
private.L.NPCs["69998"] = "苟达"
private.L.NPCs["69999"] = "巨灵神拉姆克"
private.L.NPCs["70000"] = "全知者阿塔比姆"
private.L.NPCs["70001"] = "碎脊者乌鲁"
private.L.NPCs["70002"] = "路班"
private.L.NPCs["70003"] = "莫托尔"
private.L.NPCs["70096"] = "战神多坎"
private.L.NPCs["70126"] = "威利·怀尔德"
private.L.NPCs["7015"] = "残忍的弗拉格莫克"
private.L.NPCs["7016"] = "薇丝普拉"
private.L.NPCs["7017"] = "辛斯雷尔"
private.L.NPCs["70238"] = "不眠之眼"
private.L.NPCs["70243"] = "大祭师克拉达"
private.L.NPCs["70249"] = "聚焦之眼"
private.L.NPCs["70276"] = "颂风者诺库"
private.L.NPCs["70323"] = "卡兰卡诺"
private.L.NPCs["70430"] = "岩石恐魔"
private.L.NPCs["70440"] = "莫纳拉"
private.L.NPCs["70530"] = "拉沙"
private.L.NPCs["7104"] = "迪塞库斯"
private.L.NPCs["7137"] = "伊姆拉图斯"
private.L.NPCs["71864"] = "斯普鲁克"
private.L.NPCs["71919"] = "泛酸的筑汞"
private.L.NPCs["71992"] = "月牙"
private.L.NPCs["72045"] = "蛰龙"
private.L.NPCs["72048"] = "响骨"
private.L.NPCs["72049"] = "噬鹤者"
private.L.NPCs["72193"] = "卡卡诺斯"
private.L.NPCs["72245"] = "泽泉"
private.L.NPCs["72769"] = "玉火之灵"
private.L.NPCs["72775"] = "布佛"
private.L.NPCs["72808"] = "查沃卡"
private.L.NPCs["72909"] = "虫群先锋古赤"
private.L.NPCs["72970"] = "高戈纳尔"
private.L.NPCs["73157"] = "石苔"
private.L.NPCs["73158"] = "翠羽公鹤"
private.L.NPCs["73160"] = "铁鬃钢角牛"
private.L.NPCs["73161"] = "怒壳巨龟"
private.L.NPCs["73163"] = "帝王巨蟒"
private.L.NPCs["73166"] = "凶暴钳爪蟹"
private.L.NPCs["73167"] = "惑龙"
private.L.NPCs["73169"] = "神战士迦库尔"
private.L.NPCs["73170"] = "斥候奥苏"
private.L.NPCs["73171"] = "黑火勇士"
private.L.NPCs["73172"] = "燧石领主铠兰"
private.L.NPCs["73173"] = "烙印者乌都尔"
private.L.NPCs["73174"] = "烈焰祭司阿克鲁斯"
private.L.NPCs["73175"] = "落烬"
private.L.NPCs["73277"] = "剪叶者"
private.L.NPCs["73279"] = "吞天"
private.L.NPCs["73281"] = "幽灵船瓦祖维斯号"
private.L.NPCs["73282"] = "加尼亚"
private.L.NPCs["73293"] = "维茨格"
private.L.NPCs["73666"] = "烈焰祭司阿克鲁斯"
private.L.NPCs["73704"] = "斯汀克布莱德"
private.L.NPCs["763"] = "失落者酋长"
private.L.NPCs["7846"] = "吞噬者特雷姆斯"
private.L.NPCs["79"] = "监工纳尔格"
private.L.NPCs["8199"] = "克莱吉拉克"
private.L.NPCs["8200"] = "唤沙者辛萨拉"
private.L.NPCs["8201"] = "失落者奥姆高尔"
private.L.NPCs["8203"] = "克雷格·尼哈鲁"
private.L.NPCs["8204"] = "吞噬者索利德"
private.L.NPCs["8205"] = "贪婪的哈尔卡"
private.L.NPCs["8207"] = "余烬之翼"
private.L.NPCs["8210"] = "锋爪"
private.L.NPCs["8211"] = "海崖奔跳者"
private.L.NPCs["8212"] = "雷克"
private.L.NPCs["8213"] = "铁背龟"
private.L.NPCs["8214"] = "加林德·夏龙"
private.L.NPCs["8215"] = "格瑞姆格斯"
private.L.NPCs["8216"] = "狂暴者雷瑟罗克"
private.L.NPCs["8217"] = "附魔师米瑟雷希斯"
private.L.NPCs["8218"] = "漫步者维瑟哈特"
private.L.NPCs["8219"] = "祖拉雷克"
private.L.NPCs["8277"] = "雷克提拉克"
private.L.NPCs["8278"] = "斯莫达尔"
private.L.NPCs["8279"] = "未完善的作战傀儡"
private.L.NPCs["8280"] = "夏雷纳尔"
private.L.NPCs["8281"] = "斯卡尔德"
private.L.NPCs["8282"] = "玛斯托格"
private.L.NPCs["8283"] = "奴隶主托恩·黑心"
private.L.NPCs["8296"] = "扭曲者莫吉尔"
private.L.NPCs["8297"] = "顽强的玛古诺斯"
private.L.NPCs["8298"] = "先知阿库巴尔"
private.L.NPCs["8299"] = "斯比弗雷尔"
private.L.NPCs["8300"] = "毁灭"
private.L.NPCs["8301"] = "掠夺者科拉克"
private.L.NPCs["8302"] = "死眼"
private.L.NPCs["8303"] = "格朗特"
private.L.NPCs["8304"] = "德雷斯克恩"
private.L.NPCs["8503"] = "吉波维特"
private.L.NPCs["8660"] = "伊夫卡尔"
private.L.NPCs["8923"] = "无敌的潘佐尔"
private.L.NPCs["8924"] = "贝哈默斯"
private.L.NPCs["8976"] = "赫玛图斯"
private.L.NPCs["8978"] = "萨里斯·巴加尔"
private.L.NPCs["8979"] = "格鲁克拉什"
private.L.NPCs["8981"] = "失控的掠夺者"
private.L.NPCs["9217"] = "尖石首席法师"
private.L.NPCs["9218"] = "尖石统帅"
private.L.NPCs["9219"] = "尖石屠夫"
private.L.NPCs["947"] = "沉默的罗恩"
private.L.NPCs["9596"] = "班诺克·巨斧"
private.L.NPCs["9602"] = "哈克佐尔"
private.L.NPCs["9604"] = "高戈诺奇"
private.L.NPCs["9718"] = "霍克·巴什古德"
private.L.NPCs["9736"] = "军需官兹格雷斯"
private.L.NPCs["99"] = "狡猾的莫加尼"

private.L["BUTTON_TOOLTIP_LINE1"] = "|cffffee00 _NPCScan.Overlay|r"
private.L["BUTTON_TOOLTIP_LINE2"] = "|cffd6ff00点击：|r切换世界地图路径"
private.L["BUTTON_TOOLTIP_LINE3"] = "|cffd6ff00Shift-点击：|r切换世界地图标记"
private.L["BUTTON_TOOLTIP_LINE4"] = "|cffd6ff00右击：|r切换小地图路径"
private.L["BUTTON_TOOLTIP_LINE5"] = "|cffaaf200中键-点击：|r同时切换显示小地图和世界地图路径"
private.L["BUTTON_TOOLTIP_LINE6"] = "|cff6cff00Shift-中键点击：|r打开选项菜单"
private.L["CONFIG_ALPHA"] = "透明度"
private.L["CONFIG_DESC"] = "设置在哪个地图上显示怪物路径。大部分地图插件都通过世界地图的设置来控制。"
private.L["CONFIG_SHOWALL"] = "永远显示所有路径"
private.L["CONFIG_SHOWALL_DESC"] = "通常地图上不会显示非搜索中的怪物的路径，打开这个选项将显示所有已知的怪物的路径。"
private.L["CONFIG_TITLE"] = "路径图"
private.L["CONFIG_TITLE_STANDALONE"] = "_|cffCCCC88NPCScan|r.Overlay"
private.L["MODULE_ALPHAMAP3"] = "AlphaMap3 插件"
private.L["MODULE_BATTLEFIELDMINIMAP"] = "战场小地图"
private.L["MODULE_MINIMAP"] = "小地图"
private.L["MODULE_OMEGAMAP"] = "OmegaMap 插件"
private.L["MODULE_RANGERING_DESC"] = "提示：在有稀有怪的地图上才会显示距离环。"
private.L["MODULE_RANGERING_FORMAT"] = "显示大概%d码的侦测距离环"
private.L["MODULE_WORLDMAP"] = "世界地图"
private.L["MODULE_WORLDMAP_KEY_FORMAT"] = "%s"
private.L["MODULE_WORLDMAP_KEYTOGGLE"] = "标记"
private.L["MODULE_WORLDMAP_KEYTOGGLE_DESC"] = "切换路径标记。"
private.L["MODULE_WORLDMAP_TOGGLE"] = "NPCs"
private.L["MODULE_WORLDMAP_TOGGLE_DESC"] = "显示_|cffCCCC88NPCScan|r.Overlay已知怪物路径的路径图。"

