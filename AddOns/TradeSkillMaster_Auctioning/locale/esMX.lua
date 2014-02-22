-- ------------------------------------------------------------------------------ --
--                           TradeSkillMaster_Auctioning                          --
--           http://www.curse.com/addons/wow/tradeskillmaster_auctioning          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Auctioning Locale - esMX
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Auctioning/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "esMX")
if not L then return end

-- L["2 to 12 hrs"] = ""
-- L["30min to 2hrs"] = ""
-- L["Add a new player to your whitelist."] = ""
-- L["Add player"] = ""
-- L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = ""
-- L["At normal price and not undercut."] = ""
-- L["Auction Buyout"] = ""
-- L["Auction Buyout (Stack Price):"] = ""
-- L["Auction has been bid on."] = ""
-- L["Auctioning operations contain settings for posting, canceling, and resetting items in a group. Type the name of the new operation into the box below and hit 'enter' to create a new Crafting operation."] = ""
-- L["Auctioning Prices:"] = ""
-- L["Auction not found. Skipped."] = ""
-- L["Auction Price Settings"] = ""
-- L["Auction Settings"] = ""
-- L["auctions of|r %s"] = ""
-- L["Below min price, posting at reset price."] = ""
-- L["Bid percent"] = ""
-- L["Cancel"] = ""
-- L["Cancel All Auctions"] = ""
-- L["Cancel Auctions with Bids"] = ""
-- L["Cancel Filter:"] = ""
-- L["Canceling all auctions."] = ""
-- L["Canceling auction which you've undercut."] = ""
-- L["Canceling %d / %d"] = ""
-- L["Canceling to repost at higher price."] = ""
-- L["Canceling to repost at reset price."] = ""
-- L["Canceling to repost higher."] = ""
-- L["Canceling undercut auctions."] = ""
-- L["Canceling undercut auctions and to repost higher."] = ""
-- L["Cancel Low Duration"] = ""
-- L["Cancel Scan Finished"] = ""
-- L["Cancel Settings"] = ""
-- L["Cancel to Repost Higher"] = ""
-- L["Cancel Undercut Auctions"] = ""
-- L["Cheapest auction below min price."] = ""
-- L["Click to show auctions for this item."] = ""
-- L["Confirming %d / %d"] = ""
-- L["Create Macro and Bind ScrollWheel (with selected options)"] = ""
-- L["Currently Owned:"] = ""
-- L["Default Operation Tab"] = ""
-- L["Delete"] = ""
-- L["Did not cancel %s because your cancel to repost threshold (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not cancel %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not cancel %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not post %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not post %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not post %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not reset %s because your maximum price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not reset %s because your minimum price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your normal price (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."] = ""
-- L["Did not reset %s because your reset max cost (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset max item cost (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset min profit (%s) is invalid. Check your settings."] = ""
-- L["Did not reset %s because your reset resolution (%s) is invalid. Check your settings."] = ""
-- L["Disable Invalid Price Warnings"] = ""
-- L["Done Canceling"] = ""
-- L["Done Posting"] = ""
--[==[ L[ [=[Done Posting

Total value of your auctions: %s
Incoming Gold: %s]=] ] = "" ]==]
-- L["Done Scanning"] = ""
--[==[ L[ [=[Done Scanning!

Could potentially reset %d items for %s profit.]=] ] = "" ]==]
-- L["Don't Post Items"] = ""
-- L["Down"] = ""
-- L["Duration"] = ""
-- L["Edit Post Price"] = ""
-- L["Enable Reset Scan"] = ""
-- L["Enable Sounds"] = ""
-- L["Error creating operation. Operation with name '%s' already exists."] = ""
-- L["General"] = ""
-- L["General Operation Options"] = ""
-- L["General Options"] = ""
-- L["General Reset Settings"] = ""
-- L["General Settings"] = ""
-- L["Give the new operation a name. A descriptive name will help you find this operation later."] = ""
-- L["Help"] = ""
-- L["How long auctions should be up for."] = ""
-- L["How many auctions at the lowest price tier can be up at any one time. Setting this to 0 disables posting for any groups this operation is applied to."] = ""
-- L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = ""
-- L["How much to undercut other auctions by. Format is in \"#g#s#c\". For example, \"50g30s\" means 50 gold, 30 silver, and no copper."] = ""
-- L["If an item can't be posted for at least this amount higher than its current value, it won't be canceled to repost higher."] = ""
-- L["If checked, a cancel scan will cancel any auctions which can be reposted for a higher price."] = ""
-- L["If checked, a cancel scan will cancel any auctions which have been undercut and are still above your threshold."] = ""
-- L["If checked, Auctioning will ignore all auctions that are posted at a different stack size than your auctions. For example, if there are stacks of 1, 5, and 20 up and you're posting in stacks of 1, it'll ignore all stacks of 5 and 20."] = ""
-- L["If checked, groups which the opperation applies to will be included in a reset scan."] = ""
-- L["If checked, the minimum, normal and maximum prices of the first operation for the item will be shown in tooltips."] = ""
-- L["If checked, TSM will not print out a chat message when you have an invalid price for an item. However, it will still show as invalid in the log."] = ""
-- L["If checked, whenever you post an item at its normal price, the buyout will be rounded up to the nearest gold."] = ""
-- L["If enabled, instead of not posting when a whitelisted player has an auction posted, Auctioning will match their price."] = ""
-- L["If you don't have enough items for a full post, it will post with what you have."] = ""
-- L["Ignore Low Duration Auctions"] = ""
-- L["Info"] = ""
-- L["Invalid scan data for item %s. Skipping this item."] = ""
-- L["Invalid seller data returned by server."] = ""
-- L["Item"] = ""
-- L["Item/Group is invalid."] = ""
-- L["Keeping undercut auctions posted."] = ""
-- L["Keep Posted"] = ""
-- L["Log Info:"] = ""
-- L["Low Duration"] = ""
-- L["Lowest auction by whitelisted player."] = ""
-- L["Lowest Buyout"] = ""
-- L["Lowest Buyout:"] = ""
-- L["Macro created and keybinding set!"] = ""
-- L["Macro Help"] = ""
-- L["Match Stack Size"] = ""
-- L["Match Whitelist Players"] = ""
-- L["Max Cost:"] = ""
-- L["Max Cost Per Item"] = ""
-- L["Maximum amount already posted."] = ""
-- L["Maximum Price"] = ""
-- L["Maximum Price:"] = ""
-- L["Max Price Per:"] = ""
-- L["Max Quantity:"] = ""
-- L["Max Quantity to Buy"] = ""
-- L["Max Reset Cost"] = ""
-- L["Minimum Price:"] = ""
-- L["Minimum Price (aka Threshold)"] = ""
-- L["Min Profit:"] = ""
-- L["Min Reset Profit"] = ""
-- L["Min (%s), Normal (%s), Max (%s)"] = ""
-- L["Modifiers:"] = ""
-- L["Move AH Shortfall To Bags"] = ""
-- L["Move Group To Bags"] = ""
-- L["Move Group To Bank"] = ""
-- L["Move Non Group Items to Bank"] = ""
-- L["Move Post Cap To Bags"] = ""
-- L["Must wait for scan to finish before starting to reset."] = ""
-- L["New Operation"] = ""
-- L["No Items to Reset"] = ""
-- L["<none>"] = ""
-- L["No posting."] = ""
-- L["Normal Price:"] = ""
-- L["Normal Price (aka Fallback)"] = ""
-- L["Not canceling."] = ""
-- L["Not canceling auction at reset price."] = ""
-- L["Not canceling auction below min price."] = ""
-- L["Not enough items in bags."] = ""
-- L["NOTE: You can right click on any of the price settings below to show a window which will help with more advanced price settings such as using a % of another price source."] = ""
-- L["Nothing to Move"] = ""
-- L["Not resetting."] = ""
-- L["Operation"] = ""
-- L["Operation Name"] = ""
-- L["Operations"] = ""
-- L["Options"] = ""
-- L["Other Auctioning Searches"] = ""
-- L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = ""
-- L["Player name"] = ""
-- L["Plays the ready check sound when a post / cancel scan is complete and items are ready to be posting / canceled (the gray bar is all the way across)."] = ""
-- L["Please don't move items around in your bags while a post scan is running! The item was skipped to avoid an incorrect item being posted."] = ""
-- L["Post"] = ""
-- L["Post at Maximum Price"] = ""
-- L["Post at Minimum Price"] = ""
-- L["Post at Normal Price"] = ""
-- L["Post Cap"] = ""
-- L["Posted at whitelisted player's price."] = ""
-- L["Posting at normal price."] = ""
-- L["Posting at whitelisted player's price."] = ""
-- L["Posting at your current price."] = ""
-- L["Posting %d / %d"] = ""
-- L["Posting %d stack(s) of %d for %d hours."] = ""
-- L["Posting Price Settings"] = ""
-- L["Post Scan Finished"] = ""
-- L["Post Settings"] = ""
-- L["Preparing Filter %d / %d"] = ""
-- L["Preparing Filters..."] = ""
-- L["Preparing to Move"] = ""
-- L["Price Resolution"] = ""
-- L["Price to post at if there are no auctions up under your maximum price. This includes the case where there's none of an item on the AH."] = ""
-- L["Processing Items..."] = ""
-- L["Profit:"] = ""
-- L["Profit Per Item"] = ""
-- L["Quantity (Yours)"] = ""
-- L["Relationships"] = ""
-- L["Repost Higher Threshold"] = ""
-- L["Reset"] = ""
-- L["Reset Scan Finished"] = ""
-- L["Reset Settings"] = ""
-- L["Resetting enabled."] = ""
-- L["Restart"] = ""
-- L["Return to Summary"] = ""
-- L["Right-Click to add %s to your friends list."] = ""
-- L["Round Normal Price"] = ""
-- L["Running Scan..."] = ""
-- L["Save New Price"] = ""
-- L["Scan Complete!"] = ""
-- L["Scanning %d / %d"] = ""
-- L["Scanning %d / %d (Page %d / %d)"] = ""
-- L["ScrollWheel Direction (both recommended):"] = ""
-- L["Select a duration in this dropdown and click on the button below to cancel all auctions at or below this duration."] = ""
-- L["Select the groups which you would like to include in the scan."] = ""
-- L["Seller"] = ""
-- L["Seller name of lowest auction for item %s was not returned from server. Skipping this item."] = ""
-- L["'%s' has an Auctioning operation of '%s' which no longer exists."] = ""
-- L["'%s' has an Auctioning operation of '%s' which no longer exists. Auctioning will ignore this group until this is fixed."] = ""
-- L["Shift-Right-Click to show the options for this item's Auctioning group."] = ""
-- L["Shift-Right-Click to show the options for this operation.|r"] = ""
-- L["Show All Auctions"] = ""
-- L["Show Auctioning values in Tooltip"] = ""
-- L["Show Item Auctions"] = ""
-- L["Show Log"] = ""
-- L["%s item(s) to buy/cancel"] = ""
-- L["Skip"] = ""
-- L["Stack Size"] = ""
-- L["Start Cancel Scan"] = ""
-- L["Starting Scan..."] = ""
-- L["Start Post Scan"] = ""
-- L["Start Reset Scan"] = ""
-- L["Stop"] = ""
-- L["Target Price"] = ""
-- L["Target Price:"] = ""
-- L["The filter cannot be empty. If you'd like to cancel all auctions, use the 'Cancel All Auctions' button."] = ""
-- L["The lowest price you want an item to be posted for. Auctioning will not undercut auctions below this price."] = ""
-- L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = ""
-- L["The maximum price you want an item to be posted for. Auctioning will not undercut auctions above this price."] = ""
-- L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = ""
-- L["There are two ways of making clicking the Post / Cancel Auction button easier. You can put %s and %s in a macro (on separate lines), or use the utility below to have a macro automatically made and bound to scrollwheel for you."] = ""
-- L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = ""
-- L["This dropdown determines the default tab when you visit an operation."] = ""
-- L["This dropdown determines what Auctioning will do when the market for an item goes below your minimum price. You can either not post the items or post at one of your configured prices."] = ""
-- L["This is the maximum amount you want to pay for a single item when reseting."] = ""
-- L["This item does not have any seller data."] = ""
-- L["This number of undercut auctions will be kept on the auction house (not canceled) when doing a cancel scan."] = ""
-- L["Total Cost"] = ""
-- L["Under 30min"] = ""
-- L["Undercut Amount"] = ""
-- L["Undercut by whitelisted player."] = ""
-- L["Undercutting competition."] = ""
-- L["Up"] = ""
-- L["Use Stack Size as Cap"] = ""
-- L["When Below Threshold (aka Reset Method)"] = ""
-- L["Whitelist"] = ""
-- L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = ""
-- L["Will bind ScrollWheelDown (plus modifiers below) to the macro created."] = ""
-- L["Will bind ScrollWheelUp (plus modifiers below) to the macro created."] = ""
-- L["Will cancel all your auctions at or below the specified duration, including ones you didn't post with Auctioning."] = ""
-- L["Will cancel all your auctions, including ones which you didn't post with Auctioning."] = ""
-- L["Will cancel all your auctions which match the specified filter, including ones which you didn't post with Auctioning."] = ""
-- L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = ""
-- L["You do not have any players on your whitelist yet."] = ""
-- L["Your auction has not been undercut."] = ""
-- L["Your Buyout"] = ""
-- L["You've been undercut."] = ""
