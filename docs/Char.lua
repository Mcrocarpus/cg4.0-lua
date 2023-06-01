---@alias string string
---@alias number number


---��ȡ����index��ָ����Ϣ��
---@param charIndex number Ŀ��� ����index
---@param dataIndex number ˵ָ���Ķ���ʵ����Ϣ��λ��������λ������鿴��¼
---@return any @ָ����Ϣ��λ��ֵ
function Char.GetData(charIndex, dataIndex) end

---���ö���index��ָ����Ϣ��
---@param charIndex number Ŀ��� ����index
---@param dataIndex number ˵ָ���Ķ���ʵ����Ϣ��λ��������λ������鿴��¼
---@param value string|number �µ�ֵ
---@return any @0Ϊʧ�ܣ�1Ϊ�ɹ�
function Char.SetData(charIndex, dataIndex, value) end

---��ȡ/����Ŀ������NowEvent������ꡣ
---@param charIndex number Ŀ��� ����index��
---@param flag number ������ꡣ
---@param value number '0' | '1' ���õ�Ŀ�����״̬[��������øò������򷵻�Ŀ�����״̬������ò���Ϊ0�������Ŀ��ĸ�����NowEvent״̬���������Ϊ1�������ø����ΪNowEvent״̬]
---@return any @�����Value�������򷵻����״̬��
function Char.NowEvent(charIndex, flag, value) end

---��ȡ/����Ŀ������EndEvent������ꡣ
---@param charIndex number Ŀ��� ����index��
---@param flag number ������ꡣ
---@param value number '0' | '1' ���õ�Ŀ�����״̬[��������øò������򷵻�Ŀ�����״̬������ò���Ϊ0�������Ŀ��ĸ�����EndEvent״̬���������Ϊ1�������ø����ΪEndEvent״̬]
---@return any @�����Value�������򷵻����״̬��
function Char.EndEvent(charIndex, flag, value) end

---���ҽ�ɫ�Ƿ�ӵ��ID��ItemID�ĵ��ߡ�
---@param charIndex number Ŀ��� ����index��
---@param itemID number ����ID
---@return number @������򷵻ص�һ������ĵ�����λ�ã����û���򷵻�-1��
function Char.FindItemId(charIndex, itemID) end

---ΪĿ�����ӽ�Ǯ��
---@param charIndex number Ŀ��� ����index��
---@param amount number ���ӵ�����������Ϊ���١�
---@return any @
function Char.AddGold(charIndex, amount) end

---ɾ��Ŀ�������ߡ�
---@param CharIndex number Ŀ��� ����index��
---@param ItemID number ����ID��
---@param Amount number ���ߵ�������
---@param ShowMsg boolean �Ƿ���ʾϵͳ��Ϣ
---@return number @�ɹ�����1��ʧ���򷵻�0��
function Char.DelItem(CharIndex, ItemID, Amount, ShowMsg) end

---����Ŀ�������ߡ�
---@param CharIndex number Ŀ��� ����index��
---@param ItemID number ����ID��
---@param Amount number ���ߵ�������
---@param ShowMsg boolean �Ƿ���ʾϵͳ��Ϣ
---@return number @Ŀ�����index��ʧ���򷵻ظ�����
function Char.GiveItem(CharIndex, ItemID, Amount, ShowMsg) end

---�����������Ƿ���Ŀ����ߡ�
---@param CharIndex number Ŀ��� ����index��
---@param ItemID number ����ID��
---@return number @���Ŀ���иõ��ߣ��򷵻ظõ���index�����򷵻�-1��
function Char.HaveItem(CharIndex,ItemID) end

---���������ϵ��Ѿ��е��ߵĵ�����λ������
---@param CharIndex number Ŀ��� ����index��
---@return number @Ŀ����������Ѿ�ʹ�õ���λ���������κε��߷���0��ȫ�����е��߷���20��
function Char.ItemSlot(charIndex) end

---����������Ŀ����ߵ�������
---@param charIndex number Ŀ��� ����index��
---@param ItemID number ����ID��
---@return number @���Ŀ���иõ��ߣ��򷵻�ӵ�еĸõ��ߵ����������򷵻�0��
function Char.ItemNum(charIndex, ItemID) end

---�����������Ƿ���Ŀ����
---@param charIndex number Ŀ��� ����index��
---@param petId number �����ID
---@return number @���Ŀ���иó���ĳ���λ��(0-4)��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.HavePet(charIndex, petId) end

---Ϊ��������һֻ�ȼ�Ϊ1�ɳ������PetID�ĳ��
---@param charIndex number Ŀ��� ����index��
---@param petId number �����ID
---@return number @�����ɹ��򷵻�Ŀ�����Ķ���index�����򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.AddPet(CharIndex, PetID) end

---Ϊ��������һֻ�ȼ�Ϊ1��PetID���
---@param charIndex number Ŀ��� ����index��
---@param petId number �����ID
---@param FullBP number 1��ʾ�����������0��ʾ�������������д�ò����������
---@return number @�����ɹ��򷵻�Ŀ�����Ķ���index�����򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.GivePet(CharIndex,PetID,FullBP) end

---��ȡĿ��λ�õĳ������index��
---@param CharIndex number Ŀ��� ����index��
---@param Slot number �����λ�ã���Χ0-4��
---@return number @���Ŀ���иó���ĳ������index��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��λ�ó�����Χ(0-4)����-4��
function Char.GetPet(CharIndex, Slot) end

---ɾ�������������������ĳ��
---@param charIndex number Ŀ��� ����index��
---@param PetID number �����ID
---@param Level number ����ĵȼ���
---@param LevelSetting number 0Ϊɾ��һֻС�ڵ���Level�ĳ��1Ϊɾ��һֻ����Level�ĳ��2Ϊɾ��һֻ���ڵ���Level�ĳ��
---@return number @����ɾ������0�����򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.DelPet(CharIndex, PetID, Level, LevelSetting) end

---ɾ��Ŀ��ָ����λ�ĳ��
---@param charIndex number Ŀ��� ����index��
---@param Slot number �����λ�ã���Χ0-4��
---@return number @�ɹ�ɾ������1��ʧ�ܷ���0������λ�ó�����Χ(0-4)����-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.DelSlotPet(CharIndex, Slot) end

---��������ĳ���������
---@param charIndex number Ŀ��� ����index��
---@return any @����Ŀ��ĳ�����������Χ0-5��
function Char.PetNum(charIndex) end

---����Ŀ��ָ����λ�ĳ��
---@param charIndex number Ŀ��� ����index��
---@param Slot number �����λ�ã���Χ0-4��
---@return number @�ɹ���������1��ʧ�ܷ���0�������λ�÷�Χ����(0-4)����-1�������������Ͳ��Է���-2������index��Ч����-3����λ�û�ȡ�ĳ�����󷵻�-4��
function Char.DropPet(charIndex, slot) end

---�������͵�ָ�����괦��
---@param CharIndex  number Ŀ��� ����index��
---@param MapID  number MapID��
---@param FloorID  number FloorID��
---@param X  number X����
---@param Y  number Y����
---@return any @
function Char.Warp(CharIndex, MapType, FloorID, X, Y) end

---��ȡ���������е����������
---@param CharIndex  number Ŀ��� ����index��
---@return number @����е��������������ӷ���-1�����򷵻������������ȡʧ�ܷ���0�������������Ͳ��Է���-2������index��Ч����-3��
function Char.PartyNum(CharIndex) end

---��ȡ���������е�ָ������
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number �Ŷ��е�λ�ã�ȡֵ0-4
---@return number @����ָ��λ�õ���ҵĶ���index�����û������򷵻�-1����ȡʧ�ܷ���0�������������Ͳ��Է���-2������index��Ч����-3������Ŷ��е�λ�ó�����Χ(0-4)����-4��
function Char.GetPartyMember(CharIndex,Slot) end

---��ɢ��ҵ��Ŷӡ�
---@param CharIndex  number Ŀ�����index��
---@return number @����1����ɹ�������0ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.DischargeParty(CharIndex) end

---��ȡ�ȼ�Level-1���ȼ�Level����ľ��顣
---@param Level  number �ȼ�Level��
---@return number @Level-1���ȼ�Level����ľ��飬����ĵȼ�����С�ڵ���0�򷵻�-1�������������Ͳ��Է���-2��
function Char.GetLevelExp(Level) end

---��ȡ�������һ�����辭�顣
---@param CharIndex  number Ŀ��� ����index��
---@return number @��һ�����辭�飬����ĵȼ�����С�ڵ���0�򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.LevelExp(CharIndex) end

---��ȡ�������һ�����辭�顣
---@param CharIndex  number Ŀ��� ����index��
---@return number @��һ�����辭�飬����ĵȼ�����С�ڵ���0�򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetNextExp(CharIndex) end

---ΪĿ���������ָ�����ܣ�ָ����ʼ���飩��
---@param CharIndex  number Ŀ��� ����index��
---@param SkillID  number ���ܵ�ID����ӦSkill.txt��id��
---@param SkillExp  number ���ܵĳ�ʼ����ֵ�������д��Ϊ0��
---@return number @����ɹ��򷵻����ӵļ�������λ�ã���Χ0-14�����ʧ���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3�����ܵ�ID���󷵻�-4��
function Char.AddSkill(CharIndex,SkillID,SkillExp) end

---ɾ��Ŀ����ҵ�ָ�����ܡ�
---@param CharIndex  number Ŀ��� ����index��
---@param SkillID  number ���ܵ�ID����ӦSkill.txt��id��
---@return number @����ɹ�ɾ�������򷵻ظü���ԭ���ļ�������λ�ã���Χ0-14�����ʧ���򷵻�-1�� |  | ������û�иü��ܣ�Ҳ����-1�� |  | �����������Ͳ��Է���-2������index��Ч����-3�����ܵ�ID���󷵻�-4��
function Char.DelSkill(CharIndex,SkillID) end

---��ȡָ����ҵ�ָ������λ�õļ��ܵȼ���
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã�����Char.HaveSkill����ȡλ�á�
---@return number @�ɹ����ؼ��ܵȼ�,ʧ�ܷ���-1�������������Ͳ��Է���-2������index��Ч����-3�����ܵ�λ�ô��󷵻�-4��
function Char.GetSkillLevel(CharIndex,Slot) end

---��ȡָ����ҵ�ָ������λ�õļ��ܵȼ���
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã�����Char.HaveSkill����ȡλ�á�
---@return number @�ɹ����ؼ��ܵȼ�,ʧ�ܷ���-1�������������Ͳ��Է���-2������index��Ч����-3�����ܵ�λ�ô��󷵻�-4��
function Char.GetSkillLv(CharIndex,Slot) end

---��ȡָ����ҵ�ָ�����ܵ�λ�á�
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����ID����skill.txt�������Ӧ��
---@return number @����-1����ʧ�ܣ�����Ϊ������λ�ã������������Ͳ��Է���-2������index��Ч����-3�����ܵ�ID���󷵻�-4��
function Char.HaveSkill(CharIndex,SkillID) end

---��ȡָ����ҵ�ָ��λ�õļ���ID��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã����ܴ�����������ļ�����λ������
---@return number @����-1����ʧ�ܣ�����Ϊ����ID����skill.txt�������Ӧ�������������Ͳ��Է���-2������index��Ч����-3������λ�ó�����Χ����-4��
function Char.GetSkillID(CharIndex,Slot) end

---��ȡָ����ҵ�ָ��λ�õļ���ID��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã����ܴ�����������ļ�����λ������
---@return number @����-1����ʧ�ܣ�����Ϊ����ID����skill.txt�������Ӧ�������������Ͳ��Է���-2������index��Ч����-3������λ�ó�����Χ����-4��
function Char.GetSkillId(CharIndex,Slot) end

---��ȡָ����ҵ�ָ������λ�õļ��ܾ��顣
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã�����Char.HaveSkill����ȡλ�á�
---@return number @�ɹ����ؼ��ܾ���,ʧ�ܷ���-1�������������Ͳ��Է���-2������index��Ч����-3�����ܵ�λ�ô��󷵻�-4��
function Char.GetSkillExp(CharIndex,Slot) end

---��ȡָ����ҵ�ָ������λ�õļ��ܵȼ���
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã�����Char.HaveSkill����ȡλ�á�
---@param Level  number �µļ��ܵȼ���
---@return number @�ɹ������¼��ܵȼ�,ʧ�ܷ���-1������Ĳ����������Ͳ��Է���-2������index��Ч����-3�����ܵ�λ�ô��󷵻�-4��������µȼ�С��1�򷵻�-5��
function Char.SetSkillLevel(CharIndex,Slot,Level) end

---��ȡָ����ҵ�ָ������λ�õļ��ܾ��顣
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number ����λ�ã�����Char.HaveSkill����ȡλ�á�
---@param Level  number �µļ��ܾ��顣
---@return number @�ɹ������µļ��ܾ���,ʧ�ܷ���-1������Ĳ����������Ͳ��Է���-2������index��Ч����-3�����ܵ�λ�ô��󷵻�-4��������¾���С��1�򷵻�-5��
function Char.SetSkillExp(CharIndex,Slot,Level) end

---��ȡָ����ҵļ���ID��
---@param CharIndex  number Ŀ��� ����index��
---@return number @�ɹ�������Ҽ���ID������-1����û�м��壬�����������Ͳ��Է���-2������index��Ч����-3��
function Char.GetGuildID(CharIndex) end

---��ȡָ����Ҽ���ĳƺ�ID��
---@param CharIndex  number Ŀ��� ����index��
---@return number @�ɹ�������Ҷ��󼤻�ĳƺ�ID������-1����ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetTitle(CharIndex) end

---��ȡָ����ҵ�ǰս��index��
---@param CharIndex  number Ŀ��� ����index��
---@return number @�ɹ����ص�ǰս��index������-1����û��ս���������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetBattleIndex(CharIndex) end

---��ȡָ������Ķ���ָ�룬ָ��Ϊ�ڴ��ַ�������������ʹ������ʹ�á�
---@param CharIndex  number Ŀ��� ����index��
---@return number @����-1����ʧ�ܣ�����Ϊ������ڴ��ַ��
function Char.GetCharPointer(CharIndex) end

---��ȡ��Ҷ����������ָ��λ�õĳ������index��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number �������е�λ�ã���Χ0-4��
---@return number @���Ŀ���иó���ĳ������index��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3�������λ�÷�Χ���󷵻�-4��
function Char.GetHousePet(CharIndex,Slot) end

---��ȡ��Ҷ���������ָ��λ�õĳ������index��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number �����е�λ�ã���Χ0-4��
---@return number @���Ŀ���иó���ĳ������index��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3�������λ�÷�Χ���󷵻�-4��
function Char.GetPoolPet(CharIndex,Slot) end

---��ȡ��Ҷ����������ָ��λ�õĵ��߶���index��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number �������е�λ�ã���Χ0-19��
---@return number @���Ŀ�����򷵻ص��߶���index��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3�����ߵ�λ�÷�Χ���󷵻�-4��
function Char.GetHouseItem(CharIndex,Slot) end

---��ȡ��Ҷ����������ָ��λ�õĵ��߶���index��
---@param CharIndex  number Ŀ��� ����index��
---@param Slot  number �����е�λ�ã�������Χ0-19��̨����Χ0-39��������Χ0-79��
---@return number @���Ŀ�����򷵻ص��߶���index��û���򷵻�-1�������������Ͳ��Է���-2������index��Ч����-3�������е���λ�÷�Χ���󷵻�-4��
function Char.GetPoolItem(CharIndex,Slot) end

---��ȡ��Ҷ�������Ƿ��ڴ�״̬��
---@param CharIndex  number Ŀ��� ����index��
---@return number @1�ڴ򿨣�0���ڴ򿨣������������Ͳ��Է���-2������index��Ч����-3��
function Char.IsFeverTime(CharIndex) end

---��ʼ��Ҵ�״̬��
---@param CharIndex  number Ŀ��� ����index��
---@return number @1�򿨳ɹ���0��ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.FeverStart(CharIndex) end

---������Ҵ�״̬��
---@param CharIndex  number Ŀ��� ����index��
---@return number @1�����򿨳ɹ���0������ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.FeverStop(CharIndex) end

---Ϊ����index��������ǰ�¼��Ļص�����������������ǰ�ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharWalkPreCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetWalkPreEvent(Dofile,FuncName,CharIndex) end

---WalkPreEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����1ִ�����ߣ�����0����ȡ����
function CharWalkPreCallBack(CharIndex) end

---Ϊ����index�������ߺ��¼��Ļص����������������ߺ�ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharWalkPostCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetWalkPostEvent(Dofile,FuncName,CharIndex) end

---WalkPostEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function CharWalkPostCallBack(CharIndex) end

---Ϊ����index���ø�������������¼��Ļص������������ڸ������������ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[PostOverEventCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetPostOverEvent(Dofile,FuncName,CharIndex) end

---PostOverEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param TargetCharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function CharIndex, TargetCharIndex) end

---Ϊ����index����ѭ���¼��Ļص��������¼���ÿ��Intervalʱ��ѭ�������ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharLoopCallBack]
---@param CharIndex  number ���õĶ���index��
---@param Interval  number ѭ���������λ���롣
---@return any @
function Char.SetLoopEvent(Dofile,FuncName,CharIndex,Interval) end

---LoopEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function CharLoopCallBack(CharIndex) end

---Ϊ����index���öԻ������¼��Ļص������������ڿ����Ի���ʱ��ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharWalkPreCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetTalkedEvent(Dofile,FuncName,CharIndex) end

---TalkedEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ����NPC��
---@param TalkerCharIndex  number �����¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ������ң�
---@return any @
function CharTalkedCallBack(CharIndex, TalkerCharIndex) end

---Ϊ����index���öԻ��¼��Ļص������������ڽ��жԻ�������ʱ��ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharWindowTalkedCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetWindowTalkedEvent(Dofile,FuncName,CharIndex) end

---WindoxTalkedEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ����NPC��
---@param TalkerCharIndex  number �����¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ������ң�
---@param SeqNo  number ��Դ�Ի����ID����ֵ��NLG.ShowWindowTalked�еĶ���Ӧ�ö�Ӧ��
---@param Select  number ��������µİ�ť��ֵ��ѡ����е�ѡ���ֵ��
---@param Data  string �ͻ��������ݻ�����ֵ�����ֵ�����ݲ�ͬ�Ĵ������Ͷ���ͬ��
---@return any @
function CharWindowTalkedCallBack(CharIndex, TalkerCharIndex,SeqNo,Select,Data) end

---Ϊ����index���ö��������¼��Ļص������������ڶ������ߵ�ʱ��ᴥ���ú�������Lua���潫Callback�Ĳ������ݸ�ָ����Callback��ִ�С�
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharItemPutCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetItemPutEvent(Dofile,FuncName,CharIndex) end

---ItemPutEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ����NPC��
---@param ItemIndex  number �������ĵ���index����ֵ��Lua���洫�ݸ�����������һ������ң�
---@return any @
function CharItemPutCallBack(CharIndex, ItemIndex) end

---������ʱ����
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[CharWatchCallBack]
---@param CharIndex  number ���õĶ���index��
---@return any @
function Char.SetWatchEvent(Dofile, FuncName, CharIndex) end

---WatchEvent�ص�����
---@param CharIndex  number ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ�����������һ����NPC��
---@param ItemIndex  number �������ĵ���index����ֵ��Lua���洫�ݸ�����������һ������ң�
---@return any @
function CharWatchCallBack(CharIndex, ItemIndex) end

---���walkpostevent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetWalkPostEvent(charIndex) end

---���WalkPreEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetWalkPreEvent(charIndex) end

---���PostOverEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetPostOverEvent(charIndex) end

---���LoopEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetLoopEvent(charIndex) end

---���TalkedEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetTalkedEvent(charIndex) end

---���WindowTalkedEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetWindowTalkedEvent(charIndex) end

---���ItemPutEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetItemPutEvent(charIndex) end

---���WatchEvent
---@param CharIndex  number Ŀ��� ����index��
---@return any @
function Char.UnsetWatchEvent(charIndex) end

---����ɫ�Ƿ���빫��
---@param CharIndex  number Ŀ��� ����index��
---@return number @���Ŀ���й��ᣬ�򷵻�1��û���򷵻�-1��
function Char.HaveGuild(CharIndex) end

---ˢ����ҵĳƺţ��簢�ɡ�
---@param CharIndex  number Ŀ��� ����index��
---@return number @ˢ����ҳƺţ�����-1ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.CheckTitle(CharIndex) end

---��ȡ�Զ������ݣ����浽���ݿ⣩
---@param charIndex number Ŀ��� ����index��
---@param dataIndex string ��Ϣ�����λ�ã��Զ���
---@return string @���ָ��λ�õ��ַ���
function Char.GetExtData(charIndex, dataIndex) end

---�����Զ������ݣ����浽���ݿ⣩
---@param charIndex number Ŀ��� ����index��
---@param dataIndex string ��Ϣ�����λ�ã��Զ���
---@param value string �洢����Ϣ
---@return any @
function Char.SetExtData(charIndex, dataIndex, value) end

---��ȡ�Զ������ݣ������浽���ݿ⣩
---@param charIndex number Ŀ��� ����index��
---@param dataIndex string ��Ϣ�����λ�ã��Զ���
---@return string @���ָ��λ�õ��ַ���
function Char.GetTempData(charIndex, dataIndex) end

---�����Զ������ݣ������浽���ݿ⣩
---@param charIndex number Ŀ��� ����index��
---@param dataIndex string ��Ϣ�����λ�ã��Զ���
---@param value string �洢����Ϣ
---@return any @
function Char.SetTempData(charIndex, dataIndex, value) end

---��ɫ�Ƿ��з���itemId�����ĵ���
---@param charIndex number Ŀ��� ����index��
---@param itemId number ����ID
---@return number @��һ������������itemIndex
function Char.HaveItemID(charIndex, itemId) end

---��ɫ�Ƿ��з���itemId�����ĵ��ߣ�������λ��
---@param charIndex number Ŀ��� ����index��
---@param itemId number ����ID
---@return any @��һ�����������ĵ�����
function Char.HaveItemPos(charIndex, itemId) end

---���ָ����������itemIndex
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@return number @���Ŀ����λ�е��ߣ��򷵻ص���index�����򷵻� -1: ����ָ����� -2: �������޵��� -3: ������Χ��
function Char.GetItemIndex(charIndex, slot) end

---����ָ���������ĵ���ΪitemIndex,����Item.MakeItem(itemId)����
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@param itemIndex number ���ߵ� index
---@return any @
function Char.SetItemIndex(charIndex, slot, itemIndex) end

---��������ָ���������ĵ���ΪitemIndex������Item.MakeItem(itemId)����
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@param itemIndex number ���ߵ� index
---@return any @
function Char.SetPoolItem(charIndex, slot, itemindex) end

---ɾ������ָ���������ĵ���
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@return any @
function Char.RemovePoolItem(charIndex, slot) end

---�ѵ��߽��׸�ָ�����
---@param fromChar number ��˭���Ͻ���ȥ ����index
---@param slot integer ������λ�ã���Χ8-27
---@param toChar number ���׸�˭ ����index
---@return any @
function Char.TradeItem(fromChar, slot, toChar) end

---����λ��ɾ����Ʒ
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@return any @
function Char.DelItemBySlot(CharIndex, Slot) end

---�ƶ���Ʒ
---@param charIndex number Ŀ��� ����index��
---@param fromSlot number �ƶ��Ǹ���Ʒ��ȡֵ0-27
---@param toSlot number �ƶ����Ǹ�λ��, ȡֵ0-27
---@param amount number �����������ƶ�ȡֵ��Ϊ-1
---@return any @
function Char.MoveItem(charIndex, fromSlot, toSlot, amount) end

---��ѯ��ɫ���Ͻ������
---@param charIndex number Ŀ��� ����index��
---@return any @��ɫ���Ͻ������
function Char.GetGold(charIndex) end

---���½�ɫ״̬��Ϣ
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.UpCharStatus(charIndex) end

---�ƶ���ɫ��NPC
---@param charIndex number Ŀ��� ����index��
---@param walkArray number[] �ƶ��б�ȡֵ0-7��Ӧ CONST����ķ��򣬲����鳬��5���ƶ�
---@return any @
function Char.MoveArray(charIndex, walkArray) end

---��ȡһ��ΨһID
---@param charIndex number Ŀ��� ����index��
---@return number @��ɫUUID
function Char.GetUUID(charIndex) end

---���㼼�������ħ��
---@param charIndex number Ŀ��� ����index��
---@param techId number tech.txt�е�ID
---@return number @techId�ͷ���Ҫ��ħ��ֵ
function Char.CalcConsumeFp(charIndex, techId) end

---�����ɫ���ݵ����ݿ�
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.SaveToDb(charIndex) end

---��ѯ��ɫ�����еĳƺ�ID
---@param charIndex number Ŀ��� ����index��
---@return number @����-1����û�м��壬����Ϊ��Ҽ����еĳƺ�ID�������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetGuildTitle(charIndex) end

---��ѯ��ҳƺ�index
---@param charIndex number Ŀ��� ����index��
---@return number @��ҳƺ�index
function Char.GetTitleIndex(charIndex) end

---��ó���enemyId
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@return number @����enemyId
function Char.GetPetEnemyId(charIndex, slot) end

---���ó���ս��״̬
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@param state number ����״̬����ӦCONST.PET_STATE_*
---@return any @
function Char.SetPetDepartureState(charIndex, slot, state) end

---���ó���ս��״̬(����)
---@param charIndex number Ŀ��� ����index��
---@param state1~5 number ����״̬����ӦCONST.PET_STATE_*
---@return any @
function Char.SetPetDepartureStateAll(charIndex, pet1State, pet2State, pet3State, pet4State, pet5State) end

---ֱ�ӽ��׳���
---@param fromChar integer ��˭���Ͻ��� CharIndex
---@param slot integer ������λ�ã�0-4
---@param toChar integer ���׸�˭ CharIndex
---@return any @
function Char.TradePet(fromChar, slot, toChar) end

---�ƶ�����
---@param charIndex number Ŀ��� ����index��
---@param frslot number �ƶ�ǰ������λ�ã�0-4
---@param toslot number �ƶ��������λ�ã�0-4
---@return any @
function Char.MovePet(charIndex, frslot, toslot) end

---������ӣ����Ӿ���
---@param sourceIndex number ��Աindex
---@param targetIndex number �ӳ�index
---@param arg boolean �Ƿ�������ӿ���
---@return any @
function Char.JoinParty(sourceIndex, targetIndex, arg) end

---�뿪����
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.LeaveParty(charIndex) end

---��ý�ɫ��������װ��ID
---@param charIndex number Ŀ��� ����index��
---@param slot number ������λ��
---@return number @��ɫ��������װ��ID
function Char.GetSuitId(charIndex, slot) end

---��ɫ������װ������
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.GetSuitCount(charIndex) end

---��������
---@param charIndex number Ŀ��� ����index��
---@return number @����index
function Char.CreateDummy(charIndex) end

---����Ƿ����
---@param charIndex number Ŀ��� ����index��
---@return any @true�����ˣ�false�����Ǽ���
function Char.IsDummy(charIndex end

---���Ϊ����
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.SetDummy(charIndex) end

---ɾ������
---@param charIndex number Ŀ��� ����index��
---@return any @
function Char.DelDummy(charIndex) end

---�鿴��ɫ�ĳ��ⷿfloor
---@param charIndex number �����index
---@return number @�ɹ����س��ⷿfloor��ʧ�ܷ���-1
function Char.GetMyRoomFloor(charIndex) end

