-- ------------------------------------------------------------------------------ --
--                            TradeSkillMaster_Shopping                           --
--            http://www.curse.com/addons/wow/tradeskillmaster_shopping           --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Shopping Locale - zhCN
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Shopping/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Shopping", "zhCN")
if not L then return end

L["Action"] = "功能"
L["Added '%s' to your favorite searches."] = "添加'%s'到你最喜欢的搜索"
-- L["Below Custom Price ('0c' to disable)"] = ""
-- L["Below Max Price"] = ""
-- L["Below Vendor Sell Price"] = ""
L["Bid Percent"] = "竞价百分比"
L["Buyout"] = "一口价"
L[ [=[Click to search for an item.
Shift-Click to post at market value.]=] ] = [=[单击物品 将扫描拍卖
Shift+单击 将以列出的市场价格来发布拍卖]=]
L["Custom Filter"] = "自定义筛选器"
L["Default Post Undercut Amount"] = "默认发布压价金额"
L["Destroy Mode"] = "分解模式"
-- L["% DE Value"] = ""
-- L["Disenchant Search Profit: %s"] = ""
L["Done Scanning"] = "完成扫描"
L["Enter what you want to search for in this box. You can also use the following options for more complicated searches."] = "在此框中输入你想要搜索的物品，您还可以使用下列选项来进行更复杂精确的搜索"
L["Error creating operation. Operation with name '%s' already exists."] = "创建操作失败。操作名称 '%s' 已经存在。"
L["Even (5/10/15/20) Stacks Only"] = "只买成(5/10/15/20)的堆叠"
L["Favorite Searches"] = "最喜欢的搜索"
L["General"] = "常规"
L["General Operation Options"] = "常规操作选项"
L["General Options"] = "常规选项"
L["General Settings"] = "常规设置"
L["Give the new operation a name. A descriptive name will help you find this operation later."] = "给新的操作命名。这个命名将提示帮助你之后更容易找到这个操作。"
L["Hide Grouped Items"] = "隐藏分组项目"
L["If checked, auctions above the max price will be shown."] = "如果勾选,将显示高于最高价格的拍卖品。"
L["If checked, only auctions posted in even quantities will be considered for purchasing."] = "如果勾选, 只有数量合适的发布物品才会考虑购买"
-- L["If checked, the maximum shopping price will be shown in the tooltip for the item."] = ""
L["If set, only items which are usable by your character will be included in the results."] = "如果设置,只有对你角色可用的物品将在结果中显示。"
L["If set, only items which exactly match the search filter you have set will be included in the results."] = "如果设置, 只有严格匹配你设置的筛选条件的物品才会被显示在结果中。"
L["Import"] = "导入"
L["Import Favorite Search"] = "导入最喜欢的搜索"
L["Inline Filters:|r You can easily add common search filters to your search such as rarity, level, and item type. For example '%sarmor/leather/epic/85/i350/i377|r' will search for all leather armor of epic quality that requires level 85 and has an ilvl between 350 and 377 inclusive. Also, '%sinferno ruby/exact|r' will display only raw inferno rubys (none of the cuts)."] = "|cffffff00在线过滤:|r 你可以通过添加 稀有度,等级,物品类型 来过滤物品. 例如 '%sarmor/leather/epic/85/i350/i377|r' 将会查找所有皮甲并且满足(史诗级，85级，物品等级在355~377. 再如, '%sinferno ruby/exact|r' 将只会显示原始的地狱炎石而不包括切割后的产品"
L["Invalid custom price source for %s. %s"] = "无效的价格来源%s. %s"
L["Invalid destroy search: '%s'"] = "无效分解搜索: '%s'"
L["Invalid destroy target: '%s'"] = "无效分解目标: '%s'"
L["Invalid Even Only Filter"] = "无效唯一筛选"
L["Invalid Exact Only Filter"] = "无效的唯一精确筛选"
L["Invalid Filter"] = "无效筛选"
L["Invalid Item Level"] = "无效的物品等级"
L["Invalid Item Rarity"] = "无效的物品品质"
L["Invalid Item SubType"] = "无效的物品子类型"
L["Invalid Item Type"] = "无效物品类型"
L["Invalid Max Quantity"] = "无效的最大数量"
L["Invalid Min Level"] = "无效的最低等级"
L["Invalid target item for destroy search: '%s'"] = "分解搜索中的无效物品: '%s'"
L["Invalid Usable Only Filter"] = "无效的唯一可用筛选"
L["Item"] = "物品"
L["Item Class"] = "物品种类"
L["Item Level Range:"] = "物品等级范围:"
L["Item SubClass"] = "物品子类型"
-- L["Items which are below their maximum price (per their group / Shopping operation) will be displayed in Sniper searches."] = ""
-- L["Items which are below their vendor sell price will be displayed in Sniper searches."] = ""
-- L["Items which are below this custom price will be displayed in Sniper searches."] = ""
L["Left-Click to run this search."] = "左键点击来进行这个搜索"
L["Log"] = "日志"
-- L["Management"] = ""
L["% Market Value"] = "%s 市场价"
L["Market Value Price Source"] = "市场价来源"
-- L["% Mat Price"] = ""
-- L["Max Disenchant Search Percent"] = ""
L["Maximum Auction Price (per item)"] = "最高价(每件)"
L["Maximum quantity purchased for destroy search."] = "分解搜索的最大购买数量"
L["Maximum quantity purchased for %s."] = "%s 的最大购买数量"
L["Maximum Quantity to Buy:"] = "最大购买量"
L["% Max Price"] = "%最高价"
-- L["Max Shopping Price:"] = ""
L["Minimum Rarity"] = "最低品质"
L["Multiple Search Terms:|r You can search for multiple things at once by simply separated them with a ';'. For example '%selementium ore; obsidium ore|r' will search for both elementium and obsidium ore."] = "|cffffff00多重查询条件:|r 你可以一次查询多个物品通过使用';'符号分割开来. 例如 '%s铁矿石; 铜矿石|r' 将会同时查找铁矿石和铜矿石。"
L["New Operation"] = "新操作"
L["No recent AuctionDB scan data found."] = "没有发现最近的 AuctionDB扫描数据"
L["Normal Mode"] = "正常模式"
L["Normal Post Price"] = "回跌价格"
-- L["NOTE: The scan must be stopped before you can buy anything."] = ""
L["Num"] = "数量"
L["Operation Name"] = "操作名称"
L["Operations"] = "操作"
L["Options"] = "选项"
L["Other"] = "其他"
L["Paste the search you'd like to import into the box below."] = "在下面的框体粘贴导入你想要的搜索"
L["Posted a %s with a buyuot of %s."] = "以一口价 %s, 发布拍卖 %s."
L["Preparing Filter %d / %d"] = "准备筛选器 %d / %d"
L["Preparing filters..."] = "准备筛选…"
L["Press Ctrl-C to copy this saved search."] = "Ctrl+C复制这个保存的搜索"
L["Price"] = "价格"
L["Quick Posting"] = "快速拍卖"
L["Quick Posting Duration"] = "快速拍卖持续时间"
L["Quick Posting Price"] = "快速拍卖价格"
L["Recent Searches"] = "最近搜索"
L["Relationships"] = "关联"
L["Removed '%s' from your favorite searches."] = "从您最喜欢的搜索里移除'%s' "
L["Removed '%s' from your recent searches."] = "从您最近的搜索里移除'%s' "
L["Required Level Range:"] = "物品等级范围:"
L["Reset Filters"] = "重置筛选器"
L["Right-Click to favorite this recent search."] = "右键点击 保存到最喜欢的搜索"
L["Right-Click to remove from favorite searches."] = "右键点击 从最喜欢的搜索里移除"
L["Saved Searches"] = "保存搜索"
L["Scanning %d / %d (Page %d / %d)"] = "扫描 %d / %d(页面 %d / %d)"
L["Search Filter:"] = "搜索筛选器:"
L["Select the groups which you would like to include in the search."] = "选择你想搜索的分组"
L["'%s' has a Shopping operation of '%s' which no longer exists. Shopping will ignore this group until this is fixed."] = "分组'%s'(包含操作 '%s')已不再存在. Shopping会忽略这个分组直到该问题被修复。"
L["Shift-Left-Click to export this search."] = "Shift+左键 导出这个搜索。"
L["Shift-Right-Click to remove this recent search."] = "Shift+右键 移除最近的搜索。"
L["Shopping for auctions including those above the max price."] = "购买拍卖品(包括那些高于最高价格的)。"
L["Shopping for auctions with a max price set."] = "购买拍卖品(在最高价格限定下)。"
L["Shopping for even stacks including those above the max price"] = "购买整组,忽视最高价格选定。"
L["Shopping for even stacks with a max price set."] = "购买整组,在最高价格限定下。"
L["Shopping operations contain settings items which you regularly buy from the auction house."] = "Shopping操作包括设置你经常在拍卖行购买的物品"
L["Show Auctions Above Max Price"] = "显示高于最高价格的拍卖品"
-- L["Show Shopping Max Price in Tooltip"] = ""
L["Sidebar Pages:"] = "侧边拦页面:"
L["Skipped the following search term because it's invalid."] = "已跳过下一不可用的扫描。"
L["Skipped the following search term because it's too long. Blizzard does not allow search terms over 63 characters."] = "跳过下面的搜索项,因为它太长了。暴雪不允许超过63字符的搜索条件。"
-- L["Sniper Options"] = ""
-- L["Start Disenchant Search"] = ""
L["Start Search"] = "开始搜索"
-- L["Start Sniper"] = ""
L["Start Vendor Search"] = "开始NPC价格查询"
L["Stop"] = "停止"
-- L["Stop Sniper"] = ""
L["% Target Value"] = "% 目标物品价格"
-- L["The disenchant search looks for items on the AH below their disenchant value. You can set the maximum percentage of disenchant value to search for in the Shopping General options"] = ""
L["The duration at which items will be posted via the 'Quick Posting' frame."] = "物品通过'快速发布'模块发布的时长"
L["The highest price per item you will pay for items in affected by this operation."] = "你希望购买每件物品的最高价(不是每组的价格),拍卖行中所有低于此价格的物品将会提示你购买"
-- L["The Sniper feature will look in real-time for items that have recently been posted to the AH which are worth snatching! You can configure the parameters of Sniper in the Shopping options."] = ""
L["The vendor search looks for items on the AH below their vendor sell price."] = "NPC价格查询将查询那些可以转手卖NPC来获取利益的物品"
L["This is how Shopping calculates the '% Market Value' column in the search results."] = "这是快速拍卖模块物品市场价的来源，通常显示在模块里物品的右侧"
L["This is the default price Shopping will suggest to post items at when there's no others posted."] = "这是当没有别的出售者出售该物品时，将以回跌价出售上架该物品"
-- L["This is the maximum percentage of disenchant value that the Other > Disenchant search will display results for."] = ""
L["This is the percentage of your buyout price that your bid will be set to when posting auctions with Shopping."] = "这是你发布物品的竞标价和一口价百分比。"
L["This price is used to determine what items will be posted at through the 'Quick Posting' frame."] = "这个价格关系着在'快速发布'模块里用shift+点击发布物品的价格。"
L["TSM Groups"] = "TSM分组"
L["Unknown Filter"] = "未知的筛选"
L["Unknown milling search target: '%s'"] = "未知研磨目标'%s'"
L["% Vendor Price"] = "% NPC价格"
L["Vendor Search Profit: %s"] = "供应商价格: %s"
L["What to set the default undercut to when posting items with Shopping."] = "设置发布和购买的默认削价"
L["When in destroy mode, you simply enter a target item (ink/pigment, enchanting mat, gem, etc) into the search box to search for everything you can destroy to get that item."] = "在分解模式,当你在搜索框中输入一个物品名称 (墨水/染料, 附魔材料, 宝石, 等等)时,会出现能分解出这种物品的全部物品。"
L["When in normal mode, you may run simple and filtered searches of the auction house."] = "在正常模式下,你可以在拍卖行进行简单筛选的搜索。"
