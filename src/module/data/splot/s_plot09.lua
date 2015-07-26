local Plot = {}

-- 战斗准备设置
Plot.battlePrepare = {
    battleName   = "献帝救出战",
    maxRounds    = 20,
    mapId        = "9.tmx",
    weatherStart = {"晴", "晴", "阴", "晴", "阴"},
    weatherType  = {"普通"},
    levelAdd     = -2,
    playerGeneralList = {
        {uid = "曹操"},
    },
    enemyGeneralList = {
        {uid = "郭汜", aiType = "主动出击", levelAdd = 2},
        {uid = "骑兵1", aiType = "主动出击"},
        {uid = "骑兵2", aiType = "主动出击"},
        {uid = "弓骑兵1", aiType = "主动出击"},
        {uid = "弓骑兵2", aiType = "主动出击"},
        {uid = "李傕", aiType = "主动出击", levelAdd = 2},
        {uid = "骑兵3", aiType = "主动出击"},
        {uid = "骑兵4", aiType = "主动出击"},
        {uid = "弓骑兵3", aiType = "主动出击"},
        {uid = "弓骑兵4", aiType = "主动出击"},
        {uid = "徐晃", aiType = "主动出击", levelAdd = 2},
        {uid = "骑兵5", aiType = "主动出击"},
        {uid = "骑兵6", aiType = "主动出击"},
        {uid = "弓骑兵5", aiType = "主动出击"},
        {uid = "弓骑兵6", aiType = "主动出击"},
    },
    friendGeneralList = {
        {uid = "献帝", aiType = "逃至指定点", aiArgs = {fixCol = 8, fixRow = 14}},
        {uid = "步兵1", aiType = "逃至指定点", aiArgs = {fixCol = 8, fixRow = 14}},
        {uid = "步兵2", aiType = "逃至指定点", aiArgs = {fixCol = 8, fixRow = 14}},
    },
}

Plot.battleStartPlot = {
    {cmd = "PlayMusic", args = {"Track7"}},
    {
        {cmd = "GeneralAction", args = {"李傕", "prepareAttack"}},
        {cmd = "Dialog", args = {"李傕", "占婆听了上天说的话，说我李傕需要皇帝支持才能得天下。"}},
        {cmd = "Dialog", args = {"李傕", "追、追！别让献帝跑了！"}},
        {cmd = "GeneralAction", args = {"李傕", "stand"}},
        {cmd = "Dialog", args = {"献帝", "朕不能被他们抓去，与其做个傀儡被后人耻笑，还不如死了好。"}},
        {cmd = "Dialog", args = {"郭汜", "知天命者，不怨天尤人。"}},
        {cmd = "Dialog", args = {"郭汜", "就请您老老实实地别跑吧？"}},
        {cmd = "Dialog", args = {"郭汜", "哎呀，这话好像不怎么尊敬天子啊？"}},
        {cmd = "Dialog", args = {"郭汜", "哈哈哈。"}},
        {cmd = "Dialog", args = {"徐晃", "（抓了皇帝虽然在义理上站不住脚，但是放过皇帝又会背上叛臣的污名！）"}},
        {cmd = "Dialog", args = {"徐晃", "虽然觉得可怜，还是不能放过啊！"}},
        {cmd = "FaceToFace", args = {"曹仁", "献帝"}},
        {cmd = "FaceToFace", args = {"曹操", "献帝"}},
        {cmd = "Dialog", args = {"曹仁", "追击献帝的部队，好像是李傕、郭汜那帮董卓的旧部。"}},
        {cmd = "Dialog", args = {"曹操", "嗯，加速行军！我们要救出献帝！"}},
        {cmd = "Dialog", args = {"曹操", "绝不能被敌人抢走，快！"}},
    },
    {cmd = "BattleWinCondition", args = {"胜利条件\n一、献帝到达东北端。\n二、歼灭所有敌军。\n\n失败条件\n一、献帝被敌人抓住。\n二、曹操死亡。\n三、回合数超过20。"}},
    {cmd = "ShowBattleWinCondition", args = {"献帝逃走！"}},
    {cmd = "HighlightGeneral", args = {"献帝"}},
    {cmd = "HighlightRange", args = {17, 1, 20, 1, false}},
    {cmd = "VarSet", args = {"Var509", true}},
    {cmd = "ShowMenu", args = {true}},
}

Plot.battleMiddlePlot = {
    {
        {cmd = "RoundsTest", args = {3, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var11"}}}},
        {
            {cmd = "GeneralAiChange", args = {"献帝", "逃至指定点", "无", 16, 16}},
            {cmd = "GeneralAiChange", args = {"步兵1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵2", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var11", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {5, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var12"}}}},
        {
            {cmd = "GeneralAiChange", args = {"献帝", "逃至指定点", "无", 19, 7}},
            {cmd = "VarSet", args = {"Var12", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {7, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var13"}}}},
        {
            {cmd = "GeneralAiChange", args = {"献帝", "逃至指定点", "无", 19, 1}},
            {cmd = "VarSet", args = {"Var13", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 8, 14}},
        {cmd = "VarTest", args = {{falseConditions = {"Var20"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var20", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 16, 16}},
        {cmd = "VarTest", args = {{falseConditions = {"Var21"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var21", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 19, 7}},
        {cmd = "VarTest", args = {{falseConditions = {"Var22"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var22", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {"献帝", 17, 1, 20, 1}},
        {cmd = "VarTest", args = {{falseConditions = {"Var30"}}}},
        {
            {cmd = "Dialog", args = {"献帝", "终于脱险了……。"}},
            {cmd = "FaceToFace", args = {"献帝", "曹操"}},
            {
                {cmd = "VarTest", args = {{trueConditions = {"Var2"}}}},
                {cmd = "Dialog", args = {"献帝", "曹操这一仗打得真漂亮！"}},
                {cmd = "Dialog", args = {"献帝", "他简直就是为了战斗而生的！"}},
                {cmd = "Dialog", args = {"献帝", "也许救我不过是他出战的借口……。"}},
                {cmd = "Dialog", args = {"献帝", "不过他救了我也是事实…"}},
                {cmd = "Dialog", args = {"献帝", "我得感谢他才行……。"}},
                {cmd = "Dialog", args = {"献帝", "就把圣者宝剑赏给他吧。"}},
                {cmd = "FaceToFace", args = {"曹操", "献帝"}},
                {cmd = "AddItem", args = {"圣者宝剑", 0}},
                {cmd = "GeneralsDisappear", args = {{"friend"}, 1, 1, 20, 20}},
                {cmd = "Dialog", args = {"曹操", "献帝平安脱险了，这下可以全心作战了。"}},
            },
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var2"}}}},
                {cmd = "AllGeneralsRecover"},
                {cmd = "Dialog", args = {"献帝", "这一切全是曹操的功劳…"}},
                {cmd = "Dialog", args = {"献帝", "朕必须重赏才行。"}},
                {cmd = "Dialog", args = {"献帝", "就赏赐一件黄金铠吧。"}},
                {cmd = "AddItem", args = {"黄金铠", 0}},
                {cmd = "GeneralsDisappear", args = {{"friend"}, 1, 1, 20, 20}},
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "献帝已经平安脱险了…"}},
                {cmd = "Dialog", args = {"曹操", "好，不用理会敌人的残兵了。"}},
                {cmd = "Dialog", args = {"曹操", "全军撤退！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
                {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
                {cmd = "BattleOver"},
                {cmd = "VarSet", args = {"Var0", true}},
                {cmd = "VarSet", args = {"Var100", true}},
                {cmd = "VarSet", args = {"Var609", true}},
            },
            {cmd = "VarSet", args = {"Var30", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "献帝", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var40"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "献帝"}},
            {cmd = "FaceToFace", args = {"献帝", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "陛下，您龙体无恙吧？"}},
            {cmd = "Dialog", args = {"曹操", "往后臣会保护陛下的，请放心。"}},
            {cmd = "Dialog", args = {"献帝", "哦，你就是曹操？"}},
            {cmd = "Dialog", args = {"献帝", "爱卿在危急之时救了朕，朕非常感谢爱卿的一片忠心。"}},
            {cmd = "Dialog", args = {"曹操", "（嗯，接下来该怎么办呢……。）"}},
            {cmd = "ChoiceDialog", args = {"曹操", {"护送献帝一行", "歼灭所有敌军"}}},
            {
                {cmd = "Dialog", args = {"曹操", "往后就由我保护陛下吧。"}},
                {cmd = "Dialog", args = {"曹操", "来，这边请！"}},
                {cmd = "Dialog", args = {"献帝", "有劳你了，爱卿。"}},
                {cmd = "Dialog", args = {"曹操", "这是臣的荣幸。"}},
            },
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "现在我们要把敌人全部消灭。"}},
                {cmd = "Dialog", args = {"曹操", "全军突击！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
                {cmd = "Dialog", args = {"献帝", "朕……朕该如何是好？"}},
                {cmd = "Dialog", args = {"曹操", "请放心，臣不会放走一个敌人的，请陛下慢走。"}},
                {cmd = "Dialog", args = {"献帝", "……。"}},
                {cmd = "BattleWinCondition", args = {"胜利条件\n一、歼灭所有敌军。\n\n失败条件\n一、献帝被敌军俘获。\n二、曹操死亡。\n三、回合数超过20。"}},
                {cmd = "ShowBattleWinCondition", args = {"歼灭所有敌军！"}},
                {cmd = "VarSet", args = {"Var2", true}},
            },
            {cmd = "VarSet", args = {"Var40", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "郭汜", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var41"}}}},
        {
            {cmd = "FaceToFace", args = {"郭汜", "曹操"}},
            {cmd = "FaceToFace", args = {"曹操", "郭汜"}},
            {cmd = "Dialog", args = {"郭汜", "咱们终于又见面了！"}},
            {cmd = "Dialog", args = {"郭汜", "我要报汜水关之仇！"}},
            {cmd = "Dialog", args = {"曹操", "我是奉旨营救天子的官军，你们才是名副其实的反贼！"}},
            {cmd = "Dialog", args = {"曹操", "老老实实投降，饶你不死。"}},
            {cmd = "Dialog", args = {"郭汜", "你少胡扯！你跟我都是一丘之貉。"}},
            {cmd = "VarSet", args = {"Var41", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "李傕", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var42"}}}},
        {
            {cmd = "FaceToFace", args = {"李傕", "曹操"}},
            {cmd = "FaceToFace", args = {"曹操", "李傕"}},
            {cmd = "Dialog", args = {"李傕", "我的天子……我的天下……！"}},
            {cmd = "Dialog", args = {"李傕", "曹操！老老实实交出皇帝，我就饶了你的狗命。"}},
            {cmd = "Dialog", args = {"曹操", "你以为夺走天子，就能独霸天下吗？"}},
            {cmd = "Dialog", args = {"曹操", "你的短见会让你丢掉性命的。"}},
            {cmd = "Dialog", args = {"李傕", "可恶！"}},
            {cmd = "VarSet", args = {"Var42", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "徐晃", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var43"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "徐晃"}},
            {cmd = "FaceToFace", args = {"徐晃", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "护送天子可是一件苦差事呢。"}},
            {cmd = "Dialog", args = {"曹操", "哈哈哈！"}},
            {cmd = "Dialog", args = {"徐晃", "少喽嗦！"}},
            {cmd = "Dialog", args = {"徐晃", "怎么能把天子交给你这种……"}},
            {cmd = "Dialog", args = {"徐晃", "居心不良的人。"}},
            {cmd = "Dialog", args = {"曹操", "你们这帮满脑子只有私利的人，是不知道如何利用天子的！"}},
            {cmd = "Dialog", args = {"曹操", "我若能奉迎天子，就能为天下百姓造福。"}},
            {cmd = "Dialog", args = {"曹操", "你还是乖乖退下吧！"}},
            {cmd = "Dialog", args = {"徐晃", "我才不信你的鬼话。"}},
            {cmd = "VarSet", args = {"Var43", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"献帝", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var50"}}}},
        {
            {cmd = "Dialog", args = {"献帝", "啊……难道朕又要落难了吗……？"}},
            {cmd = "VarSet", args = {"Var50", true}},
            {cmd = "Tip", args = {"曹操没能救出献帝。"}},
            {cmd = "BattleOver"},
            {cmd = "BattleLose"},
            {cmd = "VarSet", args = {"Var1", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"徐晃", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var51"}}}},
        {
            {cmd = "Dialog", args = {"徐晃", "只希望曹操不要像李傕、郭汜那样藐视天子……。"}},
            {cmd = "Dialog", args = {"徐晃", "撤退！"}},
            {cmd = "GeneralRetreat", args = {"徐晃", false}},
            {cmd = "VarSet", args = {"Var51", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"李傕", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
        {
            {cmd = "Dialog", args = {"李傕", "撤、撤退！"}},
            {cmd = "Dialog", args = {"李傕", "可恨！天子一逃，我就控制不了诸侯了。"}},
            {cmd = "Dialog", args = {"李傕", "难道我就这么完了吗？"}},
            {cmd = "GeneralRetreat", args = {"李傕", false}},
            {cmd = "VarSet", args = {"Var52", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"郭汜", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var53"}}}},
        {
            {cmd = "Dialog", args = {"郭汜", "三十六计走为上策，回长安重整旗鼓吧。"}},
            {cmd = "GeneralRetreat", args = {"郭汜", false}},
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
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var30"}}}},
                {cmd = "Dialog", args = {"献帝", "总算脱险了……。"}},
                {
                    {cmd = "VarTest", args = {{trueConditions = {"Var2"}}}},
                    {cmd = "Dialog", args = {"献帝", "曹操这一仗打得真漂亮！"}},
                    {cmd = "Dialog", args = {"献帝", "他简直就是为了战斗而生的！"}},
                    {cmd = "Dialog", args = {"献帝", "也许救我不过是他出战的借口……。"}},
                    {cmd = "Dialog", args = {"献帝", "不过他救了我也是事实…"}},
                    {cmd = "Dialog", args = {"献帝", "我得重赏他才行……。"}},
                    {cmd = "Dialog", args = {"献帝", "就把圣者宝剑赏给他吧。"}},
                    {cmd = "AddItem", args = {"圣者宝剑", 0}},
                },
                {
                    {cmd = "VarTest", args = {{falseConditions = {"Var2"}}}},
                    {cmd = "Dialog", args = {"献帝", "这一切全是曹操的功劳…"}},
                    {cmd = "Dialog", args = {"献帝", "朕必须重赏才行。"}},
                    {cmd = "Dialog", args = {"献帝", "就赏赐一件黄金铠吧。"}},
                    {cmd = "AddItem", args = {"黄金铠", 0}},
                },
                {cmd = "VarSet", args = {"Var30", true}},
            },
            {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var609", true}},
        },
    },
    {
        {cmd = "BattleLoseTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var1"}}}},
        {
            {cmd = "Tip", args = {"曹操败给了董卓旧部。"}},
            {cmd = "BattleOver"},
            {cmd = "BattleLose"},
            {cmd = "VarSet", args = {"Var1", true}},
        },
    },
}

return Plot
