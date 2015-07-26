--[[
    转换脚本R_TXT/r_plot26.txt
--]]

local Plot = {
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track18"}},
                {cmd = "Delay", args = {3}},
                {cmd = "ShowMenu", args = {false}},
                {cmd = "LoadBackground", args = {"china"}},
                {cmd = "RSetTitle", args = {"曹操南下"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"夏侯惇", 297, 128, "夏侯惇"}},
                {cmd = "HeadPortraitPlay", args = {"刘备", 233, 172, "刘备"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"曹操的大军被孔明用计打得大败，", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {8}},
                {cmd = "HeadPortraitMove", args = {"夏侯惇", 331, 100}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"夏侯惇只得收拾残兵返回许都。", "不换页", "换行", "等待"}},
                {cmd = "PlayMusic", args = {"无"}},
                {cmd = "LoadBackground", args = {"MMap-49"}},
                {cmd = "HeadChange", args = {10}},
                {cmd = "RolePlay", args = {"曹操", 35, 56, "right", "曹操", 0}},
                {cmd = "RolePlay", args = {"许褚", 53, 71, "up", "许褚", 0}},
                {cmd = "RolePlay", args = {"张辽", 59, 71, "up", "张辽", 0}},
                {cmd = "RolePlay", args = {"徐晃", 65, 71, "up", "徐晃", 0}},
                {cmd = "RolePlay", args = {"荀彧", 53, 41, "down", "荀彧", 0}},
                {cmd = "RolePlay", args = {"贾诩", 59, 41, "down", "贾诩", 0}},
                {cmd = "RolePlay", args = {"荀攸", 65, 41, "down", "荀攸", 0}},
                {cmd = "RolePlay", args = {"程昱", 71, 41, "down", "程昱", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 53, 56, "left", "夏侯惇", 14}},
                {cmd = "RolePlay", args = {"于禁", 59, 53, "left", "于禁", 13}},
                {cmd = "RolePlay", args = {"李典", 59, 59, "left", "李典", 13}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RShowSceneName", args = {"许都  相府"}},
                {cmd = "Dialog", args = {"曹操", "元让，你怎么这般狼狈？"}},
                {cmd = "Dialog", args = {"夏侯惇", "当初我夸下海口，如今大败而返，已经没有面目再见丞相了，请您处置吧。"}},
                {cmd = "Dialog", args = {"曹操", "你是怎么打败的，听说是中了孔明火攻？"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "down", 0}},
                {cmd = "Dialog", args = {"曹操", "狭路须防火攻，你擅长兵法，身经百战，连这个都忘了吗？"}},
                {cmd = "Dialog", args = {"夏侯惇", "我无话可说，但求一死。"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 255}},
                {cmd = "PlayMusic", args = {"Track13"}},
                {cmd = "Delay", args = {3}},
                {
                    {cmd = "ChoiceDialog", args = {"曹操", {"胜败乃兵家常事，这回就原谅你吧。", "败军之将罪当处死，绝对不能轻饶。"}}},
                    {
                        {cmd = "VarSet", args = {"Var310", true}},
                        {cmd = "AddCareerism", args = {"+", 5}},
                        {cmd = "PlayMusic", args = {"无"}},
                        {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "Dialog", args = {"曹操", "元让，回去休息吧。文则、曼成也辛苦了，下去歇息吧。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "孟德…你就这样饶了我吗？"}},
                        {cmd = "Dialog", args = {"曹操", "嗯，胜败乃兵家常事，下次作战你一定要将功抵过。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "如果饶了我，怎么维护军纪呢？还是斩了我吧！！"}},
                        {cmd = "Dialog", args = {"曹操", "你的言行已经维护了军纪，你说是吧，文若？"}},
                        {cmd = "RoleAction", args = {"荀彧", 8}},
                        {cmd = "Dialog", args = {"荀彧", "是的，正如主公所言。"}},
                        {cmd = "RoleAction", args = {"荀彧", 0}},
                        {cmd = "Dialog", args = {"夏侯惇", "………"}},
                        {cmd = "Dialog", args = {"曹操", "你已经维护了军纪。身为武将，今后在战场上雪耻吧。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "可是………"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "left", 0}},
                        {cmd = "Dialog", args = {"曹操", "元让，不会让你白死的。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "……是。"}},
                        {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                        {cmd = "Dialog", args = {"曹操", "好了！你们三个下去休息吧。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "是。"}},
                        {cmd = "Dialog", args = {"于禁", "是。"}},
                        {cmd = "Dialog", args = {"李典", "是。"}},
                    },
                    {
                        {cmd = "VarSet", args = {"Var310", false}},
                        {cmd = "AddCareerism", args = {"-", 5}},
                        {cmd = "PlayMusic", args = {"无"}},
                        {cmd = "PlaySound", args = {"Se_e_01.wav", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "Dialog", args = {"曹操", "元让，你说的对。这次大败的确不可饶恕。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "是……"}},
                        {cmd = "RoleAction", args = {"曹操", 19}},
                        {cmd = "Dialog", args = {"曹操", "好！按军法处置。将夏侯惇斩首！！"}},
                        {cmd = "RoleAction", args = {"许褚", 5}},
                        {cmd = "Dialog", args = {"许褚", "！！"}},
                        {cmd = "RoleAction", args = {"张辽", 8}},
                        {cmd = "Dialog", args = {"张辽", "什么！！"}},
                        {cmd = "RoleAction", args = {"荀彧", 8}},
                        {cmd = "Dialog", args = {"荀彧", "主公且慢。"}},
                        {cmd = "RoleAction", args = {"许褚", 0}},
                        {cmd = "RoleAction", args = {"张辽", 0}},
                        {cmd = "Delay", args = {3}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "Dialog", args = {"曹操", "什么事，文若？"}},
                        {cmd = "Dialog", args = {"荀彧", "主公，夏侯将军的确犯下大罪，但求您赦免将军的死罪。"}},
                        {cmd = "RoleAction", args = {"曹操", 4}},
                        {cmd = "HeadChange", args = {2}},
                        {cmd = "Dialog", args = {"曹操", "不行！这样如何能够严明军纪？"}},
                        {cmd = "Dialog", args = {"荀彧", "将军这份宁死的决心，已经严明了军纪，但求主公免其死罪。"}},
                        {cmd = "RoleAction", args = {"张辽", 8}},
                        {cmd = "Dialog", args = {"张辽", "末将也为将军求情，我军怎可缺少夏侯将军这样的大将！"}},
                        {cmd = "RoleAction", args = {"徐晃", 8}},
                        {cmd = "Dialog", args = {"徐晃", "但求主公务必饶了夏侯将军。"}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "HeadChange", args = {0}},
                        {cmd = "Dialog", args = {"曹操", "嗯，好吧。既然你们这样为他求情，就先饶他一次。"}},
                        {cmd = "RoleAction", args = {"曹操", 19}},
                        {cmd = "Dialog", args = {"曹操", "不过，元让，下次作战一定要洗雪今日之耻！"}},
                        {cmd = "Dialog", args = {"夏侯惇", "……是！"}},
                        {cmd = "RoleAction", args = {"曹操", 0}},
                        {cmd = "Dialog", args = {"曹操", "那么你下去歇息吧。文则、曼成，你们也下去。"}},
                        {cmd = "Dialog", args = {"夏侯惇", "是。"}},
                        {cmd = "Dialog", args = {"于禁", "是。"}},
                        {cmd = "Dialog", args = {"李典", "是。"}},
                    },
                },
                {cmd = "RoleAction", args = {"于禁", 0}},
                {cmd = "RoleAction", args = {"李典", 0}},
                {cmd = "RoleMove", args = {"李典", "right", 99, 59}},
                {cmd = "RoleMove", args = {"于禁", "right", 99, 53}},
                {cmd = "RoleMove", args = {"夏侯惇", "right", 93, 56}},
                {cmd = "RoleDisappear", args = {"于禁"}},
                {cmd = "RoleDisappear", args = {"李典"}},
                {cmd = "RoleMove", args = {"夏侯惇", "right", 99, 56}},
                {cmd = "RoleDisappear", args = {"夏侯惇"}},
                {cmd = "RoleChangeDirection", args = {"曹操", "down", 0}},
                {cmd = "Dialog", args = {"曹操", "嗯嗯……想不到孔明竟然有如此本领……"}},
                {cmd = "RoleAction", args = {"程昱", 8}},
                {cmd = "Dialog", args = {"程昱", "孔明的智谋的确令人生畏。"}},
                {cmd = "RoleAction", args = {"程昱", 0}},
                {cmd = "Dialog", args = {"曹操", "可是总不能让刘备猖狂下去。"}},
                {cmd = "Dialog", args = {"曹操", "我要马上消灭他……"}},
                {cmd = "RoleAction", args = {"曹操", 5}},
                {cmd = "Dialog", args = {"曹操", "好！趁此机会平定南方吧。"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleChangeDirection", args = {"曹操", "right", 0}},
                {cmd = "Dialog", args = {"曹操", "通令全军，准备进军平定南方！"}},
                {cmd = "RoleAction", args = {"曹操", 19}},
                {cmd = "Dialog", args = {"曹操", "我要消灭荆州的刘表、刘备，还有东吴的孙权！！"}},
                {cmd = "PlaySound", args = {"Se_e_01.wav", 255}},
            },
        },
    },
    {
        {
            {
                {cmd = "PlayMusic", args = {"Track18"}},
                {cmd = "Delay", args = {3}},
                {cmd = "LoadBackground", args = {"china"}},
                {cmd = "HeadPortraitPlay", args = {"曹操", 336, 85, "曹操"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"刘备", 253, 156, "刘备"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"新野的刘备、", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"杨修", 317, 196, "杨修"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"荆州的刘表、", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitPlay", args = {"孙权", 576, 217, "孙权"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"东吴的孙权偏安江南。", "不换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {10}},
                {cmd = "SceneDialog", args = {"曹操平定南方的第一步，", "不换页", "换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"曹操", 317, 85}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"就是进攻新野的刘备。", "不换页", "不换行", "等待"}},
                {cmd = "SceneDialog", args = {"遭到曹操军队急袭的刘备遂弃走新野。", "换页", "不换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitDisappear", args = {"刘备"}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"曹操军队在几乎没有受到攻击的情况下，", "不换页", "换行", "不等待"}},
                {cmd = "Delay", args = {5}},
                {cmd = "HeadPortraitMove", args = {"曹操", 317, 116}},
                {cmd = "Delay", args = {5}},
                {cmd = "SceneDialog", args = {"南下来到刘表所在的襄阳近郊。", "不换页", "不换行", "等待"}},
                {cmd = "PlayMusic", args = {"Track17"}},
                {cmd = "LoadBackground", args = {"MMap-94"}},
                {cmd = "HeadChange", args = {11}},
                {cmd = "RolePlay", args = {"曹操", 55, 81, "up", "曹操", 0}},
                {cmd = "RolePlay", args = {"夏侯惇", 45, 65, "right", "夏侯惇", 0}},
                {cmd = "RolePlay", args = {"许褚", 45, 59, "right", "许褚", 0}},
                {cmd = "RolePlay", args = {"张合", 45, 53, "right", "张合", 0}},
                {cmd = "RolePlay", args = {"荀彧", 65, 65, "left", "荀彧", 0}},
                {cmd = "RolePlay", args = {"贾诩", 65, 59, "left", "贾诩", 0}},
                {cmd = "RolePlay", args = {"荀攸", 65, 53, "left", "荀攸", 0}},
                {cmd = "RShowSceneName", args = {"襄阳近郊  曹军主营"}},
                {cmd = "Dialog", args = {"曹操", "这么轻松就来到这里，刘表这家伙在想什么……"}},
                {cmd = "RoleChangeDirection", args = {"荀攸", "down", 0}},
                {cmd = "Dialog", args = {"荀攸", "奇怪，如果是要引诱我军深入，也不见一点抵抗啊。"}},
                {cmd = "Dialog", args = {"曹操", "嗯。"}},
                {cmd = "RolePlay", args = {"士兵01", 55, 23, "down", "士兵01", 0}},
                {cmd = "Dialog", args = {"士兵01", "报告。"}},
                {cmd = "RoleChangeDirection", args = {"荀攸", "left", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"士兵01", 13}},
                {cmd = "Dialog", args = {"士兵01", "主公，襄阳派来使者请降。"}},
                {cmd = "Dialog", args = {"曹操", "什么！？请降的使者！？……好，带他进来。"}},
                {cmd = "Dialog", args = {"士兵01", "是。"}},
                {cmd = "RoleAction", args = {"士兵01", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleDisappear", args = {"士兵01"}},
                {cmd = "RoleChangeDirection", args = {"贾诩", "down", 0}},
                {cmd = "Dialog", args = {"贾诩", "未发一箭就要投降……？真不明白刘表是怎么想的。"}},
                {cmd = "RolePlay", args = {"文聘", 55, 23, "down", "文聘", 0}},
                {cmd = "Dialog", args = {"文聘", "您好。"}},
                {cmd = "RoleChangeDirection", args = {"贾诩", "left", 0}},
                {cmd = "RoleMove", args = {"文聘", "down", 55, 65}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"文聘", 13}},
                {cmd = "Dialog", args = {"文聘", "初次拜见丞相。末将文聘，字仲业。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，我是曹操。你是请降的使者吧！"}},
                {cmd = "Dialog", args = {"文聘", "是的。"}},
                {cmd = "Dialog", args = {"曹操", "刘表为什么未经阵仗，就决定向我投降呢？"}},
                {cmd = "Dialog", args = {"文聘", "……主公前日去世了。"}},
                {cmd = "Dialog", args = {"文聘", "后主刘琮为免荆州受战火之苦，决定将国土献给丞相。"}},
                {cmd = "Dialog", args = {"文聘", "请丞相慈悲为怀，务必答应我们的请求。"}},
                {cmd = "Dialog", args = {"曹操", "好吧！我答应。"}},
                {cmd = "Dialog", args = {"文聘", "谢丞相。"}},
                {cmd = "Dialog", args = {"曹操", "文聘，有件事情问你，新野的刘备如今身居何处？"}},
                {cmd = "Dialog", args = {"文聘", "……刘备不赞成投降，现在正逃向东吴。"}},
                {cmd = "Dialog", args = {"曹操", "是吗？好！让刘琮继续守卫荆州。"}},
                {cmd = "Dialog", args = {"曹操", "我军继续追击刘备。"}},
                {cmd = "Dialog", args = {"曹操", "夏侯惇、张合！命你二人为先锋，火速追击刘备。"}},
                {
                    {cmd = "VarTest", args = {{trueConditions = {"Var310"}}}},
                    {cmd = "RoleAction", args = {"夏侯惇", 8}},
                    {cmd = "Dialog", args = {"夏侯惇", "是。"}},
                    {cmd = "RoleAction", args = {"张合", 8}},
                    {cmd = "Dialog", args = {"张合", "是。"}},
                    {cmd = "RoleAction", args = {"夏侯惇", 0}},
                    {cmd = "RoleAction", args = {"张合", 0}},
                },
                {
                    {cmd = "VarTest", args = {{falseConditions = {"Var310"}}}},
                    {cmd = "Dialog", args = {"曹操", "元让，要洗雪往日的耻辱！"}},
                    {cmd = "RoleAction", args = {"夏侯惇", 5}},
                    {cmd = "Dialog", args = {"夏侯惇", "是！"}},
                    {cmd = "RoleAction", args = {"夏侯惇", 0}},
                },
                {cmd = "Delay", args = {5}},
                {cmd = "RolePlay", args = {"夏侯杰", 56, 23, "down", "夏侯杰", 0}},
                {cmd = "RoleMove", args = {"夏侯杰", "down", 56, 27}},
                {cmd = "RolePlay", args = {"夏侯恩", 56, 23, "down", "夏侯恩", 0}},
                {cmd = "RoleMove", args = {"夏侯杰", "down", 51, 57}},
                {cmd = "RoleMove", args = {"夏侯恩", "down", 59, 57}},
                {cmd = "RoleAction", args = {"夏侯恩", 0}},
                {cmd = "RoleAction", args = {"夏侯杰", 0}},
                {cmd = "Dialog", args = {"夏侯恩", "主公！"}},
                {cmd = "RoleAction", args = {"曹操", 5}},
                {cmd = "Dialog", args = {"曹操", "哦，是夏侯恩和夏侯杰？"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "Dialog", args = {"夏侯杰", "主公，请让我们也参加此次战斗吧！"}},
                {cmd = "Dialog", args = {"夏侯恩", "我二人至今尚未上过战场，还请主公给我等机会。"}},
                {cmd = "Dialog", args = {"曹操", "嗯，说的好。好吧，就负责接应主力部队，你们二人要努力建功。"}},
                {cmd = "Dialog", args = {"夏侯杰", "是。"}},
                {cmd = "Dialog", args = {"夏侯恩", "多谢主公。那么我们去做出发准备。"}},
                {cmd = "RoleMove", args = {"夏侯恩", "left", 56, 57}},
                {cmd = "Delay", args = {0}},
                {cmd = "RoleMove", args = {"夏侯恩", "up", 56, 53}},
                {cmd = "RoleMove", args = {"夏侯杰", "down", 56, 57}},
                {cmd = "Delay", args = {0}},
                {cmd = "RoleMove", args = {"夏侯恩", "up", 56, 23}},
                {cmd = "RoleMove", args = {"夏侯杰", "up", 56, 27}},
                {cmd = "RoleDisappear", args = {"夏侯恩"}},
                {cmd = "RoleMove", args = {"夏侯杰", "up", 56, 23}},
                {cmd = "RoleDisappear", args = {"夏侯杰"}},
                {cmd = "Dialog", args = {"曹操", "文聘将军，我军不熟悉荆州的地理，请你担任前导部队吧。"}},
                {cmd = "Dialog", args = {"文聘", "如今末将既已归降，您就是我的主公，末将自当效命。"}},
                {cmd = "Dialog", args = {"文聘", "末将即刻准备，就此告退。"}},
                {cmd = "Dialog", args = {"曹操", "嗯！战场上见。"}},
                {cmd = "RoleAction", args = {"文聘", 0}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleMove", args = {"文聘", "up", 55, 23}},
                {cmd = "RoleDisappear", args = {"文聘"}},
                {cmd = "Delay", args = {3}},
                {cmd = "RoleAction", args = {"曹操", 19}},
                {cmd = "Dialog", args = {"曹操", "好，出发！"}},
                {cmd = "RoleAction", args = {"曹操", 0}},
                {cmd = "ShowMenu", args = {true}},
                {cmd = "FightGeneralsInfo", args = {true, 10, 6, "夏侯惇", "张合", "!郭嘉", }},
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
            {cmd = "RolePressedTest", args = {"夏侯惇"}},
            {
                {cmd = "Dialog", args = {"夏侯惇", "孔明！这回我一定要报仇。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"张合"}},
            {
                {cmd = "Dialog", args = {"曹操", "张将军，你也出战吧。"}},
                {cmd = "Dialog", args = {"张合", "是。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"许褚"}},
            {
                {cmd = "Dialog", args = {"许褚", "从前就听说刘表军挺厉害的，我真想跟他们斗一斗。"}},
                {cmd = "Dialog", args = {"曹操", "我也是这么打算的。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"贾诩"}},
            {
                {cmd = "Dialog", args = {"曹操", "文和，你了解刘琮的情况吗？"}},
                {cmd = "Dialog", args = {"贾诩", "不过是个孩子罢了，好像不怎么出色。"}},
                {cmd = "Dialog", args = {"曹操", "哼，原来是乳臭未干的小子。"}},
                {cmd = "Dialog", args = {"贾诩", "是的。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"荀彧"}},
            {
                {cmd = "Dialog", args = {"曹操", "文若，战场在哪一带？"}},
                {cmd = "Dialog", args = {"荀彧", "我想在长阪坡附近。"}},
                {cmd = "Dialog", args = {"曹操", "长阪坡……那里有条河吧。"}},
                {cmd = "Dialog", args = {"荀彧", "是的，在中央一带，不是什么大河。"}},
            },
        },
        {
            {cmd = "RolePressedTest", args = {"荀攸"}},
            {
                {cmd = "Dialog", args = {"荀攸", "主公，刚接到报告，刘备身边还带着婴儿。"}},
                {cmd = "Dialog", args = {"曹操", "婴儿？刘备的孩子吗？"}},
                {cmd = "Dialog", args = {"荀攸", "是的。是个名叫阿斗的男婴。"}},
                {cmd = "Dialog", args = {"曹操", "阿斗？可真是个奇怪的名字。"}},
                {cmd = "Dialog", args = {"荀攸", "听说其母梦见吞了北斗七星，才怀了这个孩子的，因此取了这个名字。"}},
                {cmd = "Dialog", args = {"曹操", "哦？吞了北斗七星……。"}},
            },
        },
    },
}

return Plot