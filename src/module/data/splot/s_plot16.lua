local Plot = {}

-- 战斗准备设置
Plot.battlePrepare = {
    battleName   = "白马之战",
    maxRounds    = 25,
    mapId        = "16.tmx",
    weatherStart = {"晴", "晴", "阴", "晴", "阴"},
    weatherType  = {"普通"},
    levelAdd     = -2,
    playerGeneralList = {
        {uid = "曹操"},
        {uid = "夏侯惇"},
    },
    friendGeneralList = {
        {uid = "步兵3", aiType = "坚守原地"},
        {uid = "骑兵10", aiType = "坚守原地"},
        {uid = "关羽", aiType = "主动出击", isHide = true, wuqiId = "青龙偃月刀", shipingId = "赤兔马", levelAdd = 4},
    },
    enemyGeneralList = {
        {uid = "袁绍", aiType = "坚守原地", shipingId = "风神盾", levelAdd = 4},
        {uid = "沮授", aiType = "被动出击", levelAdd = 4},
        {uid = "步兵1", aiType = "被动出击"},
        {uid = "步兵2", aiType = "被动出击"},
        {uid = "骑兵1", aiType = "主动出击"},
        {uid = "骑兵2", aiType = "主动出击"},
        {uid = "骑兵3", aiType = "主动出击"},
        {uid = "弓骑兵1", aiType = "主动出击"},
        {uid = "骑兵4", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "骑兵5", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "骑兵6", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "弓骑兵2", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "骑兵7", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "骑兵8", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "骑兵9", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "弓骑兵3", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "颜良", aiType = "坚守原地", shipingId = "豆袋", levelAdd = 4},
        {uid = "弓骑兵4", aiType = "主动出击"},
        {uid = "风水士1", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
        {uid = "道士1", aiType = "逃至指定点", aiArgs = {fixCol = 6, fixRow = 8}},
    },
}

Plot.battleStartPlot = {
    {cmd = "PlayMusic", args = {"Track4"}},
    {
        {cmd = "FaceToFace", args = {"袁绍", "颜良"}},
        {cmd = "Dialog", args = {"袁绍", "颜良啊，曹军的战斗力如何？"}},
        {cmd = "FaceToFace", args = {"颜良", "袁绍"}},
        {cmd = "GeneralAction", args = {"颜良", "doubleAttack"}},
        {cmd = "Dialog", args = {"颜良", "根本不是我的对手，这座桥有我颜良一人就行了，请主公去西面的桥吧。"}},
        {cmd = "GeneralAction", args = {"颜良", "stand"}},
        {cmd = "FaceToFace", args = {"沮授", "袁绍"}},
        {cmd = "Dialog", args = {"沮授", "颜将军是我军头号猛将，普通人是无法敌得过他的。"}},
        {cmd = "Dialog", args = {"沮授", "我看就照颜将军所说，我们从西面展开攻势吧。"}},
        {cmd = "GeneralChangeDirection", args = {"袁绍", "down"}},
        {cmd = "GeneralChangeDirection", args = {"沮授", "down"}},
        {cmd = "Dialog", args = {"袁绍", "好，东面的桥由颜良把守，其余部队进攻西面的桥！"}},
        {cmd = "FaceToFace", args = {"曹操", "颜良"}},
        {cmd = "Dialog", args = {"曹操", "颜良是吗？"}},
        {cmd = "Dialog", args = {"曹操", "他是袁绍帐下两员虎将之一，对他可不能小觑。"}},
        {cmd = "FaceToFace", args = {"步兵3", "曹操"}},
        {cmd = "Dialog", args = {"步兵3", "主公，交给我吧。"}},
        {cmd = "Dialog", args = {"步兵3", "让我教训教训他！"}},
        {cmd = "Dialog", args = {"曹操", "喂，等等……"}},
        {cmd = "FaceToFace", args = {"步兵3", "颜良"}},
        {cmd = "GeneralAction", args = {"步兵3", "prepareAttack"}},
        {cmd = "Dialog", args = {"步兵3", "你就是颜良？"}},
        {cmd = "Dialog", args = {"步兵3", "拿命来吧！"}},
        {cmd = "GeneralAction", args = {"步兵3", "stand"}},
        {cmd = "RoleMove", args = {"步兵3", "up", 17, 8}},
        {cmd = "FaceToFace", args = {"步兵3", "颜良"}},
        {cmd = "FaceToFace", args = {"颜良", "步兵3"}},
        {cmd = "Dialog", args = {"颜良", "没用的，你根本不是我的对手。"}},
        {cmd = "GeneralAction", args = {"颜良", "attack"}},
        {cmd = "GeneralAction", args = {"颜良", "stand"}},
        {cmd = "GeneralAction", args = {"步兵3", "hurt"}},
        {cmd = "PlaySound", args = {"Se36.wav", 1}},
        {cmd = "Delay", args = {10}},
        {cmd = "GeneralAction", args = {"步兵3", "weak"}},
        {cmd = "Dialog", args = {"步兵3", "哇啊啊！"}},
        {cmd = "GeneralRetreat", args = {"步兵3", true}},
        {cmd = "FaceToFace", args = {"骑兵10", "颜良"}},
        {cmd = "GeneralAction", args = {"骑兵10", "defense"}},
        {cmd = "Dialog", args = {"骑兵10", "居然敢杀我军士！"}},
        {cmd = "Dialog", args = {"骑兵10", "这回让我来对付你！"}},
        {cmd = "RoleMove", args = {"骑兵10", "up", 17, 8}},
        {cmd = "FaceToFace", args = {"骑兵10", "颜良"}},
        {cmd = "FaceToFace", args = {"颜良", "骑兵10"}},
        {cmd = "GeneralAction", args = {"骑兵10", "attack"}},
        {cmd = "GeneralAction", args = {"骑兵10", "stand"}},
        {cmd = "GeneralAction", args = {"颜良", "defense"}},
        {cmd = "PlaySound", args = {"Se30.wav", 1}},
        {cmd = "Delay", args = {10}},
        {cmd = "GeneralAction", args = {"颜良", "attack"}},
        {cmd = "GeneralAction", args = {"颜良", "stand"}},
        {cmd = "GeneralAction", args = {"骑兵10", "hurt"}},
        {cmd = "PlaySound", args = {"Se36.wav", 1}},
        {cmd = "Delay", args = {10}},
        {cmd = "GeneralAction", args = {"骑兵10", "weak"}},
        {cmd = "Dialog", args = {"骑兵10", "哇啊！"}},
        {cmd = "GeneralRetreat", args = {"骑兵10", true}},
        {cmd = "FaceToFace", args = {"颜良", "曹操"}},
        {cmd = "GeneralAction", args = {"颜良", "prepareAttack"}},
        {cmd = "Dialog", args = {"颜良", "哼！"}},
        {cmd = "Dialog", args = {"颜良", "谁来我都不怕！"}},
        {cmd = "Dialog", args = {"颜良", "下一个是谁啊？"}},
        {cmd = "GeneralAction", args = {"颜良", "stand"}},
        {cmd = "FaceToFace", args = {"曹操", "颜良"}},
        {cmd = "Dialog", args = {"曹操", "如果不打败颜良的话，就通过不了那座小桥，没办法了。要叫云长来吗……？"}},
    },
    {cmd = "ChoiceDialog", args = {"曹操", {"叫关羽上阵", "由正面突破"}}},
    {
        {cmd = "GeneralAction", args = {"曹操", "defense"}},
        {cmd = "Dialog", args = {"曹操", "在关羽到来之前不要再攻打颜良，我们先全力守住西面的桥！"}},
        {cmd = "PlayerGeneralMove", args = {6, 11, 15, "left"}},
        {cmd = "PlayerGeneralMove", args = {7, 10, 17, "left"}},
        {cmd = "VarSet", args = {"Var2", true}},
    },
    {
        {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
        {cmd = "Dialog", args = {"曹操", "这样下去敌人会越聚越多，我们要尽早消灭他！"}},
        {cmd = "GeneralAction", args = {"曹操", "stand"}},
        {cmd = "PlayerGeneralMove", args = {6, 17, 11, "up"}},
        {cmd = "PlayerGeneralMove", args = {7, 18, 12, "up"}},
        {cmd = "GeneralAction", args = {"颜良", "doubleAttack"}},
        {cmd = "Dialog", args = {"颜良", "你们这帮家伙就来我这送死吧！"}},
        {cmd = "Dialog", args = {"颜良", "这样主公进攻西面的桥就容易了。"}},
        {cmd = "GeneralAction", args = {"颜良", "stand"}},
    },
    {cmd = "BattleWinCondition", args = {"胜利条件\n一、歼灭所有敌军。\n\n失败条件\n一、曹操死亡。\n二、回合数超过25。"}},
    {cmd = "ShowBattleWinCondition", args = {"歼灭所有敌军！"}},
    {cmd = "VarSet", args = {"Var516", true}},
    {cmd = "ShowMenu", args = {true}},
}

Plot.battleMiddlePlot = {
    {
        {cmd = "RoundsTest", args = {2, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var11"}}}},
        {
            {cmd = "GeneralAiChange", args = {"骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"风水士1", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var11", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {3, "="}},
        {cmd = "VarTest", args = {{trueConditions = {"Var2"}, falseConditions = {"Var12"}}}},
        {
            {cmd = "GeneralShow", args = {"关羽"}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
                {cmd = "FaceToFace", args = {"关羽", "曹操"}},
                {cmd = "Dialog", args = {"关羽", "丞相，云长来迟了。"}},
                {cmd = "FaceToFace", args = {"曹操", "关羽"}},
                {cmd = "Dialog", args = {"曹操", "云长啊。"}},
                {cmd = "Dialog", args = {"曹操", "我全靠你了。"}},
                {cmd = "Dialog", args = {"关羽", "丞相有何难处？"}},
                {cmd = "Dialog", args = {"曹操", "敌将颜良很难对付，所以想借助云长的神力。"}},
                {cmd = "Dialog", args = {"关羽", "好，请交给云长。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，有劳云长了！"}},
                {cmd = "FaceToFace", args = {"关羽", "颜良"}},
            },
            {
                {cmd = "Else"},
                {cmd = "FaceToFace", args = {"关羽", "曹操"}},
                {cmd = "Dialog", args = {"关羽", "丞相，云长来迟了。"}},
                {cmd = "FaceToFace", args = {"曹操", "关羽"}},
                {cmd = "Dialog", args = {"曹操", "云长啊。"}},
                {cmd = "Dialog", args = {"关羽", "丞相有何难处吗？"}},
                {cmd = "Dialog", args = {"曹操", "不不，现在已经解决了，你就帮助我讨伐袁绍吧。"}},
                {cmd = "Dialog", args = {"关羽", "是，请交给云长吧。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，有劳云长了！"}},
            },
            {cmd = "VarSet", args = {"Var716", true}},
            {cmd = "VarSet", args = {"Var12", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {4, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var13"}}}},
        {
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"道士1", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var13", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {5, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var14"}}}},
        {
            {cmd = "GeneralShow", args = {"关羽"}},
            {cmd = "FaceToFace", args = {"关羽", "曹操"}},
            {cmd = "Dialog", args = {"关羽", "丞相，战况如何？"}},
            {cmd = "FaceToFace", args = {"关羽", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "是你啊云长？"}},
            {cmd = "Dialog", args = {"曹操", "为何来到此地？"}},
            {cmd = "Dialog", args = {"关羽", "关某怕丞相遭遇难处……"}},
            {cmd = "Dialog", args = {"关羽", "所以想为丞相尽一份心力。"}},
            {cmd = "Dialog", args = {"曹操", "是吗？"}},
            {cmd = "Dialog", args = {"曹操", "那就请你加入这场战斗吧，目前我军已陷入苦战。"}},
            {cmd = "Dialog", args = {"关羽", "遵命！"}},
            {cmd = "FaceToFace", args = {"关羽", "颜良"}},
            {cmd = "VarSet", args = {"Var716", true}},
            {cmd = "VarSet", args = {"Var14", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {4, "="}},
        {cmd = "GeneralCountsTest", args = {{"player", "friend"}, 0, "=", "指定区域", 17, 8, 17, 8}},
        {cmd = "GeneralPropTest", args = {"颜良", "HPCur", 150, ">="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var15"}}}},
        {
            {cmd = "GeneralChangeDirection", args = {"颜良", "down"}},
            {cmd = "GeneralAction", args = {"颜良", "prepareAttack"}},
            {cmd = "Dialog", args = {"颜良", "看来好像已经没有人，有胆量再跟我交战了。"}},
            {cmd = "Dialog", args = {"颜良", "哈哈哈哈哈！"}},
            {cmd = "GeneralAction", args = {"颜良", "stand"}},
            {cmd = "VarSet", args = {"Var15", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 10, 3}},
        {cmd = "VarTest", args = {{falseConditions = {"Var20"}}}},
        {
            {cmd = "AddItem", args = {"恢复用米", 0}},
            {cmd = "VarSet", args = {"Var20", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "袁绍", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var40"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "袁绍"}},
            {cmd = "FaceToFace", args = {"袁绍", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "袁绍，你的部队挺有战斗力的。"}},
            {cmd = "Dialog", args = {"曹操", "如果不是跟我生在同一时代，现在天下就是你的了。"}},
            {cmd = "Dialog", args = {"袁绍", "我可没闲功夫跟你叙旧，如果觉得你我战斗力相差悬殊，那就干脆投降我吧。"}},
            {cmd = "Dialog", args = {"曹操", "如果你有本事驾驭这些部队，我或许还会考虑考虑呢。"}},
            {cmd = "Dialog", args = {"曹操", "哈哈哈！"}},
            {cmd = "Dialog", args = {"袁绍", "你还是一点都没变，曹操！"}},
            {cmd = "VarSet", args = {"Var40", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "沮授", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var41"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "沮授"}},
            {cmd = "FaceToFace", args = {"沮授", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "让开！别挡着我！"}},
            {cmd = "Dialog", args = {"曹操", "袁绍何在！"}},
            {cmd = "Dialog", args = {"沮授", "嗯嗯，主公！"}},
            {cmd = "Dialog", args = {"沮授", "快点逃命吧！"}},
            {cmd = "VarSet", args = {"Var41", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "颜良", true}},
        {cmd = "VarTest", args = {{falseConditions = {"Var42"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "颜良"}},
            {cmd = "FaceToFace", args = {"颜良", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "你就是颜良？"}},
            {cmd = "Dialog", args = {"曹操", "好厉害的身手。"}},
            {cmd = "Dialog", args = {"颜良", "……！？"}},
            {cmd = "Dialog", args = {"颜良", "主将居然亲自出马？"}},
            {cmd = "Dialog", args = {"颜良", "真是无谋之举！"}},
            {cmd = "Dialog", args = {"曹操", "只要听说有优秀的武将，我非得亲眼见识一下才行。"}},
            {cmd = "Dialog", args = {"曹操", "哈哈哈！"}},
            {cmd = "Dialog", args = {"颜良", "只要杀了你就赢得这场仗了。"}},
            {cmd = "Dialog", args = {"颜良", "你这个爱才如命的大傻瓜！"}},
            {cmd = "GeneralAction", args = {"颜良", "attack"}},
            {cmd = "GeneralAction", args = {"颜良", "stand"}},
            {cmd = "GeneralAction", args = {"曹操", "defense"}},
            {cmd = "PlaySound", args = {"Se31.wav", 1}},
            {cmd = "Delay", args = {10}},
            {cmd = "Dialog", args = {"颜良", "唔唔，让他给跑了……"}},
            {cmd = "Dialog", args = {"曹操", "（呼，总算脱险了。\n话说回来，有那样的武艺，普通人还真不是他的对手。）"}},
            {cmd = "VarSet", args = {"Var42", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"关羽", "颜良", true}},
        {cmd = "VarTest", args = {{falseConditions = {"Var43"}}}},
        {
            {cmd = "FaceToFace", args = {"关羽", "颜良"}},
            {cmd = "FaceToFace", args = {"颜良", "关羽"}},
            {cmd = "Dialog", args = {"关羽", "让关某来对付你吧！"}},
            {cmd = "Dialog", args = {"颜良", "我看你是急着找死，放马过来吧！"}},
            {
                {cmd = "PkPrepare", args = {"关羽", "颜良"}},
                {cmd = "PkGeneralShow", args = {false, "让我关云长会你一会！\n颜良，你的首级我要定了。", "攻击"}},
                {cmd = "PkGeneralShow", args = {true, "这个玩笑真有意思！\n看我怎么砍下你的脑袋！", "二次攻击"}},
                {cmd = "PkShowStart"},
                {cmd = "PkGeneralAction", args = {false, "攻击预备"}},
                {cmd = "PkShowDialog", args = {false, "看招！", true}},
                {cmd = "PkGeneralAction", args = {true, "攻击预备"}},
                {cmd = "PkShowDialog", args = {true, "来吧！", true}},
                {cmd = "PkGeneralAttack", args = {false, "互相冲锋", true}},
                {cmd = "Delay", args = {10}},
                {cmd = "PkGeneralAction", args = {true, "晕倒"}},
                {cmd = "PkShowDialog", args = {true, "怎、怎么可能……\n怎么会有这等事！\n哇啊啊！", true}},
                {cmd = "PkGeneralDie", args = {true}},
                {cmd = "PkGeneralAction", args = {false, "后转"}},
                {cmd = "PkGeneralAction", args = {false, "前移"}},
                {cmd = "PkGeneralAction", args = {false, "防御"}},
                {cmd = "PkShowDialog", args = {false, "我关云长斩杀敌将颜良了！", true}},
                {cmd = "PkOver"},
            },
            {cmd = "GeneralRetreat", args = {"颜良", true}},
            {cmd = "AddItem", args = {"豆袋", 0}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var50", "Var51"}}}},
                {cmd = "FaceToFace", args = {"沮授", "袁绍"}},
                {cmd = "FaceToFace", args = {"袁绍", "沮授"}},
                {cmd = "Dialog", args = {"沮授", "主公，大事不好！"}},
                {cmd = "Dialog", args = {"沮授", "颜良被敌军杀害了……！"}},
                {cmd = "Dialog", args = {"袁绍", "什么，你说颜良被杀？"}},
                {cmd = "Dialog", args = {"袁绍", "怎么可能！"}},
                {cmd = "Dialog", args = {"沮授", "杀死颜良的好像自称关羽……。"}},
                {cmd = "Dialog", args = {"袁绍", "关羽…，是那个关羽吗！？"}},
                {cmd = "Dialog", args = {"袁绍", "他应该是刘备的部下啊！"}},
            },
            {cmd = "GeneralAiChange", args = {"骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"风水士1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"道士1", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var43", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"袁绍", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var50"}}}},
        {
            {cmd = "Dialog", args = {"袁绍", "唔唔唔唔。"}},
            {cmd = "Dialog", args = {"袁绍", "这也无可奈何了！"}},
            {cmd = "Dialog", args = {"袁绍", "撤退吧！"}},
            {cmd = "GeneralRetreat", args = {"袁绍", false}},
            {cmd = "VarSet", args = {"Var50", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"沮授", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var51"}}}},
        {
            {cmd = "Dialog", args = {"沮授", "主、主公，我已经顶不住了。"}},
            {cmd = "Dialog", args = {"沮授", "撤退。"}},
            {cmd = "GeneralRetreat", args = {"沮授", false}},
            {cmd = "VarSet", args = {"Var51", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"颜良", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
        {
            {cmd = "Dialog", args = {"颜良", "怎、怎么可能！？"}},
            {cmd = "Dialog", args = {"颜良", "哇啊！"}},
            {cmd = "GeneralRetreat", args = {"颜良", true}},
            {cmd = "AddItem", args = {"豆袋", 0}},
            {cmd = "GeneralAiChange", args = {"骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var52", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"关羽", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var53"}}}},
        {
            {cmd = "Dialog", args = {"关羽", "这样也算帮上不少忙了。"}},
            {cmd = "Dialog", args = {"关羽", "关某就先撤退吧。"}},
            {cmd = "GeneralRetreat", args = {"关羽", false}},
            {cmd = "VarSet", args = {"Var53", true}},
        },
    },
    {
        {cmd = "BattleWinTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var0"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"曹操", "很好，总算歼灭了敌人！"}},
            {cmd = "Dialog", args = {"曹操", "我军胜利了！"}},
            {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var616", true}},
        },
    },
    {
        {cmd = "BattleLoseTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var1"}}}},
        {
            {cmd = "Tip", args = {"曹操败给了袁绍。"}},
            {cmd = "BattleOver"},
            {cmd = "BattleLose"},
            {cmd = "VarSet", args = {"Var1", true}},
        },
    },
}

return Plot
