Char = {}

---@param charIndex number
---@param dataIndex number
---@return string | number
function Char.GetData(charIndex, dataIndex)
end

---@param charIndex number
---@param dataIndex number
---@param value string|number
---@return number
function Char.SetData(charIndex, dataIndex, value)
end

---��valueΪ0ʱ�������
---@param charIndex number
---@param flag number
---@param value number '0' | '1'
---@return void
function Char.NowEvent(charIndex, flag, value)
end
---��ȡ��ǰ����
---@param charIndex number
---@param flag number
---@return number
function Char.NowEvent(charIndex, flag)
end
---��valueΪ0ʱ�������
---@param charIndex number
---@param flag number
---@param value number '0' | '1'
---@return void
function Char.EndEvent(charIndex, flag, value)
end
---��ȡ��ǰ����
---@param charIndex number
---@param flag number
---@return number
function Char.EndEvent(charIndex, flag)
end

---@param charIndex number
---@param itemID number
---@return number ������򷵻ص�һ������ĵ�����λ�ã����û���򷵻�-1��
function Char.FindItemId(charIndex, itemID)
end

---@param charIndex number
---@param amount number
function Char.AddGold(charIndex, amount)
end

---@param charIndex number
---@param slot number
---@return number ���Ŀ����λ�е��ߣ��򷵻ص���index�����򷵻� -1: ����ָ����� -2: �������޵��� -3: ������Χ��
function Char.GetItemIndex(charIndex, slot)
end
---@param CharIndex number
---@param ItemID number
---@param Amount number
---@param ShowMsg boolean
---@return number �ɹ�����1��ʧ���򷵻�0��
function Char.DelItem(CharIndex, ItemID, Amount, ShowMsg)
end

---@param CharIndex number
---@param ItemID number
---@param Amount number
---@param ShowMsg boolean
---@return number Ŀ�����index��ʧ���򷵻ظ�����
function Char.GiveItem(CharIndex, ItemID, Amount, ShowMsg)
end

---@param CharIndex number
---@param ItemID number
---@return number ���Ŀ���иõ��ߣ��򷵻ظõ���index�����򷵻�-1��
function Char.HaveItem(CharIndex, ItemID)
end

---@param CharIndex number
---@param Slot number
---@return number ���Ŀ���У��򷵻�index�����򷵻�-1��
function Char.GetPet(CharIndex, Slot)
end

function Char.GivePet(CharIndex, PetID, FullBP)
end

---@return number ������ʹ������
function Char.ItemSlot(charIndex)
end

function Char.AddPet(CharIndex, PetID)
end
---@return number ����е��������������ӷ���-1�����򷵻������������ȡʧ�ܷ���0�������������Ͳ��Է���-2������index��Ч����-3��
function Char.PartyNum(CharIndex)
end

---@param Slot number ȡֵ0-4
---@return number ����ָ��λ�õ���ҵĶ���index�����û������򷵻�-1����ȡʧ�ܷ���0�������������Ͳ��Է���-2������index��Ч����-3������Ŷ��е�λ�ó�����Χ(0-4)����-4��
function Char.GetPartyMember(CharIndex, Slot)
end

---@return number ����1����ɹ�������0ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.DischargeParty(CharIndex)
end
---@return number �ɹ����ص�ǰս��index������-1����û��ս���������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetBattleIndex(CharIndex)
end
---@return number �ɹ�������Ҷ��󼤻�ĳƺ�ID������-1����ʧ�ܣ������������Ͳ��Է���-2������index��Ч����-3��
function Char.GetTitle(CharIndex)
end
function Char.Warp(CharIndex, MapType, FloorID, X, Y)
end

function Char.HaveSkill(CharIndex, SkillID)
end

function Char.GetSkillID(CharIndex, Slot)
end

function Char.GetSkillLv(CharIndex, Slot)
end

function Char.SetWalkPostEvent(Dofile, FuncName, CharIndex)
end

function Char.SetWalkPreEvent(Dofile, FuncName, CharIndex)
end

function Char.SetPostOverEvent(Dofile, FuncName, CharIndex)
end

function Char.SetItemPutEvent(Dofile, FuncName, CharIndex)
end

function Char.SetWatchEvent(Dofile, FuncName, CharIndex)
end

function Char.SetLoopEvent(Dofile, FuncName, CharIndex, Interval)
end

function Char.DelPet(CharIndex, PetID, Level, LevelSetting)
end

function Char.DelSlotPet(CharIndex, Slot)
end

NLG = {}
function NLG.ShowWindowTalked(ToIndex, WinTalkIndex, WindowType, ButtonType, SeqNo, Data)
end

function NLG.SystemMessage(CharIndex, Message)
end

function NLG.TalkToCli(ToIndex, TalkerIndex, Msg, FontColor, FontSize)
end

function NLG.CanTalk(npc, player)
end

function NLG.UpChar(CharIndex)
end

function NLG.c(str)
end

Pet = {}
function Pet.ReBirth(PlayerIndex, PetIndex)
end

function Pet.SetArtRank(PetIndex, ArtType, Value)
end

function Pet.GetArtRank(PetIndex, ArtType)
end

function Pet.UpPet(PlayerIndex, PetIndex)
end

Item = {}
function Item.GetData(ItemIndex, Dataline)
end

function Item.SetData(ItemIndex, Dataline, value)
end

function Item.UpItem(CharIndex, Slot)
end

function Item.Kill(CharIndex, ItemIndex, Slot)
end

Battle = {}
---@param BattleIndex number ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Slot number ս�����������λ��,��Χ0-19������0-9Ϊ�·�ʵ�����У�10-19Ϊ�Ϸ�ʵ�����С�
---@return number ����-1ʧ�ܣ��ɹ����ض���ʵ���� ����index�������������Ͳ��Է���-2��ս��index��Ч����-3��ս�����������λ�÷�Χ���󷵻�-4��
function Battle.GetPlayer(BattleIndex, Slot)
end
---@param BattleIndex number ս��index��ΪEncount��PVE��PVP�����ķ���ֵ��
---@param Slot number ս�����������λ��,��Χ0-19������0-9Ϊ�·�ʵ�����У�10-19Ϊ�Ϸ�ʵ�����С�
---@return number ����-1ʧ�ܣ��ɹ����ض���ʵ���� ����index�������������Ͳ��Է���-2��ս��index��Ч����-3��ս�����������λ�÷�Χ���󷵻�-4��
function Battle.GetPlayIndex(BattleIndex, Slot)
end
function Battle.Encount(UpIndex, DownIndex)
end
---@param CharIndex number
---@param CreatePtr number
---@param DoFunc string
---@param EnemyIdAr number[]
---@param BaseLevelAr number[]
---@param RandLv number[]
function Battle.PVE(CharIndex, CreatePtr, DoFunc, EnemyIdAr, BaseLevelAr, RandLv)
end
function Battle.PVP(UpIndex, DownIndex)
end
function Battle.SetType(BattleIndex, Type)
end
---@return number
function Battle.GetType(BattleIndex)
end
function Battle.SetGainMode(BattleIndex, Mod)
end
function Battle.GetGainMode(BattleIndex)
end
---@return number ȡֵ0����1�� 0��ʾս���·�����0-9λ�õ���ң�1��ʾ�Ϸ�����10-19λ�õ���ҡ�
function Battle.GetWinSide(BattleIndex)
end
function Battle.SetWinEvent(DoFile, FuncName, BattleIndex)
end
function Battle.ExitBattle(CharIndex)
end
function Battle.SetPVPWinEvent(DoFile, FuncName, BattleIndex)
end
_G.Field = {}
function Field.Get(CharIndex, Field)
end
function Field.Set(CharIndex, Field, Value)
end

_G.NL = {}

function NL.CreateNPC(Dofile, InitFuncName)
end

function NL.DelNpc(NpcIndex)
end

function NL.CreateArgNpc(Type, Arg, Name, Image, Map, Floor, Xpos, Ypos, Dir, ShowTime)
end

function NL.SetArgNpc(NpcIndex, NewArg)
end

_G.NLG = {}

function NLG.TalkToMap(Map, Floor, TalkerIndex, Msg, FontColor, FontSize)
end
