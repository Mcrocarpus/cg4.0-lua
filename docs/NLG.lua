---@alias �ַ��� string
---@alias ��ֵ�� number


---��ͨ˵�������Զ�ȫ��������˵��
---@param ToIndex  ��ֵ�� ˵��Ŀ��� ����index�����Ϊ-1�����ȫ���������˵
---@param TalkerIndex  ��ֵ�� ˵���ߵ� ����index�����Ϊ-1������ʾ������
---@param Msg  �ַ��� ˵��������
---@param FontColor  ��ֵ�� Ĭ��Ϊ0������ɫ [��Ϊ��]
---@param FontSize  ��ֵ�� Ĭ��Ϊ0��Ϊ��ʾ�������С [��Ϊ��]
---@return number @����0��ʾ�ɹ���������ʾʧ��
function NLG.Say(ToIndex,TalkerIndex,Msg,FontColor,FontSize) end

---��ͨ˵�������Զ�ȫ��������˵��
---@param ToIndex  ��ֵ�� ˵��Ŀ��� ����index�����Ϊ-1�����ȫ���������˵
---@param TalkerIndex  ��ֵ�� ˵���ߵ� ����index�����Ϊ-1������ʾ������
---@param Msg  �ַ��� ˵��������
---@param FontColor  ��ֵ�� Ĭ��Ϊ0������ɫ [��Ϊ��]
---@param FontSize  ��ֵ�� Ĭ��Ϊ0��Ϊ��ʾ�������С [��Ϊ��]
---@return number @����0��ʾ�ɹ���������ʾʧ��
function NLG.TalkToCli(ToIndex,TalkerIndex,Msg,FontColor,FontSize) end

---��ָ����ͼ���������˵����
---@param Map  ��ֵ�� ˵��Ŀ��ĵ�ͼ���ͣ�0Ϊ�̶���ͼ��1Ϊ�����ͼ
---@param Floor  ��ֵ�� ˵��Ŀ��ĵ�ͼ���
---@param TalkerIndex  ��ֵ�� ˵���ߵ� ����index�����Ϊ-1������ʾ������
---@param Msg  �ַ��� ˵��������
---@param FontColor  ��ֵ�� Ĭ��Ϊ0������ɫ [��Ϊ��]
---@param FontSize  ��ֵ�� Ĭ��Ϊ0��Ϊ��ʾ�������С [��Ϊ��]
---@return number @����0��ʾ�ɹ���������ʾʧ��
function NLG.TalkToMap(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---��ָ����ͼ���������˵����
---@param Map  ��ֵ�� ˵��Ŀ��ĵ�ͼ���ͣ�0Ϊ�̶���ͼ��1Ϊ�����ͼ
---@param Floor  ��ֵ�� ˵��Ŀ��ĵ�ͼ���
---@param TalkerIndex  ��ֵ�� ˵���ߵ� ����index�����Ϊ-1������ʾ������
---@param Msg  �ַ��� ˵��������
---@param FontColor  ��ֵ�� Ĭ��Ϊ0������ɫ [��Ϊ��]
---@param FontSize  ��ֵ�� Ĭ��Ϊ0��Ϊ��ʾ�������С [��Ϊ��]
---@return number @����0��ʾ�ɹ���������ʾʧ��
function NLG.Say2Map(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---��ָ����ͼ���������˵����
---@param Map  ��ֵ�� ˵��Ŀ��ĵ�ͼ���ͣ�0Ϊ�̶���ͼ��1Ϊ�����ͼ
---@param Floor  ��ֵ�� ˵��Ŀ��ĵ�ͼ���
---@param TalkerIndex  ��ֵ�� ˵���ߵ� ����index�����Ϊ-1������ʾ������
---@param Msg  �ַ��� ˵��������
---@param FontColor  ��ֵ�� Ĭ��Ϊ0������ɫ [��Ϊ��]
---@param FontSize  ��ֵ�� Ĭ��Ϊ0��Ϊ��ʾ�������С [��Ϊ��]
---@return number @����0��ʾ�ɹ���������ʾʧ��
function NLG.TalkToFloor(Map,Floor,TalkerIndex,Msg,FontColor,FontSize) end

---��� ����ĸı䲢���������й�������ҷ��͸ö�������ݸ��·����
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return any @
function NLG.UpChar(CharIndex) end

---���ɲ����ͶԻ���
---@param ToIndex  ��ֵ�� ���նԻ����Ŀ��Ķ���index��
---@param WinTalkIndex  ��ֵ�� ���ɶԻ����Ŀ��Ķ���index��һ��ΪNPC��
---@param WindowType  ��ֵ�� ���ĸ�¼�Ի�������
---@param ButtonType  ��ֵ�� �Ի�������İ�ť�����ĸ�¼�Ի���ť
---@param SeqNo  ��ֵ�� �Զ�����ֵ������ʶ��ͬ�ĶԻ����¼���Ӧ, �������WindowTalkedCallBack�е���
---@param Data  �ַ��� �Ի��������,���ݲ�ͬ�ĶԻ������,�в�ͬ�ĸ�ʽ,������ڸ�¼��˵��
---@return any @0��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.ShowWindowTalked(ToIndex,WinTalkIndex,WindowType,ButtonType,SeqNo,Data) end

---ShowWindowTalked�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ��������index��һ��ΪNPC�����ָ�룬��ֵ��Lua���洫�ݸ���������
---@param TargetCharIndex  ��ֵ�� �����¼��Ķ����index��һ��Ϊ��Ҷ����ָ�룬��ֵ��Lua���洫�ݸ���������
---@param SeqNo  ��ֵ�� ��Դ�Ի����ID����ֵ��NLG.ShowWindowTalked�еĶ���Ӧ�ö�Ӧ����ֵ��Lua���洫�ݸ���������
---@param Select  ��ֵ�� ��������µİ�ť��ֵ��ѡ����е�ѡ���ֵ����ֵ��Lua���洫�ݸ���������
---@param Data  �ַ��� �ͻ��������ݻ�����ֵ�����ֵ�����ݲ�ͬ�Ĵ������Ͷ���ͬ����ֵ��Lua���洫�ݸ���������
---@return any @
function WindowTalkedCallBack(CharIndex, TargetCharIndex, SeqNo, Select, Data) end

---���ö���Ķ���
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param Action  ��ֵ�� ������ţ�����Ȥ�Ŀ��Դ�0��ʼһ��һ�����ԡ�
---@return any @0��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.SetAction(CharIndex, Action) end

---�ö�����ָ�������ƶ�һ��
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param Action  ��ֵ�� ��Χ0-7���ֱ��ʾ��Ϸ�ж�Ӧ�İ˸�����
---@return any @0��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.WalkMove(CharIndex, Dir) end

---�������Ƿ���ָ������֮�ڣ�������Ŀ�����
---@param CharIndex  ��ֵ�� �������index��
---@param TargetCharIndex  ��ֵ�� Ŀ�����index��
---@param Distance  ��ֵ�� ����
---@return any @0: ���ھ����� 1: �ھ�����
function NLG.CheckInFront(CharIndex, TargetCharIndex, Distance) end

---�������Ƿ���������ڶԻ���Χ�ڣ�����
---@param CharIndex  ��ֵ�� �������index��
---@param TargetCharIndex  ��ֵ�� Ŀ�����index��
---@return any @0: ���ھ����� 1: �ھ�����
function NLG.CanTalk(CharIndex, TargetCharIndex) end

---�������Ƿ���������ڶԻ���Χ�ڣ�����
---@param CharIndex  ��ֵ�� �������index��
---@param TargetCharIndex  ��ֵ�� Ŀ�����index��
---@return any @0: ���ھ����� 1: �ھ�����
function NLG.CheckTalkRange(CharIndex, TargetCharIndex) end

---��ȡ�����������
---@param 
---@return number @���������������ʧ�ܷ���-1��
function NLG.GetPlayerNum() end

---��ȡ�����������
---@param 
---@return number @���������������ʧ�ܷ���-1��
function NLG.GetOnLinePlayer() end

---��ȡ��ͼ����ҵ�����
---@param Map  ��ֵ�� ��ͼ���ͣ�0Ϊ������ͼ��1Ϊ�Զ����ɵĵ�ͼ��
---@param Floor  ��ֵ�� ��ͼ��š�
---@return number @���������������ʧ�ܷ���-1��
function NLG.GetMapPlayerNum(Map, Floor) end

---��ָ�������ͻ�ɫ�ӴֵĹ�����Ϣ��
---@param CharIndex  ��ֵ�� ���չ���Ķ���index��ֵΪ-1ʱ��ȫ��������ҷ��͡�
---@param Message  �ַ��� Ҫ���͵�����
---@return number @�ɹ�����1�����򷵻�0��
function NLG.SystemMessage(CharIndex, Message) end

---��ָ�������ͻ�ɫ�ӴֵĹ�����Ϣ��
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@param Message  �ַ��� Ҫ���͵�����
---@return number @�ɹ�����1�����򷵻�0��
function NLG.SystemMessageToMap(MapID, FloorID, Message) end

---����ͼ��x��y�����Ƿ��ͨ�С�
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@param X  ��ֵ�� X����
---@param Y  ��ֵ�� Y����
---@return number @����1�����ͨ�У�����0����ͨ�С�
function NLG.Walkable(MapID, FloorID, X, Y) end

---��ȡĿ���ͼ���е���ң�����table��ʽ���ء�
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@return number @�Է���ֵʹ��Lua����type()�������жϣ��������ֵΪ��table����Ϊ��ҵĶ���index�ļ��ϣ������ʾĿ���ͼ����һ�����Ŀ���ͼ��
function NLG.GetMapPlayer(MapID, FloorID) end

---��Ŀ����ҶϿ����ӡ�
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return number @����1����ɹ�������0ʧ�ܡ�
function NLG.DropPlayer(CharIndex) end

---��ָ����ͼ��ָ����������һ����ͼ�����
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@param X  ��ֵ�� X����
---@param Y  ��ֵ�� Y����
---@param Obj  ��ֵ�� Ҫ��ʾ�ĵ�ͼ��������Ϊ0����ɾ��Ŀ������ĵ�ͼ�����
---@return number @����1����ɹ�������0ʧ�ܡ�
function NLG.SetObj(MapID, FloorID, X, Y, Obj) end

---�ı����Ŀǰ�ĵ�ͼ��ɫ�塣
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param PalID  ��ֵ�� ��ͼ��ɫ���š�
---@param Time  ��ֵ�� ����ʱ�䣬��λ�롣
---@return number @����1����ɹ�������0ʧ�ܡ�
function NLG.SetPal(CharIndex, PalID, Time) end

---�ı����Ŀǰ�ĵ�ͼ��ɫ�塣
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param PalID  ��ֵ�� ��ͼ��ɫ���š�
---@param Time  ��ֵ�� ����ʱ�䣬��λ�롣
---@return number @����1����ɹ�������0ʧ�ܡ�
function NLG.ChangePal(CharIndex, PalID, Time) end

---Ȼ���CharIndex�ۿ�TargetCharIndex�ĵ�ǰս���������ս����
---@param CharIndex  ��ֵ�� �������index��
---@param TargetCharIndex  ��ֵ�� Ŀ�����index��
---@return any @1��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.WatchBattle(CharIndex, TargetCharIndex) end

---Ȼ���CharIndex�ۿ�TargetCharIndex�ĵ�ǰս���������ս����
---@param CharIndex  ��ֵ�� �������index��
---@param TargetCharIndex  ��ֵ�� Ŀ�����index��
---@return any @1��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.WatchEntry(CharIndex,TargetCharIndex) end

---����NPC�Ի������־��С�
---@param Message  �ַ��� Ҫ�������õ��ı�
---@return any @���к���ı���
function NLG.c(Message) end

---����ָ����ͼ�����֡�
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@param Name  �ַ��� ��ͼ����
---@return number @�ɹ�����1�����򷵻�0��
function NLG.SetMapName(MapID, FloorID, Name) end

---��ȡָ����ͼ�����֡�
---@param MapID  ��ֵ�� Ŀ���ͼ�����ͣ�0Ϊ�̶���ͼ1Ϊ�����ͼ��
---@param FloorID  ��ֵ�� ��ͼ���
---@return string @����ֵΪ0���ȡʧ�ܣ�����ֵΪ[�ַ���]��Ϊ��ͼ���ơ�
function NLG.GetMapName(MapID, FloorID) end

---ͨ������ʺ�����Ҷ���index��
---@param CharIndex  �ַ��� ָ�����ʺ�/Cdkey��
---@return number @����-1����ʧ�ܣ�����Ϊָ���˺�Ŀǰ������ҵĶ���index��
function NLG.FindUser(CdKey) end

---������ҵ��Ŷ���Ϣ��
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return any @
function NLG.UpdateParty(CharIndex) end

---ͨ��Gmsv������������ȡ����������ÿ������ӵ����⣬�ܾ�����ȷ�������������ԡ�
---@param min  ��ֵ�� ��������ޡ�
---@param max  ��ֵ�� ��������ޡ�
---@return any @��������������������
function NLG.Rand(min, max) end

---��ָ���������NPC�����ͷ������ͼ����ֻҪ����Ϸ�ͻ���ӵ�е�ͼ�����ɵ��á�
---@param CharIndex  ��ֵ�� ���չ���Ķ���index��ֵΪ-1ʱ��ȫ��������ҷ��͡�
---@param HeadGraNo  ��ֵ�� ͷ�ε�ͼ��ID���ͻ��˵�����ͼ��ID��
---@return any @1��ʾ�ɹ���������ʾʧ�ܡ�
function NLG.SetHeadIcon(CharIndex, HeadGraNo) end

---��ȡ��ҵ�IP��ַ��
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return any @�����IP��ַ��������Ҷ�����Ч
function NLG.GetIp(CharIndex) end

---��ȡ��ҵ�MAC��ַ��
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return any @�����MAC��ַ��������Ҷ�����Ч
function NLG.GetMAC(CharIndex) end

---��ȡ��Ϸ�еĵ�ǰʱ�䣬�����磬�ƻ裬ҹ���峿��
---@param 
---@return any @0 ������ | 1 ���ƻ� | 2 ��ҹ�� | 3 ���峿
function NLG.GetGameTime() end

---������ұ�����
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@return any @0Ϊʧ�ܣ�1Ϊ�ɹ���
function NLG.SortItem(CharIndex) end

---���������˺�
---@param a number ����������
---@param b number ����������
---@param rate number �˺�����
---@return any @number �˺�����
function NLG.SetTribeRate(a, b, rate) end

---��ȡ������ң�����table��ʽ���ء�
---@param 
---@return number @table ���index
function NLG.GetPlayer() end

---����cpuʹ��
---@param ms number С��0ʱ�رգ����ڻ����0ʱΪSleepʱ�䣬���������2
---@return any @
function NLG.LowCpuUsage(ms) end

---������
---@param npcOrPlayer number npc�������index
---@param player number ���index
---@return any @
function NLG.OpenBank(npcOrPlayer, player) end

---ģ�����
---@param 
---@return any @
function NLG.RaiseCrash() end

---��������(ȫ�ֿ���)
---@param enable boolean ���� 1 ������ 0
---@return any @
function NLG.SetPetRandomShot(enable) end

---��������(ĳ�ֳ��￪��)
---@param enable boolean ���� 1 ������ 0
---@param petId number ����id��EnemyBaseId��
---@return any @
function NLG.SetPetRandomShot(petId, enable) end

---������������
---@param rate integer 0-100
---@param mode  nil|0|1|2 0 @0=PVE&PVP 1=PVE 2=PVP
---@return any @
function NLG.SetDexRearrangeRate(rate, mode) end

---�޸ı���ʱ�˺�����
---@param mode number|boolean ȡֵ�� 0 = ��ͨģʽ 1 = ����ģʽ 2 = �� true = ��ͨģʽ false = ��
---@param val number ���ʣ�Ĭ��1.5��
---@return any @
function NLG.SetCriticalDamageAddition(mode, val) end

