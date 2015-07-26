--[[
    转换脚本R_TXT/r_plot00.txt
--]]

local Plot = {
    {
        {
            {
                {cmd = "LoadBackground", args = {"MMap-71"}},
                {cmd = "ShowMenu", args = {false}},
                {cmd = "RoleAddOrLevel", args = {"曹操", "add", 2}},
                {cmd = "AddCareerism", args = {"=", 50}},
                {cmd = "AddRoleInfo", args = {"曹操", "倚天剑", 0, "默认装备", 0, "默认装备"}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                {cmd = "RolePlay", args = {"士兵01", 41, 6, "down", "士兵01", 0}},
                {cmd = "RoleMove", args = {"士兵01", "down", 41, 16}},
                {cmd = "RolePlay", args = {"曹操", 41, 6, "down", "曹操", 0}},
                {cmd = "RolePlay", args = {"许子将", 55, 96, "up", "许子将", 0}},
                {cmd = "RoleMove", args = {"士兵01", "down", 41, 26}},
                {cmd = "RoleMove", args = {"曹操", "down", 41, 16}},
                {cmd = "RoleMove", args = {"许子将", "up", 55, 86}},
                {cmd = "RolePlay", args = {"士兵02", 41, 6, "down", "士兵02", 0}},
                {cmd = "RoleMove", args = {"士兵01", "down", 41, 46}},
                {cmd = "RoleMove", args = {"曹操", "down", 41, 36}},
                {cmd = "RoleMove", args = {"士兵02", "down", 41, 26}},
                {cmd = "RoleMove", args = {"许子将", "up", 55, 66}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"士兵01", "up", 0}},
                {cmd = "Dialog", args = {"士兵01", "队长，咱们得快点！"}},
                {cmd = "Dialog", args = {"曹操", "我知道！"}},
                {cmd = "RoleMove", args = {"士兵01", "down", 41, 61}},
                {cmd = "RoleMove", args = {"曹操", "down", 41, 51}},
                {cmd = "RoleMove", args = {"士兵02", "down", 41, 41}},
                {cmd = "RoleMove", args = {"许子将", "up", 55, 51}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "RoleAction", args = {"士兵01", 0}},
                {cmd = "RoleAction", args = {"士兵02", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"许子将", "left", 0}},
                {cmd = "Dialog", args = {"许子将", "请留步！"}},
                {cmd = "RoleChangeDirection", args = {"士兵01", "right", 0}},
                {cmd = "Dialog", args = {"士兵01", "来者何人？你想阻止官兵吗！"}},
                {cmd = "Dialog", args = {"曹操", "且慢。"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                {cmd = "Dialog", args = {"曹操", "老丈找我有事？我是官军骑兵队长，姓曹名操，字孟德。"}},
                {cmd = "RoleAction", args = {"许子将", 8}},
                {cmd = "Dialog", args = {"许子将", "其实，小老儿见您相貌异于常人，所以不经意便喊住了您。"}},
                {cmd = "RoleAction", args = {"许子将", 0}},
                {cmd = "Dialog", args = {"士兵01", "喂，不得对我们队长无礼！"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "down", 0}},
                {cmd = "Dialog", args = {"曹操", "哎，多嘴！"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                {cmd = "Dialog", args = {"曹操", "老丈，你可会看相？"}},
                {cmd = "Dialog", args = {"许子将", "是的。"}},
                {cmd = "Dialog", args = {"曹操", "这倒有意思！不知我面相如何？"}},
                {cmd = "Dialog", args = {"许子将", "阁下乃治世之能臣，不过将来世人会称你作奸雄的。"}},
                {cmd = "Dialog", args = {"士兵01", "你，你说什么？"}},
                {cmd = "Dialog", args = {"曹操", "慢着。"}},
                {cmd = "Dialog", args = {"曹操", "老丈，你是说天将大乱吗？"}},
                {cmd = "Dialog", args = {"许子将", "哈哈，小老儿可没这么说。"}},
                {cmd = "Dialog", args = {"曹操", "老丈不必隐瞒了。不过，奸雄这话……。"}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 255}},
                {cmd = "Delay", args = {3}},
                {cmd = "PlayMusic", args = {"Track13"}},
                {cmd = "Delay", args = {3}},
                {
                    {cmd = "ChoiceDialog", args = {"曹操", {"正是吾心所愿", "似乎言之过早"}}},
                    {
                        {cmd = "AddCareerism", args = {"+", 10}},
                        {cmd = "PlayMusic", args = {"无"}},
                        {cmd = "VarSet", args = {"Var300", true}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleAction", args = {"曹操", 5}},
                        {cmd = "Dialog", args = {"曹操", "既然生为男儿，乱世奸雄正是吾心所愿。"}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "Dialog", args = {"许子将", "原来如此。其实小老儿不过是胡言乱语。还请大人莫怪。"}},
                        {cmd = "Dialog", args = {"许子将", "那么小老儿就此告辞，祝将军旗开得胜。"}},
                        {cmd = "RoleAction", args = {"许子将", 0}},
                    },
                    {
                        {cmd = "VarSet", args = {"Var300", false}},
                        {cmd = "AddCareerism", args = {"-", 10}},
                        {cmd = "PlayMusic", args = {"无"}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "Dialog", args = {"曹操", "……奸雄？现在就下定论，未免言之过早。"}},
                        {cmd = "RoleAction", args = {"许子将", 8}},
                        {cmd = "Dialog", args = {"许子将", "原来如此。其实小老儿不过是胡言乱语。还请大人莫怪。"}},
                        {cmd = "Dialog", args = {"许子将", "那么小老儿就此告辞，祝将军旗开得胜。"}},
                        {cmd = "RoleAction", args = {"许子将", 0}},
                    },
                },
                {cmd = "Delay", args = {3}},
                {cmd = "Dialog", args = {"曹操", "……嗯。再会了，老丈。"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "down", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"曹操", 19}},
                {cmd = "Dialog", args = {"曹操", "出发！赶往激战中的颍川！"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"士兵01", "up", 0}},
                {cmd = "Dialog", args = {"士兵01", "是！"}},
                {cmd = "RoleChangeDirection", args = {"士兵02", "down", 0}},
                {cmd = "Dialog", args = {"士兵02", "是！"}},
                {cmd = "RoleMove", args = {"曹操", "down", 41, 81}},
                {cmd = "RoleMove", args = {"士兵01", "down", 41, 99}},
                {cmd = "RoleMove", args = {"士兵02", "down", 41, 71}},
                {cmd = "RoleMove", args = {"许子将", "up", 55, 21}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"许子将", "down", 0}},
                {
                    {cmd = "VarTest", args = {{trueConditions = {"Var300"}}}},
                    {cmd = "Dialog", args = {"许子将", "原来自己想当奸雄？好好，曹大人……您就朝着自己的理想努力吧。"}},
                    {cmd = "Dialog", args = {"许子将", "呵、呵、呵！！"}},
                },
                {
                    {cmd = "VarTest", args = {{falseConditions = {"Var300"}}}},
                    {cmd = "Dialog", args = {"许子将", "那年轻人的相貌，正是乱世之奸雄，治世之能臣。"}},
                    {cmd = "Dialog", args = {"许子将", "不知他将来会如何……？就让我们拭目以待吧。"}},
                    {cmd = "Dialog", args = {"许子将", "呵、呵、呵。"}},
                },
                {cmd = "RoleMove", args = {"曹操", "down", 41, 99}},
                {cmd = "RoleMove", args = {"士兵02", "down", 41, 99}},
                {cmd = "RoleMove", args = {"许子将", "up", 55, 6}},
                {cmd = "Delay", args = {3}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 255}},
            },
        },
    },
}

return Plot
