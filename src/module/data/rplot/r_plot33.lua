--[[
    转换脚本R_TXT/r_plot33.txt
--]]

local Plot = {
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track20"}},
                {cmd = "Delay", args = {3}},
                {cmd = "ShowMenu", args = {false}},
                {cmd = "HeadChange", args = {11}},
                {cmd = "LoadBackground", args = {"MMap-85"}},
                {cmd = "RolePlay", args = {"曹操", 53, 35, "down", "曹操", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 70, 53, "left", "夏侯惇", 0}},
                {cmd = "RolePlay", args = {"曹丕", 70, 59, "left", "曹丕", 0}},
                {cmd = "RolePlay", args = {"许褚", 70, 65, "left", "许褚", 0}},
                {cmd = "RolePlay", args = {"徐晃", 70, 71, "left", "徐晃", 0}},
                {cmd = "RolePlay", args = {"荀彧", 40, 53, "right", "荀彧", 0}},
                {cmd = "RolePlay", args = {"司马懿", 40, 59, "right", "司马懿", 0}},
                {cmd = "RolePlay", args = {"贾诩", 40, 65, "right", "贾诩", 0}},
                {cmd = "RolePlay", args = {"荀攸", 40, 71, "right", "荀攸", 0}},
                {cmd = "RolePlay", args = {"庞德", 53, 53, "up", "庞德", 0}},
                {cmd = "RSetTitle", args = {"孔明的计策"}},
                {cmd = "RShowSceneName", args = {"汉中  临时相府"}},
                {cmd = "Dialog", args = {"曹操", "庞德，像你这般勇猛的武将，如果死在这里就太可惜了，不如为我效力吧？"}},
                {cmd = "Dialog", args = {"庞德", "张鲁大人呢？"}},
                {cmd = "Dialog", args = {"曹操", "嗯，我已经下令保护他和他的家人。"}},
                {cmd = "Dialog", args = {"庞德", "是吗？谢曹大人。不过我的心意未改，请杀了我吧。"}},
                {cmd = "Dialog", args = {"曹操", "庞德，你恨我吗？就因为我杀了你的故主马腾？"}},
                {cmd = "RoleAction", args = {"庞德", 8}},
                {cmd = "Dialog", args = {"庞德", "我庞德并非无情无义之人，只不过身为一个武将，为故主尽忠义之道罢了。"}},
                {cmd = "RoleAction", args = {"庞德", 0}},
                {cmd = "Dialog", args = {"曹操", "是吗……？"}},
                {cmd = "Dialog", args = {"庞德", "不必多说了，快把我杀了吧！"}},
                {cmd = "RoleAction", args = {"曹操", 4}},
                {cmd = "HeadChange", args = {2}},
                {cmd = "Dialog", args = {"曹操", "住口！你的生死由我来决定，你没有选择的余地。"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "HeadChange", args = {0}},
                {cmd = "Dialog", args = {"曹操", "我不杀你。我要你做我营中的武将，为我的霸业出力。"}},
                {cmd = "Dialog", args = {"庞德", "让我呆在你身边，难道你不害怕吗！我会杀了你的！"}},
                {cmd = "Dialog", args = {"曹操", "哦？我听说庞德是个武艺高强的武将，应该不会使用暗杀这种卑劣的手段。"}},
                {cmd = "Dialog", args = {"庞德", "………好！我就当你的属下，让我看清你曹操是什么样的人物。"}},
                {cmd = "RoleAction", args = {"曹操", 5}},
                {cmd = "HeadChange", args = {3}},
                {cmd = "Dialog", args = {"曹操", "哈哈哈。元让，给庞德安排住处。"}},
                {cmd = "RoleChangeDirection", args = {"夏侯惇", "up", 0}},
                {cmd = "Dialog", args = {"夏侯惇", "喔，知道啦。"}},
                {cmd = "RoleChangeDirection", args = {"夏侯惇", "left", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "HeadChange", args = {0}},
                {cmd = "Dialog", args = {"曹操", "庞德，好好为我效力，你会了解我的志向的。"}},
                {cmd = "RoleAddOrLevel", args = {"庞德", "add", 0}},
                {cmd = "AddRoleInfo", args = {"庞德", "默认装备", 0, "默认装备", 0, "铁盔"}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
    },
    {
        {
            {
                {cmd = "LoadBackground", args = {"MMap-50"}},
                {cmd = "RolePlay", args = {"刘备", 33, 55, "right", "刘备", 0}},
                {cmd = "RolePlay", args = {"诸葛亮", 51, 42, "down", "诸葛亮", 0}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"成都  刘备公馆"}},
                {cmd = "RolePlay", args = {"士兵02", 91, 55, "left", "士兵02", 0}},
                {cmd = "Dialog", args = {"士兵02", "报。"}},
                {cmd = "RoleMove", args = {"士兵02", "left", 53, 55}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"士兵02", 13}},
                {cmd = "Dialog", args = {"士兵02", "启禀主公，曹操进攻汉中，已经占领了汉中。"}},
                {cmd = "RoleAction", args = {"刘备", 5}},
                {cmd = "Dialog", args = {"刘备", "什……什么！？曹操攻占汉中？糟了，这可不妙。"}},
                {cmd = "RoleAction", args = {"刘备", 0}},
                {cmd = "Dialog", args = {"诸葛亮", "张鲁怎么了？曹操杀张鲁了吗？"}},
                {cmd = "Dialog", args = {"士兵02", "没有，张鲁一族都受到厚遇，而且还授与了官位。"}},
                {cmd = "Dialog", args = {"诸葛亮", "是吗，曹操厚待张鲁？不愧是曹操，深知收买人心之道。"}},
                {cmd = "RoleAction", args = {"刘备", 5}},
                {cmd = "Dialog", args = {"刘备", "孔明，现在不是佩服他的时候，汉中可说是蜀国的咽喉，也就相当于我们的弱点啊。"}},
                {cmd = "RoleAction", args = {"刘备", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"诸葛亮", 8}},
                {cmd = "Dialog", args = {"诸葛亮", "主公不必担心，曹操虽然得到了汉中，但是不会进攻我蜀国的。"}},
                {cmd = "Dialog", args = {"刘备", "为什么呢？曹操下一个攻击目标，一定是我们不会错的。"}},
                {cmd = "RoleAction", args = {"诸葛亮", 0}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 255}},
                {cmd = "Dialog", args = {"诸葛亮", "是的。"}},
                {cmd = "Delay", args = {5}},
                {cmd = "PlayMusic", args = {"Track14"}},
                {cmd = "Delay", args = {3}},
                {cmd = "Dialog", args = {"诸葛亮", "所以我们要让曹操改主意。"}},
                {cmd = "Dialog", args = {"刘备", "改变主意……？让他攻打东吴？"}},
                {cmd = "Dialog", args = {"诸葛亮", "是的，孙权对合淝还没有死心。"}},
                {cmd = "Dialog", args = {"诸葛亮", "如果让东吴发兵进攻合淝，曹操应该就不会进攻我国了。"}},
                {cmd = "Dialog", args = {"刘备", "可是，东吴会发兵吗？"}},
                {cmd = "RoleAction", args = {"诸葛亮", 13}},
                {cmd = "Dialog", args = {"诸葛亮", "把荆州四郡中的三郡归还孙权，他一定会发兵的。"}},
                {cmd = "Dialog", args = {"刘备", "归还荆州是吗………"}},
                {cmd = "RoleAction", args = {"诸葛亮", 0}},
                {cmd = "Dialog", args = {"诸葛亮", "主公，请下定决心吧！切莫执意占据荆州，使我蜀国濒临灭亡啊！"}},
                {cmd = "Dialog", args = {"刘备", "嗯，好吧。孔明，这事交由你去办。看你的了。"}},
                {cmd = "RoleAction", args = {"诸葛亮", 8}},
                {cmd = "Dialog", args = {"诸葛亮", "请主公安心。孔明即刻派人出使东吴。"}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
    },
    {
        {
            {
                {cmd = "LoadBackground", args = {"MMap-92"}},
                {cmd = "RolePlay", args = {"孙权", 54, 30, "down", "孙权", 0}},
                {cmd = "RolePlay", args = {"文官02", 54, 49, "up", "文官02", 8}},
                {cmd = "RolePlay", args = {"张昭", 42, 49, "right", "张昭", 0}},
                {cmd = "RolePlay", args = {"鲁肃", 42, 55, "right", "鲁肃", 0}},
                {cmd = "RolePlay", args = {"文官01", 66, 49, "left", "文官01", 0}},
                {cmd = "RolePlay", args = {"文官03", 66, 55, "left", "文官03", 0}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"建业  孙权公馆"}},
                {cmd = "Dialog", args = {"孙权", "哦，希望我吴国进攻合淝？"}},
                {cmd = "Dialog", args = {"文官02", "是的。"}},
                {cmd = "Dialog", args = {"文官02", "如果大人首肯，敝国随即归还荆州三郡。"}},
                {cmd = "Dialog", args = {"孙权", "嗯，好吧。不过，归还之后我才发兵。"}},
                {cmd = "Dialog", args = {"孙权", "等我确认贵国的荆州守军，已经完全撤离之后，我军才会攻打合淝，如何？"}},
                {cmd = "Dialog", args = {"文官02", "是。就遵照大人的意思办吧。"}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 255}},
                {cmd = "PlayMusic", args = {"Track18"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"china"}},
                {cmd = "HeadPortraitPlay", args = {"曹操", 163, 74, "曹操"}},
                {cmd = "HeadPortraitPlay", args = {"张鲁", 99, 74, "张鲁"}},
                {cmd = "SceneDialog", args = {"曹操击败张鲁，", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitDisappear", args = {"张鲁"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"曹操", 131, 74}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"占领了汉中。", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {8}},
                {cmd = "HeadPortraitPlay", args = {"刘备", 26, 172, "刘备"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"刘备感到危机四伏，", "不换页", "换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"关羽", 303, 236, "关羽"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"关羽", 264, 194}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"便以割让荆州三郡为条件，请东吴攻打合淝。", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {10}},
                {cmd = "HeadPortraitPlay", args = {"鲁肃", 328, 239, "鲁肃"}},
                {cmd = "HeadPortraitPlay", args = {"孙权", 512, 213, "孙权"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"孙权确认接收了荆州三郡之后，", "不换页", "换行", "不等待"}},
                {cmd = "Delay", args = {10}},
                {cmd = "HeadPortraitPlay", args = {"张辽", 423, 143, "张辽"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"再次进攻", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"孙权", 487, 184}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"张辽镇守的合淝。", "不换页", "不换行", "等待"}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
    },
    {
        {
            {
                {cmd = "LoadBackground", args = {"MMap-85"}},
                {cmd = "RolePlay", args = {"曹操", 53, 35, "down", "曹操", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 70, 53, "left", "夏侯惇", 0}},
                {cmd = "RolePlay", args = {"曹丕", 70, 59, "left", "曹丕", 0}},
                {cmd = "RolePlay", args = {"许褚", 70, 65, "left", "许褚", 0}},
                {cmd = "RolePlay", args = {"徐晃", 70, 71, "left", "徐晃", 0}},
                {cmd = "RolePlay", args = {"荀彧", 40, 53, "right", "荀彧", 0}},
                {cmd = "RolePlay", args = {"司马懿", 40, 59, "right", "司马懿", 0}},
                {cmd = "RolePlay", args = {"贾诩", 40, 65, "right", "贾诩", 0}},
                {cmd = "RolePlay", args = {"程昱", 40, 71, "right", "程昱", 0}},
                {cmd = "RolePlay", args = {"士兵01", 53, 53, "up", "士兵01", 13}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"汉中  临时相府"}},
                {cmd = "Dialog", args = {"曹操", "东吴向合淝进攻了？"}},
                {cmd = "Dialog", args = {"士兵01", "是的。"}},
                {cmd = "RoleAction", args = {"程昱", 8}},
                {cmd = "Dialog", args = {"程昱", "孙权竟然趁我们进攻汉中的时候……"}},
                {cmd = "RoleAction", args = {"程昱", 0}},
                {cmd = "Dialog", args = {"曹操", "我看这不会是孙权的想法，恐怕是孔明唆使东吴发兵的。"}},
                {cmd = "Dialog", args = {"曹操", "他们的目的就是想牵制我们，以保蜀国的安全，这恐怕又是诸葛亮的计谋吧。"}},
                {cmd = "Dialog", args = {"司马懿", "孔明是吗……？"}},
                {cmd = "RoleAction", args = {"夏侯惇", 5}},
                {cmd = "Dialog", args = {"夏侯惇", "不过张辽曾经击退东吴的攻势，这次应该也会守得住吧？"}},
                {cmd = "RoleAction", args = {"夏侯惇", 0}},
                {cmd = "Dialog", args = {"曹操", "不，孙权一定会记取上次的教训，恐怕文远也很难轻易取胜。"}},
                {cmd = "RoleAction", args = {"夏侯惇", 5}},
                {cmd = "Dialog", args = {"夏侯惇", "我们现在就算想派出援军，大军也动弹不得啊。"}},
                {cmd = "RoleAction", args = {"夏侯惇", 0}},
                {cmd = "Dialog", args = {"曹操", "我就是担心会有这样的事，所以事先准备了援军。"}},
                {cmd = "RoleAction", args = {"夏侯惇", 5}},
                {cmd = "Dialog", args = {"夏侯惇", "援军？在哪里？"}},
                {cmd = "RoleAction", args = {"夏侯惇", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"曹操", 7}},
                {cmd = "Dialog", args = {"曹操", "在这里。这封信就是百万援军。"}},
                {cmd = "RoleAction", args = {"夏侯惇", 5}},
                {cmd = "Dialog", args = {"夏侯惇", "喂喂，孟德。一封信怎么会是援军呢？"}},
                {cmd = "Dialog", args = {"曹操", "马上把这封信送交文远，无论如何要在开战前送到！"}},
                {cmd = "Dialog", args = {"士兵01", "是。"}},
                {cmd = "RoleAction", args = {"夏侯惇", 0}},
                {cmd = "Dialog", args = {"夏侯惇", "孟德，你到底在想什么啊？"}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 255}},
            },
        },
    },
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track17"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"MMap-94"}},
                {cmd = "RolePlay", args = {"张辽", 55, 81, "up", "张辽", 0}},
                {cmd = "RolePlay", args = {"乐进", 45, 65, "right", "乐进", 0}},
                {cmd = "RolePlay", args = {"李典", 65, 65, "left", "李典", 0}},
                {cmd = "RShowSceneName", args = {"合淝  曹操军主营"}},
                {cmd = "RoleChangeDirection", args = {"乐进", "down", 0}},
                {cmd = "Dialog", args = {"乐进", "张将军，东吴军马上就到，我们必须立即出战。"}},
                {cmd = "Dialog", args = {"张辽", "可是……派往汉中的使者还没有回来。"}},
                {cmd = "RoleChangeDirection", args = {"李典", "down", 0}},
                {cmd = "Dialog", args = {"李典", "将军还是死心吧！"}},
                {cmd = "Dialog", args = {"张辽", "嗯，这也是无可奈何的事。"}},
                {cmd = "RolePlay", args = {"士兵01", 55, 23, "down", "士兵01", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"士兵01", 13}},
                {cmd = "Dialog", args = {"士兵01", "报。属……属下回来了，嗄……"}},
                {cmd = "RoleChangeDirection", args = {"乐进", "up", 0}},
                {cmd = "RoleChangeDirection", args = {"李典", "up", 0}},
                {cmd = "Dialog", args = {"李典", "喔喔，就等你呢！"}},
                {cmd = "Dialog", args = {"乐进", "援军来了吗！？"}},
                {cmd = "Dialog", args = {"士兵01", "这是主公给张将军的书信，主公说这封信犹如百万援军……"}},
                {cmd = "Dialog", args = {"乐进", "相当于百万援军？就这封信？"}},
                {cmd = "Dialog", args = {"张辽", "好，待我一览。"}},
                {cmd = "Dialog", args = {"士兵01", "是。"}},
                {cmd = "RoleAction", args = {"士兵01", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"乐进", "right", 0}},
                {cmd = "RoleChangeDirection", args = {"李典", "left", 0}},
                {cmd = "RoleMove", args = {"士兵01", "down", 55, 77}},
                {cmd = "Delay", args = {5}},
                {cmd = "RoleMove", args = {"士兵01", "down", 55, 65}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"李典", "down", 0}},
                {cmd = "Dialog", args = {"李典", "上头写些什么？"}},
                {cmd = "Dialog", args = {"张辽", "出战未见敌人之前不许拆封。"}},
                {cmd = "RoleChangeDirection", args = {"乐进", "down", 0}},
                {cmd = "Dialog", args = {"乐进", "什么？都已经是这种紧要关头了，主公到底是怎么想的！"}},
                {cmd = "Dialog", args = {"张辽", "事到如今………也只有听从主公的吩咐了。"}},
                {cmd = "RoleAction", args = {"张辽", 19}},
                {cmd = "Dialog", args = {"张辽", "出兵！"}},
                {cmd = "RoleAction", args = {"张辽", 0}},
                {cmd = "RoleChangeDirection", args = {"李典", "left", 0}},
                {cmd = "RoleChangeDirection", args = {"乐进", "right", 0}},
                {cmd = "RoleMove", args = {"士兵01", "up", 55, 23}},
                {cmd = "RoleDisappear", args = {"士兵01"}},
                {cmd = "ShowMenu", args = {true}},
                {cmd = "FightGeneralsInfo", args = {true, 10, 6, "张辽", "李典", "乐进", "!曹操", }},
            },
        },
    },
    {
        {
            {cmd = "FightButtonPressedTest"},
            {
                {cmd = "ShowMenu", args = {false}},
                {cmd = "Dialog", args = {"张辽", "出发！"}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"李典"}},
            {
                {cmd = "Dialog", args = {"李典", "对了，听说庞德将军……有个打造得挺精良的头盔。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"乐进"}},
            {
                {cmd = "Dialog", args = {"乐进", "城的周围有很多沼泽和小河，在水边与东吴军作战可难打了。"}},
            },
        },
    },
}

return Plot
