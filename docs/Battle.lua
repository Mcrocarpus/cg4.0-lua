---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡս�������ж���ʵ���Ķ���index
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Slot  ��ֵ�� ս�����������λ��,��Χ0-19������0-9Ϊ�·�ʵ�����У�10-19Ϊ�Ϸ�ʵ�����С�
---@return number @����-1ʧ�ܣ��ɹ����ض���ʵ���� ����index�������������Ͳ��Է���-2��ս��index��Ч����-3��ս�����������λ�÷�Χ���󷵻�-4��
function Battle.GetPlayer(BattleIndex, Slot) end

---��ȡս�������ж���ʵ���Ķ���index
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Slot  ��ֵ�� ս�����������λ��,��Χ0-19������0-9Ϊ�·�ʵ�����У�10-19Ϊ�Ϸ�ʵ�����С�
---@return number @����-1ʧ�ܣ��ɹ����ض���ʵ���� ����index�������������Ͳ��Է���-2��ս��index��Ч����-3��ս�����������λ�÷�Χ���󷵻�-4��
function Battle.GetPlayIndex(BattleIndex, Slot) end

---����ħ���ű����encount����ս��
---@param UpIndex  ��ֵ�� ս��һ���� ����index
---@param DownIndex  ��ֵ�� ս��һ���� ����index
---@param Data  �ַ��� ����ս������Ϣ������ս�����˶��е���Ϣ����ͬ��GMSV����ű���encount����,�ɲ���д
---@return any @ǰ������������ͬһ��������������������������ʱ�򣬽���ԭ�����У�����ô��޷����У��򷵻ظ�����
function Battle.Encount(UpIndex, DownIndex, Data) end

---ʹ��Lua�ű�����һ��ս����ս����������Զ�����Lua��DoFunc������
---@param CharIndex  ��ֵ�� ������ҵĶ���index��
---@param CreatePtr  ��ֵ�� ����ս���Ķ���index��
---@param DoFunc  �ַ��� ս����ʼ�����ܺ���õ�Lua���������ƣ�������ʽ��ο�[BattleInitCallBack]���������������nil
---@param EnemyIdAr  ��ֵ��[����] ս�������ֵĹ�����еĹ���ID���飨����IDΪenemy.txt�е�ID����
---@param BaseLevelAr  ��ֵ��[����] ս�������ֵĹ�����еĹ���ȼ����飨����ṹ��EnemyIdAr�ṹӦһһ��Ӧ��
---@param RandLv ��ֵ��[����] ս�������ֵĹ�����еĹ���ȼ��������飨����ṹ��EnemyIdAr�ṹӦһһ��Ӧ��
---@return number @���ظ�����ʾʧ�ܣ��ɹ�����ս��index��
function Battle.PVE(CharIndex, CreatePtr, DoFunc, EnemyIdAr, BaseLevelAr, RandLv) end

---����PKս��
---@param UpIndex  ��ֵ�� ս��һ���� ����index
---@param DownIndex  ��ֵ�� ս��һ���� ����index
---@return number @���ظ�����ʾʧ�ܣ��ɹ�����ս��index��
function Battle.PVP(UpIndex, DownIndex) end

---����ս�����ͣ�����ͨս��PVPս�ȡ�
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Type  ��ֵ�� ս�����ͣ��������ս�����ͳ�����
---@return any @1Ϊ�ɹ�,����ʧ�ܡ�
function Battle.SetType(BattleIndex, Type) end

---����ս������ģʽ���罱�����顢����DP��
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Mod  ��ֵ�� ս���������ͣ��������ս�����ͳ�����
---@return any @1Ϊ�ɹ�,����ʧ�ܡ�
function Battle.SetGainMode(BattleIndex, Mod) end

---��ȡս�����ͣ�����ͨս��PVPս�ȡ�
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@return any @ս�����ͣ��������ս�����ͳ�����
function Battle.GetType(BattleIndex) end

---��ȡս������ģʽ���罱�����顢����DP��
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@return any @ս���������ͣ��������ս�����ͳ�����
function Battle.GetGainMode(BattleIndex) end

---��ȡս��ʤ������
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@return any @0����1�� 0��ʾս���·�����0-9λ�õ���ң�1��ʾ�Ϸ�����10-19λ�õ���ҡ�
function Battle.GetWinSide(BattleIndex) end

---��ָ����Ҷ��������һ����Ҷ����ս���У�Ҳ������CharIndex2����CharIndex1��ս��������ʯ��ʱ��������������ʹ��ǰ�����
---@param CharIndex1  ��ֵ�� Ŀ��Ķ���index����ս���е���ҡ�
---@param CharIndex2  ��ֵ�� Ŀ��� ����index������ս���е���ҡ�
---@return any @0Ϊ�ɹ�������ʧ�ܡ�
function Battle.JoinBattle(CharIndex1, CharIndex2) end

---��ָ������˳���ǰս����
---@param CharIndex  ��ֵ�� Ŀ��Ķ���index����ս���е���ҡ�
---@return any @0Ϊ�ɹ�������ʧ�ܡ�
function Battle.ExitBattle(CharIndex) end

---Ϊ��PVP��ս������ս��ʤ���¼��Ļص���������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[PVEWinCallBack]
---@param BattleIndex  ��ֵ�� ս��index��
---@return number @����1�ɹ�������0ʧ�ܡ�
function Battle.SetWinEvent(DoFile, FuncName, BattleIndex) end

---WinEvent�ص�����
---@param BattleIndex  ��ֵ�� ս��index����ֵ��Lua���洫�ݸ���������
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function BattleIndex, CharIndex) end

---ΪPVP��ս������ս��ʤ���¼��Ļص���������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[PVEWinCallBack]
---@param BattleIndex  ��ֵ�� ս��index��
---@return number @����1�ɹ�������0ʧ�ܡ�
function Battle.SetPVPWinEvent(DoFile, FuncName, BattleIndex) end

---PVPWinEvent�ص�����
---@param BattleIndex  ��ֵ�� ս��index����ֵ��Lua���洫�ݸ���������
---@return any @
function BattleIndex) end

---��ȡս����ǰ�غ�����
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@return any @ս���غ�����
function Battle.GetTurn(BattleIndex) end

---�жϵ�ǰ�����Ƿ���ս�����Ҵ��ڵȴ�����ս��ָ���״̬��
---@param CharIndex  ��ֵ�� ����index������Ϊ��ҡ�������ˡ�
---@return any @0 Ϊ�� 1Ϊ��
function Battle.IsWaitingCommand(CharIndex) end

---�ö���ִ��ָ����ս�������������ڶ���Battle.IsWaitingCommand(index)����ֵΪ1ʱ�ſ�����Чʹ�á�
---@param CharIndex  ��ֵ�� ��Ҷ���index
---@param com1  ��ֵ�� CONST.BATTLE_COM
---@param com2  ��ֵ�� CONST.BATTLE_COM_TARGET
---@param com3  ��ֵ�� techId
---@return any @0 ʧ�ܣ� 1 �ɹ�
function Battle.ActionSelect(CharIndex, com1, com2, com3) end

---��ȡ��ǰս����ս��ħ��Ч���������Է�ת��ħ����ӡ
---@param BattleIndex  ��ֵ�� ս������index
---@return number @ʧ�ܷ���0�����򷵻�3��ֵ���ֱ���ս��ħ��״̬���ο�״̬����˵������״̬�����غϡ�״̬���ԡ�
function Battle.GetBattleFieldAttribute(BattleIndex) end

---���õ�ǰս����ս��ħ��Ч���������Է�ת��ħ����ӡ
---@param BattleIndex  ��ֵ�� ս������index
---@param Attribute  ��ֵ�� ս��״̬ CONST.BATTLE_FIELD_ATTR
---@param TurnCount  ��ֵ�� ״̬�����غ���
---@param AttributePower  ��ֵ�� ״̬����
---@return number @ʧ�ܷ���0�����򷵻�3��ֵ���ֱ����µ�ս��ħ��״̬���ο�״̬����˵������״̬�����غϡ�״̬���ԡ�
function Battle.SetBattleFieldAttribute(BattleIndex, Attribute, TurnCount, AttributePower) end

---������ս��
---@param BattleIndex  ��ֵ�� ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param encountIndex ��ֵ�� -1=ȡ����ս��  -2=lua������ս
---@param Flg  ��ֵ�� lua��ս����
---@return any @0Ϊ�ɹ�,����ʧ�ܡ�
function Battle.SetNextBattle(BattleIndex,encountIndex, Flg) end

---��ý�ɫս������ʵλ��
---@param battleIndex ��ֵ�� ս��index
---@param charIndex ��ֵ�� ��ɫindex
---@return any @��ɫս������ʵλ�ã���Χ0-19
function Battle.GetPos(battleIndex,charIndex) end

---��ȡ��սid
---@param battleIndex number
---@param 
---@return number @encountIndex
function Battle.GetNextBattle(battleIndex) end

---���������˺����ʣ�10����=100��
---@param ap number[] ��������4���ԣ��ء�ˮ���𡢷�
---@param dp number[] ���ط�4���ԣ��ء�ˮ���𡢷�
---@return any @�����˺�����
function Battle.CalcPropScore(ap, dp) end

---��ȡ��ǰ�������ܲ���
---@param charIndex number
---@param type string ȡֵ DD  AR  ��
---@return any @��ǰ�������ܲ���
function Battle.GetTechOption(charIndex, type) end

---��ȡ������ƹ�ϵ
---@param attackerIndex number
---@param defenceIndex number
---@return any @���Ʊ���
function Battle.CalcAttributeDmgRate(attackerIndex, defenceIndex) end

---���������˺�
---@param a number ����������
---@param b number ����������
---@return any @�����˺�
function Battle.CalcTribeRate(a, b) end

---���㵱ǰս�������˺�
---@param aIndex number ������index
---@param bIndex number ������index
---@return any @��ǰս�������˺�
function Battle.CalcTribeDmgRate(aIndex, bIndex) end

---���WinEvent
---@param BattleIndex  ��ֵ�� ս������index
---@return any @
function Battle.UnsetWinEvent(battleIndex) end

---���PVPWinEvent
---@param BattleIndex  ��ֵ�� ս������index
---@return any @
function Battle.UnsetPVPWinEvent(battleIndex) end

---���õ�ǰ�غ���
---@param battleIndex number 
---@param turn number �غ���
---@return any @
function Battle.SetTurn(battleIndex, turn) end

---Ϊ��ǰ�����ս�������Ϣ(���ͷż��ܺ���)
---@param msg string
---@return any @
function Battle.AppendBattleMsg(msg) end

---��ȡս����Ϣ
---@param BattleIndex  ��ֵ�� ս������index
---@param charIndex number
---@param dataline  ��ֵ�� ��Ӧ��CONST.BATTLE_ENTRY_* 
---@return any @ս����Ϣ
function Battle.GetEntryData(battleIndex,charIndex,dataline) end

---����ս����Ϣ
---@param BattleIndex  ��ֵ�� ս������index
---@param charIndex number
---@param dataline  ��ֵ�� ��Ӧ��CONST.BATTLE_ENTRY_* 
---@param value  ��ֵ�� ��Ӧ����Ϣ
---@return any @
function Battle.SetEntryData(battleIndex,charIndex,dataline,value) end

---�ж�ս���Ƿ���BOSSս
---@param BattleIndex  ��ֵ�� ս��index
---@return any @0 �� 1 ��
function Battle.IsBossBattle(BattleIndex) end

---��ȡս��������
---@param BattleIndex  ��ֵ�� ս��index
---@return any @�����Ƿ����ã�����
function Battle.GetDexRearrangeRate(BattleIndex) end

---����ս��������
---@param BattleIndex  ��ֵ�� ս��index
---@param rate ��ֵ�� 0~100 ��������
---@return any @
function Battle.SetDexRearrangeRate(BattleIndex,rate) end

---��ȡս����󷴻���
---@param BattleIndex  ��ֵ�� ս��index
---@return any @�����Ƿ����ã�����
function Battle.GetMaxCounter(BattleIndex) end

---����ս����󷴻���
---@param BattleIndex  ��ֵ�� ս��index
---@param rate ��ֵ�� ��󷴻���
---@return any @
function Battle.SetMaxCounter (BattleIndex,rate) end

