-- messages are generated by prefix + suffix, spearated by a space
-- add your prefixes here using the following format:
-- 	"TEXT",
-- don't forget the trailing comma!

KifogasTxt.prefixes = {
"He died because",
"not my fault,",
"What happened to",
"Do not blame me cars,",
"sorry,",
"stuff,",
--"nem kell beszólni,",
"not my fault,",
"I can explain:",
"before anyone were to ask,",
}


-- use the same format here as with the prefixes
-- you cannot send messages longer than 255 characters, 
-- so you need to place linebreaks into your text if it's too long
-- put \n into the string where a new message should be started (see #119 at the end of the file)
-- the addon will replace '%s' in your message with a random raid/party member's name (see the end of the file)
--
KifogasTxt.suffixes = {"lag was",
"I do not heal the worst people",
"the cat came in the room now",
--"vízállásjelentés was just on g1",
"I have not seen anything in the fucking curtains",
"approx. 3 fps on this fight",
"My mouse he is dead",
"I fell asleep",
--"elbambultam",
"the omen is not indicated",
"overheating the Modem",
"telephoned",
"are not indicated in the bossmod",
"because of the storm went on the net",
"the broken gun",
"My mother wanted something",
"was a hurricane, we had to switch the modem",
"had to close the window because you hit a tear-gas",
"the cat and ran away with the microphone",
"Vent, with the bluster back",
"the raid leader screaming at me and scared",
"not translated in the tank",
"everyone yelled at me and confused",
"I forgot to clean all the dragon",
"I worked at night, I can not concentrate",
"I did not know that you will have aggro reset",
"stopped at the picture",
"came on the food",
"bell rang and I had to run away",
"all this shit",
"critical errort report",
"flew into a big damn mosquito in the room and had to slam",
"the police broke down the door and took a roommate",
"someone offszetelte the aggróbalanszt",
"i took the keyboard cable from the dog",
"the torrent in the college, has slowed down in the net",
"crushed beneath the chair",
"a kutyám a szőnyegre hányt és fel kellett takarítanom",
"kiégett a videokártyám",
"the child cries",
"the tank can not hold aggro",
"the power went out",
"Grandma climbed in a tree",
"bealudtam a tévé előtt",
--"bealudtam kaja után",
"the drill was stolen and had to talk to the yards",
"burn out",
"a sok varázsmágiát nem bírta a gépem",
"or a hundred times I said that I should heal",
"the woman discovered the pains of childbirth",
"there the child had climbed on my lap and began to push the keys",
"Disturbing the EPIX",
"most vettem észre hogy ki van kapcsolva a mikrofon",
"laptopról vagyok, minimum grafikával, nem láttam az effektet",
"melléklikkeltem",
"ráömlött a sör a billentyűzetre",
"valaki rámwhisperelt, és elvonta a figyelmem",
"eszembe jutott, milyen kövér voltam kiskoromban",
"össze-vissza spammelnek a hülye addonjaitok",
"elkezdődött a dr. house a tévében",
"meccs van",
"elkezdődött az aratás farmville-ben",
"megérkezett a pizzafutár",
"kijött egy gömbvillám a konnektorból",
"a hajléktalanok itt üvöltöztek az ablak alatt, nem hallottam semmit",
"lejárt a gamecardom",
"szar volt a tank",
"szar volt a dps",
"szar volt a heal",
"rátüsszentettem a monitorra és nem láttam a zöld zeppelinektől semmit",
"kiesett a kontaktlencsém",
"megszólalt a kocsi riasztója, meg kellett néznem",
"el kellett rejtőznöm, itt voltak a rendőrök",
"vevő jött, ki kellett szolgálnom",
"hívott az ügyvédem, fel kellett vennem",
"hívott a dealerem, fel kellett vennem",
"hívott a főnököm, fel kellett vennem",
"hívott egy beosztottam, ki kellett rúgnom",
"a takarítónő kihúzta a tápkábelt",
"pont egy nagyon izgalmas rész volt a barátok köztben",
"gm-mel beszéltem éppen",
"leesett a vérnyomásom",
"nagyon aggódtam a közel-keleti helyzet eldurvulása miatt",
"azt próbálgattam, tudok-e guitar hero-kontrollerrel raidelni",
"kicsúszott a katéter",
"resetelni kellett a pacemakert",
"felszökött a vérnyomásom",
"valami fényes dolog elvonta a figyelmem... ooo shiney",
"belerúgtam véletlen a reset gombba",
"rányomtam véletlen a windows gombra",
"elszabadultak a csirkéim farmville-ben, össze kellett terelnem őket",
"kicsit sokat ittam",
"valószínűleg nem ittam eleget",
"összeomlott a tér-idő kontinuum",
"azt próbálgattam, tudok-e dance mattal raidelni",
"most vettem észre hogy 0%-on vagyok",
"rettenetesen fáj a fejem",
"épp a robotika három törvényén méláztam",
"épp kólát ittam és az orromon jött ki a szénsav",
"belement a cigifüst a szemembe és bekönnyeztem",
"egy rohadt öngyújtót kerestem",
"kiugrottam egy doboz cigiért",
"someone chirping at me on MSN",
"it's awesome my roommate came home drunk and had to be carried into the bath",

"affixed to the material very roughly, what is clear now, and yet at the same time how dark...",

"I remembered that because of global warming on polar bears become extinct, and very disappointed",
"I forgot where I put the, and therefore I had to take a xanax you",
"abducted by the aliens, analyzing the data collected anal",
"very roughly punched in the material, now everything is so rapid and yet so slow...",
"rámjött the cifrafosás",
"I did not take reagent",
"Elven Kiszel brows thought, and all blood went out of my mind",
"relegated to a two-button keyboard and had to be manually typing it /cast shadow bolt",
"i did it for the lulz",
"2-3k ms-em van a fighton",
-- #119, multi-message sample
"bug because it could be something here for me was the los of the add-in, not out cc, and anyway if I ütöm, then kill me first, third, but only killed, \ nand külöbben is so far only in No. 10 I was here and I did not know that 25 ösben otherwise, they said, run out, so I ran, and many of the effects due to 1k ms, and I said at the outset that I pass the happy place!",
"I fell in a trance, and appeared before me the spirit of Daniel Benko, yet beautiful, that I could not move",
"%s rám állt, és a nagy seggétől nem láttam semmit",
"%s rámwhisperelt hogy kívánja a testem, és egészen összezavarodtam",
"%s végig pofázott ventrin, nem hallottam tőle, mit kéne csinálni",
"%s lehúzta az aggrót, nem hiszem hogy csak én vettem észre",
"%s talentbuildjét nézegettem, hogy miért olyan gyász a dps-e",
"kialttaboltam FS-t olvasni, és nem hallottam, hogy mikor indulunk",
"%s rossz végig helyen állt, én próbáltam pozicionálni, de hiába",
"%s odaállt a helyemre, és az egész termen át kellett kavarnom, még szép hogy útközben belemegyek minden szarba",
"%s mondta a harc előtt, hogy itt nem kell törődni az aggróval",
"pvp specen maradtam véletlenül",
"azt hittem már wipe van és az a lényeg hogy gyorsan haljunk meg, minél előbb nekifuthassunk újra",
"nagyon hozzászoktam az Aionos hotkeyekhez",
"azon röhögtem, hogy milyen hülyeségeket ír a kifogásgenerátor addonotok, mondjuk én ilyen baromságot sosem tennék fel",
"%s pajzán vicceket mesél party chaten, nem lehet mellette megmaradni",
"Kungen keresett, hogy nagy tételben vásárolna Saronite Bombot, le kellett ráznom",
"jöttek az ukránok behajtani a tartozásomat, le kellett kapcsolnom mindent, hogy azt higgyék, nem vagyok itthon",
"az öltött az eszembe, hogy sosem fogok tudni olyan tökéletesen játszani, mint %s, kár is erőlködnöm",
"hirtelen eszembe jutott a Smoluchowski-féle koagulációs integrodifferenciál-egyenlet megoldóképlete, de aztán elfelejtettem",
"%s túl sokat sebződött, és rám nem maradt heal",
"%s hibája volt az egész, ez világos mint a nap, nem is magyarázom",
"az a borzas kislány a tévében engem bámul :(",
"azon tanakodtam, Finke vagy Einhorn? Einhorn vagy Finkle?",
"%s azt mondta, hogy nagy a seggem, és ezért nagyon magamba roskadtam",
"%s felajánlott 100g-t, amennyiben szabotálom a próbát",
"megijedtem a petemtől",
"körmöt festek raid közben mert igazából baromi hosszú szünet van 2 try között",
"ROYAL FLUSH!",
}

--[[ 
	don't touch this
--]]

KifogasTxt.prefixesLength = #KifogasTxt.prefixes
KifogasTxt.suffixesLength = #KifogasTxt.suffixes
