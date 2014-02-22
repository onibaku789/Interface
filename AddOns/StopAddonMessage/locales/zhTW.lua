﻿local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhTW")
if not L then return end
L["Action"] = "執行"
L["Add Name"] = "新增名稱"
L["Add incoming prefixes"] = "新增接收的字首"
L["Add incoming prefixes to the prefix list."] = "新增接收的字首到字首清單。"
L["Add outgoing prefixes"] = "新增傳送的字首"
L["Add outgoing prefixes to the prefix list."] = "新增傳送的字首到字首清單。"
L["Add sender name to list"] = "新增傳送者名稱到清單"
L["Added incoming prefix |cffffff00%s|r (|cffffff00%s|r) from |cffffff00%s|r."] = "已新增接收的字首 |cffffff00%s|r (|cffffff00%s|r)來自|cffffff00%s|r。"
L["Added outgoing prefix |cffffff00%s|r (|cffffff00%s|r)."] = "已新增傳送的字首|cffffff00%s|r (|cffffff00%s|r)。"
L["Added: "] = "已新增:"
L["Addon: "] = "插件:"
L["All"] = "全部"
L["Allow"] = "允許"
L["Allow all incoming and outgoing"] = "允許所有接收與傳送"
L["Allowed"] = "已允許"
L["Block"] = "阻擋"
L["Block all incoming and outgoing"] = "阻擋所有接收與傳送"
L["Block messages incoming and outgoing to these players"] = "阻擋訊息接收及傳送給那些玩家"
L["Blocked"] = "已阻擋"
L["Chat Frame"] = "聊天視窗"
L["Chat frame to print messages to"] = "在聊天視窗中列出訊息"
L["Click the plus (+) sign for prefix options"] = "點擊加號(+)為字首選項"
L["Default Action"] = "預設的執行"
L["Default action for new incoming prefixes"] = "設定新接收的字首為預設的執行"
L["Default action for new outgoing prefixes"] = "設定新傳送的字首為預設的執行"
L["Enables / Disables the addon"] = "啟用/停用該插件"
L["Globally"] = "總體"
L["Incoming"] = "接收"
L["Input a name to block"] = "輸入一個名稱來阻擋"
L["Name"] = "名稱"
L["Names"] = "名稱"
L["New"] = "新的"
L["Off"] = "關"
L["Outgoing"] = "傳送"
L["Per profile"] = "每個設定檔"
L["Players"] = "玩家"
L["Prefixes"] = "字首"
L["Print Messages"] = "列出訊息"
L["Print message"] = "列出訊息"
L["Print this prefix's messages to chat frame."] = "列出此字首的訊息到聊天視窗。"
L["Print your incoming messages to a chat frame."] = "列出你接收的訊息到聊天視窗。"
L["Print your outgoing messages to a chat frame."] = "列出你傳送的訊息到聊天視窗。"
L["Remove Name"] = "移除名稱"
L["Remove Prefix"] = "移除字首"
L["Remove prefix from list."] = "從清單中移除字首。"
L["Remove sender name from list"] = "從清單移除傳送者名稱"
L["Removed |cffffff00%s|r from list."] = "已從清單移除 |cffffff00%s|r。"
L["Save Prefixes & Players"] = "儲存字首及玩家"
L["Save prefix & player settings globally or per profile."] = "儲存字首及玩家設定到總體或每個設定檔。"
L[ [=[StopAddonMessage
Please note. There's no benefit in blocking prefixes if you're not running the addon that receives them.]=] ] = [=[StopAddonMessage
請注意。如果你沒有運行該插件然後接收的話，那麼阻擋該字首是沒有好處的。]=]
L["Test"] = "測試"
L["Unknown"] = "未知"
L["What to do when message is received."] = "當訊息接收時該如何處理。"
L["What to do when message is sent."] = "當訊息傳送時該如何處理。"
L["blockedGuildMsg"] = "|cffffff00%s|r嘗試發送一個訊息到公會頻道。"
L["blockedRaidMsg"] = "|cffffff00%s|r嘗試發送一個訊息到團隊頻道。"
