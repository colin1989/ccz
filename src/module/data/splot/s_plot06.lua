local Plot = {}

-- 战斗准备设置
Plot.battlePrepare = {
    battleName   = "濮阳之战",
    maxRounds    = 20,
    mapId        = "6.tmx",
    weatherStart = {"晴", "晴", "阴", "晴", "阴"},
    weatherType  = {"晴"},
    levelAdd     = -2,
    playerGeneralList = {
        {uid = "曹操"},
        {uid = "典韦"},
        {uid = "于禁"},
    },
    enemyGeneralList = {
        {uid = "吕布", aiType = "坚守原地", wuqiId = "方天画戟", shipingId = "赤兔马", levelAdd = 4},
        {uid = "陈宫", aiType = "坚守原地", shipingId = "头巾", levelAdd = 4},
        {uid = "弓骑兵1", aiType = "坚守原地"},
        {uid = "弓骑兵2", aiType = "坚守原地"},
        {uid = "骑兵1", aiType = "坚守原地"},
        {uid = "骑兵2", aiType = "坚守原地"},
        {uid = "骑兵3", aiType = "坚守原地"},
        {uid = "骑兵4", aiType = "坚守原地"},
        {uid = "骑兵5", aiType = "坚守原地"},
        {uid = "骑兵6", aiType = "坚守原地"},
        {uid = "骑兵7", aiType = "坚守原地"},
        {uid = "骑兵8", aiType = "坚守原地"},
        {uid = "骑兵9", aiType = "坚守原地"},
        {uid = "骑兵10", aiType = "坚守原地"},
        {uid = "骑兵11", aiType = "坚守原地"},
        {uid = "骑兵12", aiType = "坚守原地"},
        {uid = "弓骑兵3", aiType = "坚守原地"},
        {uid = "弓骑兵4", aiType = "坚守原地"},
        {uid = "弓骑兵5", aiType = "坚守原地"},
        {uid = "弓骑兵6", aiType = "坚守原地"},
        {uid = "步兵1", aiType = "坚守原地"},
        {uid = "步兵2", aiType = "坚守原地"},
        {uid = "步兵3", aiType = "坚守原地"},
        {uid = "步兵4", aiType = "坚守原地"},
        {uid = "弓兵1", aiType = "坚守原地"},
        {uid = "弓兵2", aiType = "坚守原地"},
        {uid = "弓兵3", aiType = "坚守原地"},
        {uid = "弓兵4", aiType = "坚守原地"},
        {uid = "张辽", aiType = "被动出击", levelAdd = 4},
        {uid = "骑兵13", aiType = "被动出击"},
        {uid = "骑兵14", aiType = "被动出击"},
        {uid = "骑兵15", aiType = "被动出击"},
        {uid = "弓骑兵7", aiType = "被动出击"},
        {uid = "弓骑兵8", aiType = "被动出击"},
        {uid = "臧霸", aiType = "被动出击", shipingId = "没羽箭", levelAdd = 2},
        {uid = "弓骑兵9", aiType = "被动出击"},
        {uid = "弓骑兵10", aiType = "被动出击"},
    },
}

Plot.battleStartPlot = {
    {cmd = "PlayMusic", args = {"Track5"}},
    {
        {cmd = "FaceToFace", args = {"吕布", "曹操"}},
        {cmd = "Dialog", args = {"吕布", "曹操，多日不见了。"}},
        {cmd = "Dialog", args = {"吕布", "这也是乱世中习以为常的事，请你不要见怪！"}},
        {cmd = "GeneralAction", args = {"典韦", "doubleAttack"}},
        {cmd = "Dialog", args = {"典韦", "休走！"}},
        {cmd = "Dialog", args = {"典韦", "看我来取你狗命。"}},
        {cmd = "GeneralAction", args = {"典韦", "stand"}},
        {cmd = "Dialog", args = {"曹操", "（想不到吕布会发兵…\n难道不该去打徐州吗……？）"}},
        {cmd = "Dialog", args = {"曹操", "（打仗不能掺入私人恩怨…\n这件事我得铭记在心。）"}},
        {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
        {cmd = "Dialog", args = {"曹操", "好，全军进攻。"}},
        {cmd = "GeneralAction", args = {"曹操", "stand"}},
    },
    {cmd = "BattleWinCondition", args = {"胜利条件\n一、歼灭所有敌军。\n\n失败条件\n一、曹操死亡。\n二、回合数超过20。"}},
    {cmd = "ShowBattleWinCondition", args = {"歼灭所有敌军！"}},
    {cmd = "VarSet", args = {"Var506", true}},
    {cmd = "ShowMenu", args = {true}},
}

Plot.battleMiddlePlot = {
    {
        {cmd = "RoundsTest", args = {3, "="}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var10"}}}},
        {
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var6", "Var7", "Var52", "Var53"}}}},
                {cmd = "FaceToFace", args = {"张辽", "曹操"}},
                {cmd = "GeneralAction", args = {"张辽", "attack"}},
                {cmd = "Dialog", args = {"张辽", "臧霸！开始夹攻，打垮曹军！"}},
                {cmd = "GeneralAction", args = {"张辽", "stand"}},
                {cmd = "FaceToFace", args = {"臧霸", "曹操"}},
                {cmd = "GeneralAction", args = {"臧霸", "attack"}},
                {cmd = "Dialog", args = {"臧霸", "好！全军突击！"}},
                {cmd = "Dialog", args = {"臧霸", "只要我臧霸出马，我军必胜无疑！"}},
                {cmd = "Dialog", args = {"臧霸", "曹军这下可完了，哈哈哈。"}},
                {cmd = "GeneralAction", args = {"臧霸", "stand"}},
            },
            {
                {cmd = "GeneralAiChange", args = {"张辽", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"臧霸", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵10", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵5", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵6", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵7", "主动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵8", "主动出击", "无", 1, 1}},
            },
            {cmd = "VarSet", args = {"Var6", true}},
            {cmd = "VarSet", args = {"Var7", true}},
            {cmd = "VarSet", args = {"Var10", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {4, "="}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var11", "Var30", "Var50", "Var51"}}}},
        {
            {cmd = "FaceToFace", args = {"陈宫", "吕布"}},
            {cmd = "Dialog", args = {"陈宫", "吕将军，是时候了。"}},
            {cmd = "Dialog", args = {"陈宫", "请下令由第一阵进行攻击。"}},
            {cmd = "FaceToFace", args = {"吕布", "陈宫"}},
            {cmd = "Dialog", args = {"吕布", "嗯。看来我也该出战了吧？"}},
            {cmd = "Dialog", args = {"陈宫", "吕将军只要坐镇此地即可。"}},
            {cmd = "Dialog", args = {"陈宫", "这一仗务必要让曹操………"}},
            {cmd = "Dialog", args = {"陈宫", "对我军的武勇和智谋留下深刻印象。"}},
            {cmd = "Dialog", args = {"吕布", "为什么？"}},
            {cmd = "Dialog", args = {"陈宫", "当今的乱世呈现诸侯割据的格局，若只能与一个国家作战，是无法生存的。"}},
            {cmd = "Dialog", args = {"陈宫", "如果我们能够展现强大的战力，将来也有利于外交方面的进展，我的目的也就在于此。"}},
            {cmd = "Dialog", args = {"吕布", "原来如此！"}},
            {cmd = "Dialog", args = {"吕布", "那么此地就托付给你了，充分发挥你的才智吧。"}},
            {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
            {cmd = "FaceToFace", args = {"吕布", "曹操"}},
            {cmd = "GeneralAction", args = {"陈宫", "prepareAttack"}},
            {cmd = "Dialog", args = {"陈宫", "第一阵，转变攻势！"}},
            {cmd = "GeneralAction", args = {"陈宫", "stand"}},
            {cmd = "GeneralAiChange", args = {"骑兵1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var11", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {6, "="}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var12", "Var30", "Var50", "Var51"}}}},
        {
            {cmd = "Dialog", args = {"陈宫", "第二阵开始出击。"}},
            {cmd = "GeneralAction", args = {"吕布", "attack"}},
            {cmd = "Dialog", args = {"吕布", "好极了！也让守兵一起追剿曹操。"}},
            {cmd = "Dialog", args = {"吕布", "步兵队、弓兵队出击！"}},
            {cmd = "GeneralAction", args = {"吕布", "stand"}},
            {cmd = "GeneralAiChange", args = {"步兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵10", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵11", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵12", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵6", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var12", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {8, "="}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var13", "Var30", "Var50", "Var51"}}}},
        {
            {cmd = "FaceToFace", args = {"陈宫", "吕布"}},
            {cmd = "Dialog", args = {"陈宫", "吕将军，请你出击吧。"}},
            {cmd = "Dialog", args = {"陈宫", "给疲惫不堪的曹军最后一击！"}},
            {cmd = "GeneralAction", args = {"吕布", "doubleAttack"}},
            {cmd = "GeneralAction", args = {"吕布", "prepareAttack"}},
            {cmd = "Dialog", args = {"吕布", "嗯！我一定取下曹操首级。"}},
            {cmd = "Dialog", args = {"吕布", "众将士听令，全军冲锋！"}},
            {cmd = "Dialog", args = {"陈宫", "吕将军，别忘了你已经是一国之君，万万不可逞强。"}},
            {cmd = "Dialog", args = {"吕布", "我知道，为了貂蝉我可不能死。"}},
            {cmd = "Dialog", args = {"吕布", "我一定要在这个乱世生存下去！"}},
            {cmd = "GeneralAction", args = {"吕布", "stand"}},
            {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
            {cmd = "RangeGeneralsAiChange", args = {{"enemy"}, 17, 15, 24, 20, "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var13", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {7, ">="}},
        {cmd = "RoundsTest", args = {10, "<"}},
        {cmd = "GeneralCountsTest", args = {{"player"}, 10, "<", "整个战场", 1, 1, 1, 1}},
        {cmd = "GeneralCountsTest", args = {{"enemy"}, 9, ">=", "整个战场", 1, 1, 1, 1}},
        {cmd = "VarTest", args = {{falseConditions = {"Var14", "Var50", "Var51"}}}},
        {
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var54"}}}},
                {cmd = "GeneralAction", args = {"典韦", "weak"}},
                {cmd = "FaceToFace", args = {"典韦", "曹操"}},
                {cmd = "FaceToFace", args = {"于禁", "曹操"}},
                {cmd = "Dialog", args = {"典韦", "嗯嗯，形势不妙，主公，暂时撤军吧，不能再撑下去了。"}},
                {cmd = "Dialog", args = {"于禁", "主公，我也赞成典韦将军的意见，想要攻下此城，还需要做更充分的准备。"}},
            },
            {
                {cmd = "Else"},
                {cmd = "Dialog", args = {"曹操", "这样下去真的不利我军吗？"}},
                {cmd = "Dialog", args = {"曹操", "是该暂时撤退？还是继续进攻呢……？"}},
            },
            {cmd = "ChoiceDialog", args = {"曹操", {"撤退", "继续攻打濮阳"}}},
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "全军撤退！"}},
                {cmd = "Dialog", args = {"曹操", "退兵后再重整旗鼓！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
                {cmd = "BattleWinCondition", args = {"胜利条件\n一、曹操到达北端。\n二、歼灭所有敌军。\n\n失败条件\n一、曹操死亡。\n二、回合数超过20。"}},
                {cmd = "ShowBattleWinCondition", args = {"曹操逃走！"}},
                {cmd = "HighlightRange", args = {1, 1, 6, 1, false}},
                {cmd = "VarSet", args = {"Var2", true}},
                {cmd = "FaceToFace", args = {"陈宫", "吕布"}},
                {cmd = "Dialog", args = {"陈宫", "不可轻易放走敌人，全军追击曹操。"}},
                {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
                {cmd = "FaceToFace", args = {"吕布", "曹操"}},
                {cmd = "GeneralAction", args = {"吕布", "attack"}},
                {cmd = "Dialog", args = {"吕布", "嗯！追击曹操，绝对不能让他跑了！"}},
                {cmd = "GeneralAction", args = {"吕布", "stand"}},
                {cmd = "RangeGeneralsAiChange", args = {{"enemy"}, 1, 1, 28, 24, "攻击武将", "曹操", 1, 1}},
            },
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "用这些兵马对付小儿吕布，已经绰绰有余了！"}},
                {cmd = "Dialog", args = {"曹操", "大伙儿打起精神来！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
            },
            {cmd = "VarSet", args = {"Var14", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {10, "="}},
        {cmd = "VarTest", args = {{trueConditions = {"Var13"}, falseConditions = {"Var14", "Var15", "Var50", "Var51"}}}},
        {
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var54"}}}},
                {cmd = "GeneralAction", args = {"典韦", "weak"}},
                {cmd = "FaceToFace", args = {"典韦", "曹操"}},
                {cmd = "FaceToFace", args = {"于禁", "曹操"}},
                {cmd = "Dialog", args = {"典韦", "嗯嗯，形势不妙，主公，暂时撤军吧，不能再撑下去了。"}},
                {cmd = "Dialog", args = {"于禁", "主公，我也赞成典韦将军的意见，想要攻下此城，还需要做更充分的准备。"}},
            },
            {
                {cmd = "Else"},
                {cmd = "Dialog", args = {"曹操", "这样下去真的不利我军吗？"}},
                {cmd = "Dialog", args = {"曹操", "我该暂时撤退？还是继续进攻呢……？"}},
            },
            {cmd = "ChoiceDialog", args = {"曹操", {"撤退", "继续攻打濮阳"}}},
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "全军撤退！"}},
                {cmd = "Dialog", args = {"曹操", "退兵后再重整旗鼓！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
                {cmd = "BattleWinCondition", args = {"胜利条件\n一、曹操到达北端。\n二、歼灭所有敌军。\n\n失败条件\n一、曹操死亡。\n二、回合数超过20。"}},
                {cmd = "ShowBattleWinCondition", args = {"曹操逃走！"}},
                {cmd = "HighlightRange", args = {1, 1, 6, 1, false}},
                {cmd = "VarSet", args = {"Var2", true}},
                {cmd = "FaceToFace", args = {"陈宫", "吕布"}},
                {cmd = "Dialog", args = {"陈宫", "不可轻易放走敌人，全军追击曹操。"}},
                {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
                {cmd = "FaceToFace", args = {"吕布", "曹操"}},
                {cmd = "GeneralAction", args = {"吕布", "attack"}},
                {cmd = "Dialog", args = {"吕布", "嗯！追击曹操，绝对不能让他跑了！"}},
                {cmd = "GeneralAction", args = {"吕布", "stand"}},
                {cmd = "RangeGeneralsAiChange", args = {{"enemy"}, 1, 1, 28, 24, "攻击武将", "曹操", 1, 1}},
            },
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "用这些兵马对付小儿吕布，已经绰绰有余了！"}},
                {cmd = "Dialog", args = {"曹操", "大伙儿打起精神来！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
            },
            {cmd = "VarSet", args = {"Var15", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {12, ">="}},
        {cmd = "GeneralCountsTest", args = {{"player"}, 8, "<", "整个战场", 1, 1, 1, 1}},
        {cmd = "GeneralCountsTest", args = {{"enemy"}, 7, ">=", "整个战场", 1, 1, 1, 1}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var16"}}}},
        {
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var54"}}}},
                {cmd = "GeneralAction", args = {"典韦", "weak"}},
                {cmd = "FaceToFace", args = {"典韦", "曹操"}},
                {cmd = "Dialog", args = {"典韦", "嗯嗯，形势不妙，主公，暂时撤军吧，不能再撑下去了。"}},
            },
            {
                {cmd = "Else"},
                {cmd = "Dialog", args = {"曹操", "战况吃紧，是该暂时撤退？还是继续进攻呢……？"}},
            },
            {cmd = "ChoiceDialog", args = {"曹操", {"撤退", "继续攻打濮阳"}}},
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "全军撤退！回去再重整旗鼓！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
                {cmd = "BattleWinCondition", args = {"胜利条件\n一、曹操到达北端。\n二、歼灭所有敌军。\n\n失败条件\n一、曹操死亡。\n二、回合数超过20。"}},
                {cmd = "ShowBattleWinCondition", args = {"曹操逃走！"}},
                {cmd = "HighlightRange", args = {1, 1, 6, 1, false}},
                {cmd = "VarSet", args = {"Var2", true}},
                {
                    {cmd = "VarTest", args = {{falseConditions = {"Var50", "Var51"}}}},
                    {cmd = "FaceToFace", args = {"陈宫", "吕布"}},
                    {cmd = "Dialog", args = {"陈宫", "不可轻易放走敌人，全军追击曹操。"}},
                    {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
                    {cmd = "FaceToFace", args = {"吕布", "曹操"}},
                    {cmd = "GeneralAction", args = {"吕布", "attack"}},
                    {cmd = "Dialog", args = {"吕布", "嗯！追击曹操，绝对不能让他跑了！"}},
                    {cmd = "GeneralAction", args = {"吕布", "stand"}},
                },
                {cmd = "RangeGeneralsAiChange", args = {{"enemy"}, 1, 1, 28, 24, "攻击武将", "曹操", 1, 1}},
            },
            {
                {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
                {cmd = "Dialog", args = {"曹操", "用这些兵马对付小儿吕布，已经绰绰有余了！"}},
                {cmd = "Dialog", args = {"曹操", "大伙儿打起精神来！"}},
                {cmd = "GeneralAction", args = {"曹操", "stand"}},
            },
            {cmd = "VarSet", args = {"Var16", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 19, 18}},
        {cmd = "VarTest", args = {{falseConditions = {"Var20"}}}},
        {
            {cmd = "AddItem", args = {"膏药", 0}},
            {cmd = "VarSet", args = {"Var20", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 19, 17}},
        {cmd = "VarTest", args = {{falseConditions = {"Var21"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var21", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 20, 17}},
        {cmd = "VarTest", args = {{falseConditions = {"Var22"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var22", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 21, 17}},
        {cmd = "VarTest", args = {{falseConditions = {"Var23"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var23", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 5, 17}},
        {cmd = "VarTest", args = {{falseConditions = {"Var24"}}}},
        {
            {cmd = "AddItem", args = {"恢复用豆", 0}},
            {cmd = "VarSet", args = {"Var24", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 20, 18}},
        {cmd = "VarTest", args = {{falseConditions = {"Var25"}}}},
        {
            {cmd = "AddItem", args = {"恢复用米", 0}},
            {cmd = "VarSet", args = {"Var25", true}},
        },
    },
    {
        {cmd = "GeneralCountsTest", args = {{"player"}, 6, ">=", "指定区域", 9, 1, 28, 6}},
        {cmd = "GeneralCountsTest", args = {{"enemy"}, 6, "=", "指定区域", 4, 16, 6, 17}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var6"}}}},
        {
            {cmd = "GeneralAction", args = {"张辽", "prepareAttack"}},
            {cmd = "Dialog", args = {"张辽", "我的目的是扰乱曹军，迅速接近曹军，削弱其战斗力！"}},
            {cmd = "Dialog", args = {"张辽", "大家冲啊！"}},
            {cmd = "GeneralAction", args = {"张辽", "stand"}},
            {cmd = "GeneralAiChange", args = {"张辽", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"臧霸", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵10", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var6", true}},
        },
    },
    {
        {cmd = "GeneralCountsTest", args = {{"player"}, 6, ">=", "指定区域", 1, 8, 8, 24}},
        {cmd = "GeneralCountsTest", args = {{"enemy"}, 6, "=", "指定区域", 17, 3, 18, 5}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var7"}}}},
        {
            {cmd = "GeneralAction", args = {"臧霸", "prepareAttack"}},
            {cmd = "Dialog", args = {"臧霸", "好机会。出战了！"}},
            {cmd = "Dialog", args = {"臧霸", "杀了曹操，我臧霸就立了大功！"}},
            {cmd = "Dialog", args = {"臧霸", "哈哈哈。"}},
            {cmd = "GeneralAction", args = {"臧霸", "stand"}},
            {cmd = "GeneralAiChange", args = {"臧霸", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵10", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"张辽", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var7", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {{"player", "friend"}, 9, 7, 28, 24}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var12", "Var30"}}}},
        {
            {cmd = "GeneralAction", args = {"陈宫", "dizzy"}},
            {cmd = "GeneralAction", args = {"陈宫", "prepareAttack"}},
            {cmd = "Dialog", args = {"陈宫", "城门失守就不好办了，加强城门的防守，其他城门都要加强防守！"}},
            {cmd = "GeneralAction", args = {"陈宫", "stand"}},
            {cmd = "GeneralAiChange", args = {"张辽", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"臧霸", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵8", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵10", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵6", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵7", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵8", "主动出击", "无", 1, 1}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var11"}}}},
                {cmd = "GeneralAiChange", args = {"骑兵1", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵2", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵3", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"骑兵4", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵1", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵2", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵3", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓骑兵4", "被动出击", "无", 1, 1}},
            },
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var12"}}}},
                {cmd = "GeneralAiChange", args = {"步兵9", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"步兵10", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"步兵11", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"步兵12", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓兵3", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓兵4", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓兵5", "被动出击", "无", 1, 1}},
                {cmd = "GeneralAiChange", args = {"弓兵6", "被动出击", "无", 1, 1}},
            },
            {cmd = "VarSet", args = {"Var30", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {{"player", "friend"}, 14, 12, 27, 23}},
        {cmd = "SideTest", args = {"敌军阶段"}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var13", "Var31"}}}},
        {
            {cmd = "GeneralAction", args = {"吕布", "prepareAttack"}},
            {cmd = "Dialog", args = {"吕布", "真不中用……！"}},
            {cmd = "Dialog", args = {"吕布", "敌人都已经到跟前了！"}},
            {cmd = "Dialog", args = {"吕布", "我要杀出去。"}},
            {cmd = "GeneralAction", args = {"吕布", "stand"}},
            {cmd = "RangeGeneralsAiChange", args = {{"enemy"}, 17, 15, 24, 20, "被动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵1", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵2", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓骑兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵9", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵10", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵11", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"步兵12", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵3", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵4", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵5", "主动出击", "无", 1, 1}},
            {cmd = "GeneralAiChange", args = {"弓兵6", "主动出击", "无", 1, 1}},
            {cmd = "VarSet", args = {"Var31", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {"曹操", 1, 1, 6, 1}},
        {cmd = "VarTest", args = {{trueConditions = {"Var2"}, falseConditions = {"Var32"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"曹操", "呼，总算脱险了！"}},
            {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var32", true}},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var100", true}},
            {cmd = "VarSet", args = {"Var606", true}},
            {cmd = "VarSet", args = {"Var706", false}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "吕布", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var40"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "吕布"}},
            {cmd = "FaceToFace", args = {"吕布", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "想不到吕布也有临机应变的能力，真是值得称赞。"}},
            {cmd = "Dialog", args = {"吕布", "立身于乱世的，可不是只有你一个！"}},
            {cmd = "Dialog", args = {"吕布", "你别太自负了！"}},
            {cmd = "VarSet", args = {"Var40", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"典韦", "张辽", true}},
        {cmd = "VarTest", args = {{falseConditions = {"Var41"}}}},
        {
            {cmd = "FaceToFace", args = {"张辽", "典韦"}},
            {cmd = "FaceToFace", args = {"典韦", "张辽"}},
            {cmd = "Dialog", args = {"张辽", "我没空陪你玩！快点闪开。"}},
            {cmd = "Dialog", args = {"典韦", "少废话！有我在，你休想碰我主公一根汗毛！"}},
            {
                {cmd = "PkPrepare", args = {"典韦", "张辽"}},
                {cmd = "PkGeneralShow", args = {false, "我乃典韦。\n你这个不知我家主公厉害的混蛋，\n快报上名来！", "攻击"}},
                {cmd = "PkGeneralShow", args = {true, "只怕报上我的姓名，你会吓破胆的！\n我乃张辽张文远是也！\n再说一遍，快闪开！", "攻击预备"}},
                {cmd = "PkGeneralAction", args = {false, "防御"}},
                {cmd = "PkShowDialog", args = {false, "我拼着一死也要保护主公，\n你想过去，就得先打倒我！", true}},
                {cmd = "PkGeneralAction", args = {true, "攻击"}},
                {cmd = "PkShowDialog", args = {true, "嗯嗯！既然如此，我就先杀了你！", true}},
                {cmd = "PkShowStart"},
                {cmd = "PkGeneralAction", args = {false, "无"}},
                {cmd = "PkGeneralAction", args = {true, "前移"}},
                {cmd = "PkGeneralAttack2", args = {true, "格挡", true}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "移动攻击", false}},
                {cmd = "Delay", args = {5}},
                {cmd = "PkGeneralAction", args = {false, "后转"}},
                {cmd = "PkShowDialog", args = {false, "啊？！不管用！", true}},
                {cmd = "PkGeneralAction", args = {true, "后转"}},
                {cmd = "PkShowDialog", args = {true, "嗯嗯！", true}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {false, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack2", args = {true, "后退", false}},
                {cmd = "PkGeneralAction", args = {true, "前移"}},
                {cmd = "PkGeneralAttack2", args = {true, "格挡", true}},
                {cmd = "PkGeneralAttack", args = {false, "原地攻击", false}},
                {cmd = "PkGeneralAttack2", args = {false, "闪躲绕前", false}},
                {cmd = "PkGeneralAction", args = {false, "后转"}},
                {cmd = "PkGeneralAttack2", args = {true, "后退", false}},
                {cmd = "PkGeneralAction", args = {false, "前移"}},
                {cmd = "PkGeneralAttack", args = {false, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {true, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {false, "原地攻击", false}},
                {cmd = "PkGeneralAttack", args = {false, "原地攻击", false}},
                {cmd = "PkGeneralAttack2", args = {true, "格档后退", false}},
                {cmd = "Delay", args = {10}},
                {cmd = "PkGeneralAction", args = {false, "攻击预备"}},
                {cmd = "Delay", args = {10}},
                {cmd = "PkGeneralAction", args = {true, "攻击预备"}},
                {cmd = "Delay", args = {10}},
                {cmd = "PkShowDialog", args = {false, "（天底下何其之大！\n竟然还有如此强劲的对手！）", true}},
                {cmd = "PkShowDialog", args = {true, "（原来……这就是曹军的战斗力。\n这恶来典韦比传闻中更勇猛。）", true}},
                {cmd = "PkOver"},
            },
            {cmd = "VarSet", args = {"Var41", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"典韦", "臧霸", true}},
        {cmd = "VarTest", args = {{falseConditions = {"Var42"}}}},
        {
            {cmd = "FaceToFace", args = {"臧霸", "典韦"}},
            {cmd = "FaceToFace", args = {"典韦", "臧霸"}},
            {cmd = "Dialog", args = {"臧霸", "喂，就是你，曹操在哪？"}},
            {cmd = "Dialog", args = {"典韦", "你算什么东西？"}},
            {cmd = "Dialog", args = {"典韦", "竟然一副趾高气昂的德性！"}},
            {cmd = "Dialog", args = {"典韦", "你想知道，得先打败我再说。"}},
            {cmd = "GeneralAction", args = {"典韦", "attack"}},
            {cmd = "GeneralAction", args = {"典韦", "stand"}},
            {cmd = "GeneralAction", args = {"臧霸", "hurt"}},
            {cmd = "PlaySound", args = {"Se35.wav", 1}},
            {cmd = "Delay", args = {10}},
            {cmd = "GeneralAction", args = {"臧霸", "circle"}},
            {cmd = "GeneralAction", args = {"臧霸", "weak"}},
            {cmd = "Dialog", args = {"典韦", "怎么……你只会耍嘴皮子？"}},
            {cmd = "Dialog", args = {"臧霸", "你说什么？好疼……！"}},
            {cmd = "Dialog", args = {"臧霸", "现在可是我占上风呐……唉哟！"}},
            {cmd = "Dialog", args = {"臧霸", "我明明样样都比你行的……好疼。"}},
            {cmd = "Dialog", args = {"臧霸", "不过，看在同是武将的份上，这次咱们就算打成平手好了。"}},
            {cmd = "Dialog", args = {"臧霸", "唉哟，痛死我啦……。"}},
            {cmd = "VarSet", args = {"Var42", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "陈宫", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var43"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "陈宫"}},
            {cmd = "FaceToFace", args = {"陈宫", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "你就是吕布的军师吗？"}},
            {cmd = "Dialog", args = {"曹操", "你叫什么名字？"}},
            {cmd = "Dialog", args = {"陈宫", "大战之中岂有说长论短之理！"}},
            {cmd = "Dialog", args = {"陈宫", "我是陈宫，字公台。你可要记住我！"}},
            {cmd = "Dialog", args = {"曹操", "陈宫，你的表现十分出色，不如加入我的帐下吧？"}},
            {cmd = "Dialog", args = {"陈宫", "忠臣不仕二主，而且………"}},
            {cmd = "Dialog", args = {"陈宫", "想你也不会起用临阵倒戈的人。"}},
            {cmd = "Dialog", args = {"曹操", "你越是这么说，我越是想用你。"}},
            {cmd = "Dialog", args = {"陈宫", "你真是个危险人物，可惜我的"}},
            {cmd = "Dialog", args = {"陈宫", "心中…………尽是我家主公的身影。"}},
            {cmd = "Dialog", args = {"陈宫", "您还是死心吧。"}},
            {cmd = "VarSet", args = {"Var43", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"吕布", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var50"}}}},
        {
            {cmd = "Dialog", args = {"吕布", "我可不能死，先撤退等下次机会吧。"}},
            {cmd = "Dialog", args = {"吕布", "撤退！"}},
            {cmd = "GeneralRetreat", args = {"吕布", false}},
            {cmd = "VarSet", args = {"Var50", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"陈宫", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var51"}}}},
        {
            {cmd = "Dialog", args = {"陈宫", "情况不妙，看来撤退才是明智之举。"}},
            {cmd = "Dialog", args = {"陈宫", "撤退！"}},
            {cmd = "GeneralRetreat", args = {"陈宫", false}},
            {cmd = "VarSet", args = {"Var51", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"张辽", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
        {
            {cmd = "Dialog", args = {"张辽", "这次我张辽败得太大意了，撤退！"}},
            {cmd = "GeneralRetreat", args = {"张辽", false}},
            {cmd = "VarSet", args = {"Var52", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"臧霸", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var53"}}}},
        {
            {cmd = "Dialog", args = {"臧霸", "可恶，爷爷我本来还想打的，要不是突然有急事的话！"}},
            {cmd = "Dialog", args = {"臧霸", "这次就饶了你们吧，改日再见。"}},
            {cmd = "GeneralRetreat", args = {"臧霸", false}},
            {cmd = "VarSet", args = {"Var53", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"典韦", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var54"}}}},
        {
            {cmd = "Dialog", args = {"典韦", "只会以多欺少太卑鄙了！"}},
            {cmd = "Dialog", args = {"典韦", "是大丈夫的，就跟俺一决胜负！"}},
            {cmd = "Dialog", args = {"典韦", "懦夫！"}},
            {cmd = "ShowPlayerRetreatWords", args = {"典韦", false}},
            {cmd = "GeneralRetreat", args = {"典韦", false}},
            {cmd = "VarSet", args = {"Var54", true}},
        },
    },
    {
        {cmd = "BattleWinTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var0"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"曹操", "很好，总算歼灭了敌人！"}},
            {cmd = "Dialog", args = {"曹操", "我军胜利了！"}},
            {cmd = "BattleExtraItems", args = {0, "李广之弓", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var606", true}},
            {cmd = "VarSet", args = {"Var706", true}},
        },
    },
    {
        {cmd = "BattleLoseTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var1"}}}},
        {
            {cmd = "Tip", args = {"曹操败给了吕布军。"}},
            {cmd = "BattleOver"},
            {cmd = "BattleLose"},
            {cmd = "VarSet", args = {"Var1", true}},
        },
    },
}

return Plot
