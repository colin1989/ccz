--[[
    转换脚本R_TXT/r_plot21.txt
--]]

local Plot = {
    {
        {
            {
                {cmd = "ShowMenu", args = {false}},
                {cmd = "HeadChange", args = {11}},
                {cmd = "PlayMusic", args = {"无"}},
                {cmd = "LoadBackground", args = {"MMap-108"}},
                {cmd = "PlaySound", args = {"Se_e_03.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RSetTitle", args = {"袁绍之子"}},
                {cmd = "RShowSceneName", args = {"穰山  山路"}},
                {cmd = "RolePlay", args = {"刘备", 58, 6, "down", "刘备", 0}},
                {cmd = "RolePlay", args = {"张飞", 48, 6, "down", "张飞", 0}},
                {cmd = "RolePlay", args = {"关羽", 53, 6, "down", "关羽", 0}},
                {cmd = "RoleMove", args = {"刘备", "down", 58, 18}},
                {cmd = "RoleMove", args = {"张飞", "down", 48, 18}},
                {cmd = "Delay", args = {1}},
                {cmd = "RoleMove", args = {"刘备", "down", 58, 48}},
                {cmd = "RoleMove", args = {"张飞", "down", 48, 48}},
                {cmd = "RoleMove", args = {"关羽", "down", 53, 36}},
                {cmd = "Dialog", args = {"刘备", "快点，曹军要追来了。"}},
                {cmd = "RoleAction", args = {"张飞", 4}},
                {cmd = "Dialog", args = {"张飞", "哼，曹操这个奸贼！"}},
                {cmd = "RoleAction", args = {"张飞", 0}},
                {cmd = "Dialog", args = {"关羽", "兄长，今后该怎么办？"}},
                {cmd = "RoleChangeDirection", args = {"张飞", "up", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"刘备", "up", 0}},
                {cmd = "Dialog", args = {"刘备", "没办法，我们去投奔荆州的刘表吧。"}},
                {cmd = "Dialog", args = {"关羽", "荆州……？"}},
                {cmd = "Dialog", args = {"刘备", "嗯。荆州土地肥沃，刘表与我又是同宗，一定会帮助我们的。"}},
                {cmd = "RoleAction", args = {"关羽", 8}},
                {cmd = "Dialog", args = {"关羽", "好吧。那么请兄长和三弟先去荆州吧。"}},
                {cmd = "RoleAction", args = {"关羽", 0}},
                {cmd = "Dialog", args = {"关羽", "我来阻挡曹操。"}},
                {cmd = "RoleAction", args = {"张飞", 5}},
                {cmd = "Dialog", args = {"张飞", "二哥，我也来帮你！"}},
                {cmd = "Dialog", args = {"关羽", "三弟，你还是保护兄长吧！"}},
                {cmd = "RoleAction", args = {"张飞", 0}},
                {cmd = "Dialog", args = {"张飞", "可是………"}},
                {cmd = "Dialog", args = {"刘备", "云长，就你一个人……？"}},
                {cmd = "RoleAction", args = {"关羽", 8}},
                {cmd = "Dialog", args = {"关羽", "兄长放心吧。"}},
                {cmd = "Dialog", args = {"刘备", "……好吧！交给你了。你要多加小心。"}},
                {cmd = "Dialog", args = {"关羽", "是。"}},
                {cmd = "RoleAction", args = {"关羽", 0}},
                {cmd = "Dialog", args = {"关羽", "快走吧！"}},
                {cmd = "RoleChangeDirection", args = {"刘备", "left", 0}},
                {cmd = "Dialog", args = {"刘备", "嗯。走吧，三弟！"}},
                {cmd = "RoleChangeDirection", args = {"张飞", "right", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"张飞", 19}},
                {cmd = "Dialog", args = {"张飞", "喔！"}},
                {cmd = "RoleAction", args = {"张飞", 0}},
                {cmd = "RoleMove", args = {"刘备", "down", 58, 99}},
                {cmd = "RoleMove", args = {"张飞", "down", 48, 96}},
                {cmd = "RoleMove", args = {"关羽", "down", 53, 81}},
                {cmd = "RoleAction", args = {"关羽", 0}},
                {cmd = "RoleDisappear", args = {"刘备"}},
                {cmd = "RoleDisappear", args = {"张飞"}},
                {cmd = "PlaySound", args = {"Se_e_03.wav", 255}},
                {cmd = "PlaySound", args = {"Se_e_07.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RolePlay", args = {"曹操", 57, 6, "down", "曹操", 0}},
                {cmd = "RolePlay", args = {"郭嘉", 49, 6, "down", "郭嘉", 0}},
                {cmd = "RolePlay", args = {"士兵01", 58, 6, "down", "士兵01", 0}},
                {cmd = "RolePlay", args = {"士兵02", 53, 6, "down", "士兵02", 0}},
                {cmd = "RolePlay", args = {"士兵03", 48, 6, "down", "士兵03", 0}},
                {cmd = "Dialog", args = {"曹操", "快！别让刘备跑了！"}},
                {cmd = "RoleChangeDirection", args = {"关羽", "up", 0}},
                {cmd = "Dialog", args = {"关羽", "……来了？"}},
                {cmd = "RoleMove", args = {"曹操", "down", 57, 14}},
                {cmd = "RoleMove", args = {"郭嘉", "down", 49, 14}},
                {cmd = "Delay", args = {1}},
                {cmd = "RoleMove", args = {"曹操", "down", 57, 67}},
                {cmd = "RoleMove", args = {"郭嘉", "down", 49, 67}},
                {cmd = "RoleMove", args = {"士兵01", "down", 58, 59}},
                {cmd = "RoleMove", args = {"士兵02", "down", 53, 59}},
                {cmd = "RoleMove", args = {"士兵03", "down", 48, 59}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "RoleAction", args = {"郭嘉", 0}},
                {cmd = "RoleAction", args = {"士兵01", 0}},
                {cmd = "RoleAction", args = {"士兵02", 0}},
                {cmd = "RoleAction", args = {"士兵03", 0}},
                {cmd = "HeadChange", args = {1}},
                {cmd = "Dialog", args = {"曹操", "云长？"}},
                {cmd = "RoleAction", args = {"关羽", 8}},
                {cmd = "Dialog", args = {"关羽", "丞相多日不见。"}},
                {cmd = "RoleAction", args = {"关羽", 0}},
                {cmd = "HeadChange", args = {0}},
                {cmd = "Dialog", args = {"曹操", "……你负责断后吗？"}},
                {cmd = "Dialog", args = {"关羽", "是的。"}},
                {cmd = "RoleAction", args = {"关羽", 5}},
                {cmd = "Dialog", args = {"关羽", "我不会让你们通过的。请亮出兵器吧。"}},
                {cmd = "RoleAction", args = {"关羽", 0}},
                {cmd = "Dialog", args = {"曹操", "………。（就算关羽如何英勇，单刀匹马也活不成啊。该怎么办才好……）"}},
                {cmd = "PlaySound", args = {"Se_e_07.wav", 255}},
                {cmd = "PlayMusic", args = {"Track13"}},
                {cmd = "Delay", args = {3}},
                {
                    {cmd = "ChoiceDialog", args = {"曹操", {"攻击关羽", "停止攻击"}}},
                    {
                        {cmd = "AddCareerism", args = {"+", 5}},
                        {cmd = "VarSet", args = {"Var307", true}},
                        {cmd = "PlayMusic", args = {"无"}},
                        {cmd = "PlaySound", args = {"Se_e_03.wav", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "Dialog", args = {"曹操", "云长，让我们过去。"}},
                        {cmd = "Dialog", args = {"关羽", "只要有我关某在此，休想越过半步！"}},
                        {cmd = "RoleAction", args = {"曹操", 19}},
                        {cmd = "Dialog", args = {"曹操", "对方只有一个人。攻击吧！"}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "Dialog", args = {"士兵01", "是关……关羽……！？"}},
                        {cmd = "Dialog", args = {"士兵02", "不……不行啊……打不过他的。"}},
                        {cmd = "RoleChangeDirection", args = {"郭嘉", "up", 0}},
                        {cmd = "Dialog", args = {"郭嘉", "怕什么！？快上。"}},
                        {cmd = "Dialog", args = {"士兵01", "军，军师，对方是关羽啊，我们这点人对付不了他的……"}},
                        {cmd = "Dialog", args = {"士兵03", "不……不行了。还是保命要紧……"}},
                        {cmd = "Dialog", args = {"郭嘉", "唔唔唔……"}},
                        {cmd = "RoleChangeDirection", args = {"郭嘉", "right", 0}},
                        {cmd = "Dialog", args = {"郭嘉", "主公，不行了。士兵们都害怕关羽。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 8}},
                        {cmd = "Dialog", args = {"郭嘉", "看来是对付不了关羽了。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "up", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleMove", args = {"士兵01", "up", 58, 55}},
                        {cmd = "RoleMove", args = {"士兵02", "up", 53, 55}},
                        {cmd = "RoleMove", args = {"士兵03", "up", 48, 55}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleChangeDirection", args = {"士兵01", "down", 0}},
                        {cmd = "RoleChangeDirection", args = {"士兵02", "down", 0}},
                        {cmd = "RoleChangeDirection", args = {"士兵03", "down", 0}},
                        {cmd = "Delay", args = {10}},
                        {cmd = "RoleAction", args = {"曹操", 4}},
                        {cmd = "Dialog", args = {"曹操", "会有这种事！"}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "Dialog", args = {"曹操", "可恼……没办法了。"}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "down", 0}},
                        {cmd = "Dialog", args = {"曹操", "云长，后会有期吧。"}},
                        {cmd = "RoleMove", args = {"曹操", "up", 57, 6}},
                        {cmd = "RoleMove", args = {"郭嘉", "up", 49, 6}},
                        {cmd = "RoleMove", args = {"士兵01", "up", 58, 6}},
                        {cmd = "RoleMove", args = {"士兵02", "up", 53, 6}},
                        {cmd = "RoleMove", args = {"士兵03", "up", 48, 6}},
                        {cmd = "RoleDisappear", args = {"曹操"}},
                        {cmd = "RoleDisappear", args = {"郭嘉"}},
                        {cmd = "RoleDisappear", args = {"士兵01"}},
                        {cmd = "RoleDisappear", args = {"士兵02"}},
                        {cmd = "RoleDisappear", args = {"士兵03"}},
                        {cmd = "RoleChangeDirection", args = {"关羽", "down", 0}},
                        {cmd = "Dialog", args = {"关羽", "…………（我也去荆州吧）"}},
                        {cmd = "RoleMove", args = {"关羽", "down", 53, 99}},
                        {cmd = "RoleDisappear", args = {"关羽"}},
                    },
                    {
                        {cmd = "VarSet", args = {"Var307", false}},
                        {cmd = "AddCareerism", args = {"-", 10}},
                        {cmd = "PlayMusic", args = {"Track21"}},
                        {cmd = "Dialog", args = {"曹操", "……郭嘉。撤退！"}},
                        {cmd = "RoleChangeDirection", args = {"郭嘉", "right", 0}},
                        {cmd = "Dialog", args = {"郭嘉", "什……什么！为什么！？这是千载难逢的好机会啊！"}},
                        {cmd = "Dialog", args = {"曹操", "……算了。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 8}},
                        {cmd = "Dialog", args = {"郭嘉", "主公想起过去和关羽的事吗？主公，您心太软了！"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "left", 0}},
                        {cmd = "Dialog", args = {"曹操", "奉孝。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 0}},
                        {cmd = "Dialog", args = {"郭嘉", "是。"}},
                        {cmd = "Dialog", args = {"曹操", "我不希望在这种场合下杀死关羽。"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                        {cmd = "Dialog", args = {"曹操", "这种小战场不应该是英雄成仁之处啊。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 8}},
                        {cmd = "Dialog", args = {"郭嘉", "主公，战争是不分大小的！"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "up", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "up", 19}},
                        {cmd = "Dialog", args = {"曹操", "撤退！这是命令。"}},
                        {cmd = "RoleAction", args = {"郭嘉", 0}},
                        {cmd = "Dialog", args = {"郭嘉", "主公………"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "up", 0}},
                        {cmd = "RoleMove", args = {"曹操", "up", 57, 6}},
                        {cmd = "RoleMove", args = {"郭嘉", "up", 49, 6}},
                        {cmd = "RoleMove", args = {"士兵01", "up", 58, 6}},
                        {cmd = "RoleMove", args = {"士兵02", "up", 53, 6}},
                        {cmd = "RoleMove", args = {"士兵03", "up", 48, 6}},
                        {cmd = "RoleDisappear", args = {"曹操"}},
                        {cmd = "RoleDisappear", args = {"郭嘉"}},
                        {cmd = "RoleDisappear", args = {"士兵01"}},
                        {cmd = "RoleDisappear", args = {"士兵02"}},
                        {cmd = "RoleDisappear", args = {"士兵03"}},
                        {cmd = "Dialog", args = {"关羽", "………（这份惺惺相惜之情，关某感激不尽。）"}},
                    },
                },
                {cmd = "PlaySound", args = {"Se_e_03.wav", 255}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
    },
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track18"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"china"}},
                {cmd = "HeadPortraitPlay", args = {"曹操", 399, 120, "曹操"}},
                {cmd = "HeadPortraitPlay", args = {"刘备", 369, 200, "刘备"}},
                {cmd = "SceneDialog", args = {"刘备在穰山战败后，", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"杨修", 283, 223, "杨修"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"率众前去投奔", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"刘备", 347, 223}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"荆州的刘表。", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {8}},
                {cmd = "SceneDialog", args = {"曹操大军", "不换页", "换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"曹操", 334, 96}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"凯旋回到许都后，", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"则加紧训练兵马，准备平定河北。", "不换页", "不换行", "等待"}},
                {cmd = "PlayMusic", args = {"无"}},
                {cmd = "LoadBackground", args = {"MMap-49"}},
                {cmd = "RolePlay", args = {"曹操", 35, 56, "right", "曹操", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 53, 71, "up", "夏侯惇", 0}},
                {cmd = "RolePlay", args = {"许褚", 59, 71, "up", "许褚", 0}},
                {cmd = "RolePlay", args = {"张辽", 65, 71, "up", "张辽", 0}},
                {cmd = "RolePlay", args = {"贾诩", 71, 71, "up", "贾诩", 0}},
                {cmd = "RolePlay", args = {"荀彧", 53, 41, "down", "荀彧", 0}},
                {cmd = "RolePlay", args = {"郭嘉", 59, 41, "down", "郭嘉", 0}},
                {cmd = "RolePlay", args = {"荀攸", 65, 41, "down", "荀攸", 0}},
                {cmd = "RolePlay", args = {"程昱", 71, 41, "down", "程昱", 0}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"许都  相府"}},
                {cmd = "Dialog", args = {"曹操", "文若，军马准备的如何？"}},
                {cmd = "RoleAction", args = {"荀彧", 8}},
                {cmd = "Dialog", args = {"荀彧", "都准备好了。"}},
                {cmd = "RoleAction", args = {"荀彧", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"郭嘉", 8}},
                {cmd = "Dialog", args = {"郭嘉", "主公，军粮也已经齐备，现在可出兵平定河北了。"}},
                {cmd = "RoleAction", args = {"郭嘉", 0}},
                {cmd = "Dialog", args = {"曹操", "嗯………"}},
                {cmd = "RoleAction", args = {"荀攸", 8}},
                {cmd = "Dialog", args = {"荀攸", "三子袁尚虽然继承大业，但是不能一统袁氏旧部。"}},
                {cmd = "RoleAction", args = {"荀攸", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"贾诩", 8}},
                {cmd = "Dialog", args = {"贾诩", "而且长子袁谭一派，已与袁尚反目成仇。"}},
                {cmd = "RoleAction", args = {"贾诩", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"程昱", 8}},
                {cmd = "Dialog", args = {"程昱", "这是个好机会！"}},
                {cmd = "RoleAction", args = {"程昱", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"曹操", 19}},
                {cmd = "Dialog", args = {"曹操", "好！出兵。平定河北！"}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 255}},
            },
        },
    },
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track18"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"china"}},
                {cmd = "HeadPortraitPlay", args = {"曹操", 335, 134, "曹操"}},
                {cmd = "HeadPortraitPlay", args = {"袁尚", 354, 31, "袁尚"}},
                {cmd = "SceneDialog", args = {"曹操军队", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"曹操", 290, 134}},
                {cmd = "HeadPortraitMove", args = {"曹操", 290, 85}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"越过黄河北上，", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"进军黎阳附近。", "不换页", "不换行", "等待"}},
                {cmd = "PlayMusic", args = {"无"}},
                {cmd = "LoadBackground", args = {"MMap-48"}},
                {cmd = "RolePlay", args = {"袁尚", 54, 29, "down", "袁尚", 0}},
                {cmd = "RolePlay", args = {"审配", 39, 49, "right", "审配", 0}},
                {cmd = "RolePlay", args = {"逢纪", 39, 55, "right", "逢纪", 0}},
                {cmd = "RolePlay", args = {"郭图", 39, 61, "right", "郭图", 0}},
                {cmd = "RolePlay", args = {"袁谭", 69, 49, "left", "袁谭", 0}},
                {cmd = "RolePlay", args = {"袁熙", 69, 55, "left", "袁熙", 0}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"邺  袁尚公馆"}},
                {cmd = "Dialog", args = {"袁尚", "刚才接到报告，曹军已经进军至黎阳附近。"}},
                {cmd = "Dialog", args = {"袁尚", "我绝不能眼睁睁地看着曹操，践踏父亲在河北开创的基业，马上准备应战。"}},
                {cmd = "RoleAction", args = {"审配", 8}},
                {cmd = "Dialog", args = {"审配", "对手是曹操，我们必须智取。"}},
                {cmd = "RoleAction", args = {"审配", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"袁谭", "right", 0}},
                {cmd = "Dialog", args = {"袁谭", "哼！全军一起对付曹操就行了，不必讲什么计策。"}},
                {cmd = "Dialog", args = {"袁尚", "兄长，这么做的话，恐怕不是曹操的对手。"}},
                {cmd = "RoleChangeDirection", args = {"袁谭", "left", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"袁谭", "left", 4}},
                {cmd = "Dialog", args = {"袁谭", "什么！？"}},
                {cmd = "Dialog", args = {"逢纪", "我也是这么想。"}},
                {cmd = "RoleAction", args = {"袁谭", 0}},
                {cmd = "Dialog", args = {"袁谭", "唔唔唔………"}},
                {cmd = "Dialog", args = {"袁尚", "首先请大哥、二哥、还有郭图、逢纪四人，率军与曹军作战吧。"}},
                {cmd = "RoleChangeDirection", args = {"逢纪", "up", 0}},
                {cmd = "Dialog", args = {"逢纪", "我也要去吗？"}},
                {cmd = "Dialog", args = {"袁尚", "嗯。"}},
                {cmd = "RoleChangeDirection", args = {"逢纪", "right", 0}},
                {cmd = "Dialog", args = {"逢纪", "……好吧。"}},
                {cmd = "Dialog", args = {"袁谭", "袁尚，那你做什么？"}},
                {cmd = "Dialog", args = {"袁尚", "我和审配接应兄长们。"}},
                {cmd = "RoleChangeDirection", args = {"袁谭", "right", 0}},
                {cmd = "Dialog", args = {"袁谭", "哼！（真是无趣！可恶的袁尚，亏你做出此事？）"}},
                {cmd = "RoleChangeDirection", args = {"袁谭", "left", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"郭图", 8}},
                {cmd = "Dialog", args = {"郭图", "（袁将军，先忍耐一下。）"}},
                {cmd = "RoleAction", args = {"郭图", 0}},
                {cmd = "Dialog", args = {"袁谭", "（好吧！）"}},
                {cmd = "Dialog", args = {"袁尚", "二哥还行吧。"}},
                {cmd = "Dialog", args = {"袁熙", "是。"}},
                {cmd = "Dialog", args = {"袁尚", "好！你四人马上出战。务必打败曹操！"}},
                {cmd = "PlaySound", args = {"Se_e_00.wav", 255}},
            },
        },
    },
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track17"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"MMap-62"}},
                {cmd = "RolePlay", args = {"曹操", 50, 68, "up", "曹操", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 39, 55, "right", "夏侯惇", 0}},
                {cmd = "RolePlay", args = {"许褚", 39, 49, "right", "许褚", 0}},
                {cmd = "RolePlay", args = {"荀攸", 39, 43, "right", "荀攸", 0}},
                {cmd = "RolePlay", args = {"荀彧", 61, 55, "left", "荀彧", 0}},
                {cmd = "RolePlay", args = {"郭嘉", 61, 49, "left", "郭嘉", 0}},
                {cmd = "RolePlay", args = {"程昱", 61, 43, "left", "程昱", 0}},
                {cmd = "RShowSceneName", args = {"黎阳郊外  曹操军主营"}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"荀彧", "down", 0}},
                {cmd = "Dialog", args = {"荀彧", "主公，河北人马在黎阳等待我军。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，好吧。我倒要看看袁绍的儿子们，究竟有多大的本领。"}},
                {cmd = "RoleAction", args = {"曹操", 19}},
                {cmd = "Dialog", args = {"曹操", "出发！"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "RoleChangeDirection", args = {"荀彧", "left", 0}},
                {cmd = "ShowMenu", args = {true}},
                {cmd = "FightGeneralsInfo", args = {true, 11, 7, "郭嘉", }},
            },
        },
    },
    {
        {
            {cmd = "FightButtonPressedTest"},
            {
                {cmd = "ShowMenu", args = {false}},
                {cmd = "Dialog", args = {"曹操", "出发。"}},
                {cmd = "PlayMusic", args = {"无"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"荀彧"}},
            {
                {cmd = "Dialog", args = {"荀彧", "黎阳的地形没什么特别的，不过有许多地方设置了栅栏。"}},
                {cmd = "Dialog", args = {"曹操", "哦？原来袁家的小子也有点本事。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"郭嘉"}},
            {
                {cmd = "Dialog", args = {"郭嘉", "袁谭他们好像打算巩固阵地，防备相当坚固啊。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，这点像袁绍。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"程昱"}},
            {
                {cmd = "Dialog", args = {"程昱", "如今袁绍已死，河北还有多少兵力呢？"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"夏侯惇"}},
            {
                {cmd = "Dialog", args = {"夏侯惇", "孟德，那几个小兔崽子出兵仓亭了。"}},
                {cmd = "Dialog", args = {"曹操", "嗯。"}},
                {cmd = "Dialog", args = {"夏侯惇", "我看他们比起袁绍还差得远呢……"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"荀攸"}},
            {
                {cmd = "Dialog", args = {"荀攸", "袁谭和袁熙二人目前在前线，袁尚好像还呆在后面。"}},
                {cmd = "Dialog", args = {"曹操", "哦？"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"许褚"}},
            {
                {cmd = "Dialog", args = {"许褚", "说老实话，我不喜欢杀戮。"}},
                {cmd = "Dialog", args = {"许褚", "啊！您……您别介意。我会奋勇杀敌的。"}},
            },
        },
    },
}

return Plot
