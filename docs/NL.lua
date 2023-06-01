---@alias �ַ��� string
---@alias ��ֵ�� number


---ʹ��Lua�ű�����NPC����ִ��Dofile�ļ��е�InitFuncName������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� Init����������,NPC������ִ�еĺ���,������ʽ��ο������[InitCallBack]
---@return number @�����ɹ��򷵻� ����index, ʧ���򷵻ظ���
function NL.CreateNPC(Dofile, InitFuncName) end

---CreateNPC�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function InitCallBack(CharIndex) end

---ɾ����Lua������NPC����Ҫע����ǣ�ɾ��NPC�󱾺������ὫNpcIndex��ֵ����Ϊnil�����ں��������д���NpcIndex��ֵ��
---@param NpcIndex  ��ֵ�� Ҫɾ����Npc�Ķ���ָ��
---@return number @�����ɹ��򷵻� 1, ʧ���򷵻� 0
function NL.DelNpc(NpcIndex) end

---ֱ�Ӵ���data/npc.txt��֧�ֵĸ������͵�npc������ֱ�ӵ���npc.txt֧�ֵ�npc���ͺ���Ӧ�Ĳ��������ҿ��Ի�ô�����npc�Ķ���
---@param Type  �ַ��� npc�������ı�����Сд���У����硱Itemshop2��
---@param Arg  �ַ��� ��Ӧ��npc���͵Ĳ�������npc.txt��ÿ��npc�����һ�����
---@param Name  �ַ��� npc��ʾ������
---@param Image  ��ֵ�� npc��ͼ�����
---@param Map  ��ֵ�� npc���ڵ�MapID
---@param Floor  ��ֵ�� npc���ڵ�FloorID
---@param Xpos  ��ֵ�� npc���ڵ�x����
---@param Ypos  ��ֵ�� npc���ڵ�y����
---@param Dir  ��ֵ�� npc�泯�ķ���
---@param ShowTime  ��ֵ�� ��ѡ����,NPC����ʾʱ��,�������òο��������ʿ��
---@return any @���ظ�����ʾʧ�ܣ�����0����������ʾ�ɹ������Ҹ�ֵΪnpc�Ķ�������ֵ
function NL.CreateArgNpc(Type, Arg, Name, Image, Map, Floor, Xpos, Ypos, Dir [, ShowTime]) end

---�޸�NL.CreateArgNpc������npc�Ĳ���
---@param NpcIndex  ��ֵ�� npc�Ķ���������һ��ΪNL.CreateArgNpc�ķ���ֵ
---@param NewArg  �ַ��� �µ�npc�Ĳ���
---@return any @���ظ�������ʧ�ܣ�0��ʾ�ɹ���npc���Զ�ˢ�£�ע�⣬���������Ҵ�����npc��ʱ���޸�npc�Ĳ��������ܻ����bug��Ӱ�죬�������������NPC���޸ģ�
function NL.SetArgNpc(NpcIndex, NewArg) end

---����һ��������ҵ�½��Ϸʱ���Զ�������Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ���ҵ�½���Զ�����FuncName��Lua�������ú�����������ʽ��ο�[LoginEventCallBack]
---@return any @
function NL.RegLoginEvent(Dofile, FuncName) end

---LoginEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function LoginEventCallBack(CharIndex) end

---����һ��������ҵǳ��ؼ�¼��ͻᴥ����Lua���������ֻ�е���ͻ��ˡ��ǳ��ؼ�¼�㡱��ťʱ�ſɴ����ú�����
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[LoginGateEventCallBack]
---@return any @
function NL.RegLoginGateEvent(Dofile, FuncName) end

---LoginGateEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function LoginGateEventCallBack(CharIndex) end

---����һ��������ҵǳ���Ϸ�ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[LogoutEventCallBack]
---@return any @
function NL.RegLogoutEvent(Dofile, FuncName) end

---LogoutEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function LogoutEventCallBack(CharIndex) end

---����һ���������˵���ͻᴥ����Lua�������������Ϸ��˵�����ɴ������¼������������½�ָ�GM����ȣ�ͬʱ���Զ�GM������зּ���Ȩ��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[TalkEventCallBack]
---@return any @
function NL.RegTalkEvent(Dofile, FuncName) end

---TalkEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param Msg  �ı��� �������ݣ���ֵ��Lua���洫�ݸ���������
---@param Color  ��ֵ�� ˵����ɫ����ֵ��Lua���洫�ݸ���������
---@param Range  ��ֵ�� ˵����������Χ������ֵ��Lua���洫�ݸ�������
---@param Size  ��ֵ�� ˵�������С����ֵ��Lua���洫�ݸ���������
---@return number @����0����˵�����ݣ�����1��������
function TalkEventCallBack(CharIndex, Msg, Color, Range, Size) end

---����һ��������ҽ�ɫ����������Lua�������������Ϸ�н�ɫ������Ϳɴ����������������ض��ȼ������ض���������¼��ҳ弶�ٶ����еȡ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[LevelUpCallBack]
---@return any @
function NL.RegLevelUpEvent(Dofile, FuncName) end

---LevelUpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function LevelUpCallBack(CharIndex) end

---����һ����ɫ����ս�����ɴ�����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[BattleStartEventCallBack]
---@return any @
function NL.RegBattleStartEvent(Dofile, FuncName) end

---BattleStartEvent�Ļص�����
---@param BattleIndex  ��ֵ�� ��Ӧ�¼���ս��index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function BattleStartEventCallBack(BattleIndex) end

---����һ��ս���������ɴ�����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[BattleOverEventCallBack]
---@return any @
function NL.RegBattleOverEvent(Dofile, FuncName) end

---BattleOverEvent�Ļص�����
---@param BattleIndex  ��ֵ�� ��Ӧ�¼���ս��index����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function BattleOverEventCallBack(BattleIndex) end

---����һ�����ͨ�����͵�ʱ������Lua����������������¼��ҵĴ��͹켣��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[WarpEventCallBack]
---@return any @
function NL.RegWarpEvent(Dofile, FuncName) end

---����һ�����ͨ�����͵�ʱ������Lua����������������¼��ҵĴ��͹켣��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[WarpEventCallBack]
---@return any @
function NL.RegAfterWarpEvent(Dofile, FuncName) end

---WarpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param Ori_MapId  ��ֵ�� ����ǰ��mapid����ֵ��Lua���洫�ݸ���������
---@param Ori_FloorId  ��ֵ�� ����ǰ��floor id����ֵ��Lua���洫�ݸ���������
---@param Ori_X  ��ֵ�� ����ǰ��x����ֵ��Lua���洫�ݸ���������
---@param Ori_Y  ��ֵ�� ����ǰ��y����ֵ��Lua���洫�ݸ���������
---@param Target_MapId  ��ֵ�� ���ͺ��mapid����ֵ��Lua���洫�ݸ���������
---@param Target_FloorId  ��ֵ�� ���ͺ��floor id����ֵ��Lua���洫�ݸ���������
---@param Target_X  ��ֵ�� ���ͺ��x����ֵ��Lua���洫�ݸ���������
---@param Target_Y  ��ֵ�� ���ͺ��y����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function WarpEventCallBack(CharIndex, Ori_MapId, Ori_FloorId, Ori_X, Ori_Y, Target_MapId, Target_FloorId, Target_X, Target_Y) end

---����һ��������ҵ��߾ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[DropEventCallBack]
---@return any @
function NL.RegDropEvent(Dofile, FuncName) end

---DropEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0���ɡ�
function DropEventCallBack(CharIndex) end

---����һ��������ҽ�ɫ�����ƺż��ɴ�����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[TitleChangedCallBack]
---@return any @
function NL.RegTitleChangedEvent(Dofile, FuncName) end

---TitleChangedEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param Ori_Title  ��ֵ�� ��title id����ֵ��Lua���洫�ݸ���������
---@param New_Title  ��ֵ�� ��title id����ֵ��Lua���洫�ݸ���������
---@return number @����0�����л��ƺ�,����ֵС��0�����ء�
function TitleChangedCallBack(CharIndex, Ori_Title, New_Title) end

---����һ�������ȡս������ʱ������Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[GetExpEventCallBack]
---@return any @
function NL.RegGetExpEvent(Dofile, FuncName) end

---GetExpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param Exp  ��ֵ�� ��ȡ�ľ���ֵ����ֵ��Lua���洫�ݸ���������
---@return any @���ض���Ҫ��ȡ�ľ���ֵ���粻�Ծ���ֵ�������벻Ҫдreturn������дreturn Exp; ��������ȵ��߶Ծ���ļӳ����ȣ�Ҳ����˵���߼ӳɵľ���ֵ���ڱ���������ֵ�û����ϼ���ġ�
function GetExpEventCallBack(CharIndex, Exp) end

---����һ�������ȡս�����ܾ���ʱ������Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[GetBattleSkillExpEventCallBack]
---@return any @
function NL.RegBattleSkillExpEvent(Dofile, FuncName) end

---BattleSkillExpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param SkillID  ��ֵ�� ����ID����ֵ��Lua���洫�ݸ���������
---@param Exp  ��ֵ�� ��ȡ�ľ���ֵ����ֵ��Lua���洫�ݸ���������
---@return any @����Ҫ��ȡ�ľ���ֵ���粻�Ծ���ֵ�������벻Ҫдreturn������дreturn Exp; ��������ȵ��߶Ծ���ļӳ����ȣ�Ҳ����˵���߼ӳɵľ���ֵ���ڱ���������ֵ�û����ϼ���ġ�
function GetBattleSkillExpEventCallBack(CharIndex, SkillID, Exp) end

---����һ�������ȡ�������ܾ���ʱ������Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[GetProductSkillExpEventCallBack]
---@return any @
function NL.RegProductSkillExpEvent(Dofile, FuncName) end

---GetProductSkillExpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param SkillID  ��ֵ�� ����ID����ֵ��Lua���洫�ݸ���������
---@param Exp  ��ֵ�� ��ȡ�ľ���ֵ����ֵ��Lua���洫�ݸ���������
---@return any @����Ҫ��ȡ�ľ���ֵ���粻�Ծ���ֵ�������벻Ҫдreturn������дreturn Exp; ��������ȵ��߶Ծ���ļӳ����ȣ�Ҳ����˵���߼ӳɵľ���ֵ���ڱ���������ֵ�û����ϼ���ġ�
function GetProductSkillExpEventCallBack(CharIndex, SkillID, Exp) end

---����һ����������������Lua��������ҳ�������Ϸ��������Ϳɴ����������������ض��ȼ������ض���������¼��ҳ���弶�ٶ����еȡ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[LevelUpCallBack]
---@return any @
function NL.RegPetLevelUpEvent(Dofile, FuncName) end

---PetLevelUpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@return number @����0���ɡ�
function LevelUpCallBack(CharIndex) end

---����һ����������뿪ս���ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[BattleExitCallBack]
---@return any @
function NL.RegBattleExitEvent(Dofile, FuncName) end

---BattleExitEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param BattleIndex  ��ֵ�� ս��Index����ֵ��Lua���洫�ݸ���������
---@param Type  ��ֵ�� �뿪ս���ķ�ʽ�����ֵΪ1���ʾ�����뿪������ս��ʤ����ʧ�ܡ����ܡ��ǳ����������ֵΪ2�����ʾ��ұ��ɡ���ֵ��Lua���洫�ݸ���������
---@return any @
function BattleExitCallBack(CharIndex, BattleIndex, Type) end

---����һ������Ҽ����������Ҿͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[RightClickCallBack]
---@return any @
function NL.RegRightClickEvent(Dofile, FuncName) end

---RightClickEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��������¼����Ķ���index����ֵ��Lua���洫�ݸ���������(�����¼������)
---@param TargetCharIndex  ��ֵ�� ��Ӧ�¼�������Ӧ�¼����Ķ���index����ֵ��Lua���洫�ݸ���������(���Ҽ���������)
---@return any @
function RightClickCallBack(CharIndex, TargetCharIndex) end

---����һ������������رմ������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[ShutDownCallBack]
---@return any @
function NL.RegShutDownEvent(Dofile, FuncName) end

---ShutDownEvent�Ļص�����
---@param 
---@return number @����0���ɡ�
function ShutDownCallBack() end

---����һ�������Ӵ������¼���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[PartyEventCallBack]
---@return any @
function NL.RegPartyEvent(Dofile, FuncName) end

---PartyEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ�������������Ա��
---@param TargetCharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ������������ӳ���
---@param Type  ��ֵ�� ģʽ����ӻ��Ǽ����Ŷӣ���ֵ��Lua���洫�ݸ�����������0 ������ӣ�1 �뿪��ӣ�
---@return number @����1��ʾ�������������0��ʾ��ֹ���������ʧ��/���ʧ�ܣ�
function PartyEventCallBack(CharIndex, TargetCharIndex, Type) end

---����ҽ��г����ӡ��ʱ��ᴥ�����¼������ҷ��ط�ӡ�Ľ����ͬʱLuaҲ���ԶԷ�ӡ��������޸ġ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param 
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[SealEventCallBack]
---@return any @
function NL.RegSealEvent(Dofile, FuncName) end

---SealEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param EnemyIndex  ��ֵ�� ����ӡ�Ĺ�����󣬸�ֵ��Lua���洫�ݸ���������
---@param Ret  ��ֵ�� ��ӡ�Ľ����������鿴�����RetFlg��ֵ�Ľ�������ֵ��Lua���洫�ݸ���������
---@param Ret
---@param RetFlgΪ����˶Է�ӡ�������ж������ֵ����Ϊ������Ҳ����Ϊ���������Ϊ�������ʾ��ӡʧ�ܣ����Ϊ�������ʾ��ӡ�ɹ��� ��ӡʧ�ܷ���ֵ��Ӧ������
---@param -1 ������ӡ��������ʹ���
---@param -2 ������ӡ��������Ϊ����
---@param -3 ���������û���㹻��λ
---@param -4 ����ҵȼ������Է�ӡ����
---@param -5 ������ӡ�ĳ������ٻ������Ķ���Ұ����
---@param -6 �����û�б���ӡ�����ͼ��
---@param -7 ��ʹ�õķ�ӡ�����߲�����
---@param -8 ��ʹ�õĵ��߲����Ƿ�ӡ������
---@param -9 ��ʹ�õķ�ӡ��û�в�������
---@param -10��ʹ�õķ�ӡ�����岻��ȷ
---@param -11�����ܷ�ӡаħϵ����
---@param ?-100����ӡ������ʲ��㣬��ԭ��ӡ������ʵĹ�ʽΪ abs(rate/100)-1
---@return any @����ֱ�ӷ���RetFlg������Ҳ�ɸ������󷵻��������߸���������ֵ��Ӱ����ҷ�ӡЧ��
function SealEventCallBack(CharIndex, EnemyIndex, Ret) end

---����ґ��Y�аl��ָ���ʱ��ᴥ�����¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[BattleActionEventCallBack]
---@return any @
function NL.RegBattleActionEvent(Dofile, FuncName) end

---BattleActionEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param BattleIndex  ��ֵ�� ��Ӧ�¼���ս��index����ֵ��Lua���洫�ݸ���������
---@param Com1  ��ֵ�� ���Yʹ�õĄ�����̖����ֵ��Lua���洫�ݸ���������
---@param Com2  ��ֵ�� ������Ŀ�ˌ����λ�ã���ֵ��Lua���洫�ݸ���������
---@param Com3  ��ֵ�� ��������tech��ID����ֵ��Lua���洫�ݸ���������
---@param ActionNum  ��ֵ�� �ǌ���ĵڎׄ�����ͨ���������������2����Ч��������ֵ��Lua���洫�ݸ���������
---@return any @
function BattleActionEventCallBack(CharIndex, BattleIndex, Com1, Com2, Com3, ActionNum) end

---������е�Action�¼������|�l����������ʹ�Õ�����������������ʯ�^�����ȡ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[CharActionEventCallBack]
---@return any @
function NL.RegCharActionEvent(Dofile, FuncName) end

---CharActionEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��������¼����Ķ���index����ֵ��Lua���洫�ݸ���������
---@param ActionID  ��ֵ�� ��ҵĄ���ID����ֵ��Lua���洫�ݸ���������
---@return any @
function CharActionEventCallBack(CharIndex, ActionID) end

---�����ʹ�����a�����u�����ߵĕr����|�l������ͨ�^ԓ�¼��@ȡ��Ҍ��󣬼��ܵ�ID���ȼ������ɵĵ��ߌ���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[MergeItemEventCallBack]
---@return any @
function NL.RegMergeItemEvent(Dofile, FuncName) end

---MerGeItemEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param SkillID  ��ֵ�� ���a�������õļ���ID����ֵ��Lua���洫�ݸ���������
---@param SkillLv  ��ֵ�� ���a�������õļ��ܵȼ�����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ���ɳ��ĵ��ߵČ��������-1���t��ʾ���ɵ���ʧ������ֵ��Lua���洫�ݸ���������
---@return any @
function MergeItemEventCallBack(CharIndex, SkillID, SkillLv, ItemIndex) end

---����һ�������ص��������¼�����������ص�����˼�ǣ��ڵ�������һ������������һ�����߻ᴥ�����¼���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[ItemOverLapEventCallBack]
---@return any @
function NL.RegItemOverLapEvent(Dofile, FuncName) end

---ItemOverLapEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param FromItemIndex  ��ֵ�� ��ѡ�еĵ��ߵĶ��󣬸�ֵ��Lua���洫�ݸ���������
---@param TargetItemIndex  ��ֵ�� �����ǵĵ��ߵĶ��󣬸�ֵ��Lua���洫�ݸ���������
---@param Num  ��ֵ�� ��ѡ�еĵ��ߵ���������ֵ��Lua���洫�ݸ�������
---@return number @����в����򷵻ط�0ֵ�����򷵻�0��ִ���ƶ����ߵĲ�����
function ItemOverLapEventCallBack(CharIndex, FromItemIndex, TargetItemIndex, Num) end

---����һ���û���¼��ʱ���ȡ��½����Ϣ�������¼�������¼��������Login�¼��е�ԭ�ص�½���ܣ�ֻ��Ҫ��Callback��ֱ�����ö�����������Ϣ���ɣ�����warp��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[GetLoginPointEventCallBack]
---@return any @
function NL.RegGetLoginPointEvent(Dofile, FuncName) end

---GetLOginPointEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param MapID  ��ֵ�� ��½��Map ID����ֵ��Lua���洫�ݸ���������
---@param FloorID  ��ֵ�� ��½��Floor ID����ֵ��Lua���洫�ݸ���������
---@param X  ��ֵ�� ��½��X���꣬��ֵ��Lua���洫�ݸ���������
---@param Y  ��ֵ�� ��½��Y���꣬��ֵ��Lua���洫�ݸ���������
---@return any @
function GetLoginPointEventCallBack(CharIndex, MapID, FloorID, X, Y) end

---����һ��������itemset��ʹ�õĵ���Ч���ֶΣ������ߴ������ֶ�ʱ�������Զ����ö����lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@param ItemSigh  �ַ��� Itemset�ж�Ӧ�Ĺ����ֶΣ���ʼ�������ĺ�����LUA_init��ͷ��ʹ�ô����ĺ�����LUA_use��ͷ��װ�����ߴ����ĺ�����LUA_att��ͷ��ж��װ�������ĺ�����LUA_det��ͷ�����߶���ʱ�����ĺ�����LUA_drop��ͷ������ʰȡǰ�����ĺ�����LUA_prepick��ͷ������ʰȡ�󴥷��ĺ�����LUA_pick��ͷ
---@param itemset.txt�е��Զ��庯��������Ӧ���в�ͬ.
---@param FuncName������ĺ�����������ʽ���ݲ�ͬ�ĵ���Ч������ͬ��������ο��������� 
---@param 
---@param LUA_init�� [ItemStringInitCallBack] ���߳�ʼ������,itemset.txt��4�����Զ��庯����.
---@param LUA_use �� [ItemStringUseCallBack] ����ʹ�ô���,itemset.txt��6�����Զ��庯����.
---@param LUA_att �� [ItemStringAttachCallBack] ����װ������,itemset.txt��7�����Զ��庯����.
---@param LUA_det �� [ItemStringDetachCallBack] ����ж�´���,itemset.txt��8�����Զ��庯����.
---@param LUA_drop   [ItemStringDropCallBack]���߶���ʱ����,itemset.txt��9�����Զ��庯����.
---@param LUA_prepick   [ItemStringPrePickUpCallBack]����ʰȡǰ����,itemset.txt��10�����Զ��庯����.
---@param LUA_pick  [ItemStringPickUpCallBack]����ʰȡ�󴥷�,itemset.txt��11�����Զ��庯����.
---@return any @
function NL.RegItemString(Dofile, FuncName, ItemSigh) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemStringInitCallBack(CharIndex, ItemIndex) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param TargetCharIndex  ��ֵ�� ����ʹ��Ŀ��Ķ���index��������ʹ������CharIndexֵ��ͬ����ֵ��Lua���洫�ݸ���������
---@param ItemSlot  ��ֵ�� ��Ӧ�¼��ĵ������ڵ���λ����Χ8-27����ֵ��Lua���洫�ݸ���������
---@return number @����0����
function ItemStringUseCallBack(CharIndex, TargetCharIndex, ItemSlot) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param FromItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0��ȡ������װ��,���ش��ڵ���0������װ����
function ItemStringAttachCallBack(CharIndex, FromItemIndex) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param FromItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemStringDetachCallBack(CharIndex, FromItemIndex) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemStringDropCallBack(CharIndex, ItemIndex) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0��ȡ������ʹ��,���ش��ڵ���0������ʰȡ���ߡ�
function ItemStringPrePickUpCallBack(CharIndex, ItemIndex) end

---ItemString�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemStringPickUpCallBack(CharIndex, ItemIndex) end

---����һ������������е��߳�ʼ��ʱ�ͻᴥ����Lua����,�˺�����������渺��,�����ʹ��!
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@param ֻҪע���˱��¼�,���ܵ����Ƿ����Init����,���������ᴥ��.
---@param ������������ 
---@param ��ҵ�½
---@param �������ȡ�µ���,
---@param ������
---@param �򿪹���ֿ⡣
---@return any @
function NL.RegItemInitEvent(Dofile, FuncName) end

---ItemInitEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemInitCallBack(CharIndex, ItemIndex) end

---����һ���������ʹ�õ���(����ս����)�ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemUseEvent(Dofile, FuncName) end

---ItemUseEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param TargetCharIndex  ��ֵ�� ����ʹ��Ŀ��Ķ���index��������ʹ������CharIndexֵ��ͬ����ֵ��Lua���洫�ݸ���������
---@param ItemSlot  ��ֵ�� ��Ӧ�¼��ĵ������ڵ���λ����Χ8-27����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0��ȡ������ʹ��,���ش��ڵ���0������ʹ�á�
function ItemUseCallBack(CharIndex, TargetCharIndex, ItemSlot) end

---����һ���������װ������ʱ�ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemAttachEvent(Dofile, FuncName) end

---ItemAttachEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param FromItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0��ȡ������ʹ��,���ش��ڵ���0������ʹ�á�
function ItemAttachCallBack(CharIndex, FromItemIndex) end

---����һ���������ж��װ������ʱ�ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemDetachEvent(Dofile, FuncName) end

---ItemDetachEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param FromItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @
function ItemDetachCallBack(CharIndex, FromItemIndex) end

---����һ��������Ҷ�������ʱ�ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemDropEvent(Dofile, FuncName) end

---ItemDropEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0�����ض���,���ش��ڵ���0������������
function ItemDropCallBack(CharIndex, ItemIndex) end

---����һ��������ҳɹ�ʰȡ����֮��ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemPickUpEvent(Dofile, FuncName) end

---ItemPickUpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param ItemIndex  ��ֵ�� ��Ӧ�¼��ĵ���Index����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0������ʰȡ,���ش��ڵ���0������ʰȡ��
function ItemPickUpCallBack(CharIndex, ItemIndex) end

---����һ���������չʾ(��Ϣ)����ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegPetFieldEvent(Dofile, FuncName) end

---PetFieldEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param PetIndex  ��ֵ�� ��չʾ(��Ϣ)����Ķ���index����ֵ��Lua���洫�ݸ���������
---@param PetPos  ��ֵ�� ��չʾ(��Ϣ)�ĳ���������λ����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0������չʾ,���ش��ڵ���0������չʾ(��Ϣ)��
function PetFieldCallBack(CharIndex, PetIndex, PetPos) end

---����һ��������Ҷ�������ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegPetDropEvent(Dofile, FuncName) end

---PetDropEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param PetPos  ��ֵ�� �������ĳ���������λ����ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0�����ض���,���ش��ڵ���0������������
function PetDropCallBack(CharIndex, PetPos) end

---����һ��������Ҽ������ͻᴥ����Lua������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegPetPickUpEvent(Dofile, FuncName) end

---PetPickUpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ���������ߵĶ���index����ֵ��Lua���洫�ݸ���������
---@param PetIndex  ��ֵ�� Ҫ�������Ķ�����������ֵ��Lua���洫�ݸ���������
---@return any @����ֵС��0������ʰȡ,���ش��ڵ���0���������ʰȡ����(����ǿ��ʰȡ)��
function PetPickUpCallBack(CharIndex, PetIndex) end

---ս���м����˺�ʱ�ᴥ���ú���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[DamageCalculateCallBack]
---@return any @
function NL.RegDamageCalculateEvent(Dofile, FuncName) end

---DamageCalculateEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index�������ߣ�����ֵ��Lua���洫�ݸ���������
---@param DefCharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index�������ߣ�����ֵ��Lua���洫�ݸ���������
---@param OriDamage  ��ֵ�� δ�����˺�����ֵ��Lua���洫�ݸ���������
---@param Damage  ��ֵ�� �����˺�����ʵ�˺�������ֵ��Lua���洫�ݸ���������
---@param BattleIndex  ��ֵ�� ��ǰս��index����ֵ��Lua���洫�ݸ���������
---@param Com1  ��ֵ�� ������ʹ�õĄ�����̖����ֵ��Lua���洫�ݸ���������
---@param Com2  ��ֵ�� �����߹���������Ŀ�ˌ����λ�ã���ֵ��Lua���洫�ݸ���������
---@param Com3  ��ֵ�� ������ʹ�õ���������tech��ID����ֵ��Lua���洫�ݸ���������
---@param DefCom1  ��ֵ�� ������ʹ�õĄ�����̖����ֵ��Lua���洫�ݸ���������
---@param DefCom2  ��ֵ�� �����߹���������Ŀ�ˌ����λ�ã���ֵ��Lua���洫�ݸ���������
---@param DefCom3  ��ֵ�� ������ʹ�õ���������tech��ID����ֵ��Lua���洫�ݸ���������
---@param Flg  ��ֵ�� �˺�ģʽ������鿴CONST.DamageFlags
---@return number @�˺�ֵ��ֵ��
function DamageCalculateCallBack(CharIndex, DefCharIndex, OriDamage, Damage, BattleIndex, Com1, Com2, Com3, DefCom1, DefCom2, DefCom3, Flg) end

---���ܸ��Ӳ�����ȡʱ�����ĺ���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[TechOptionCallBack]
---@return any @
function NL.RegTechOptionEvent(Dofile, FuncName) end

---TechOptionEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param Option  �ַ��� ��Ӧ�¼��ļ��ܵ�Option�ֶΣ���ֵ��Lua���洫�ݸ���������
---@param TechID  ��ֵ�� ��ǰ���ܵ�Tech ID����ֵ��Lua���洫�ݸ���������
---@param Val  ��ֵ�� ��Ӧ�ֶε�ֵ����ֵ��Lua���洫�ݸ���������
---@return number @�µ�ֵ��ֵ��
function TechOptionCallBack(CharIndex, Option, TechID, Val) end

---����һ�����н�ɫ��ʾͷ��Ч����ʱ�򴥷��ĺ�����
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[HeadCoverEventCallBack]
---@return any @
function NL.RegHeadCoverEvent(Dofile, FuncName) end

---HeadCoverEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param CurrentHeadCoverImage  ��ֵ�� �ö���ǰ��ͷ��ͼ��id����ֵ��Lua���洫�ݸ���������
---@return number @�����µ�ͷ��ͼ��id���粻������򷵻�CurrentHeadCoverImage����
function HeadCoverEventCallBack(CharIndex, CurrentHeadCoverImage) end

---����һ��������ҽ�ɫְҵ����ʱ������Lua�������������Ϸ�н�ɫְҵ������Ϳɴ����������������ض�ְҵ�ȼ������ض���������¼��ҳ弶�ٶ����еȡ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param InitFuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[RankUpCallBack]
---@return any @
function NL.RegRankUpEvent(Dofile, FuncName) end

---RankUpEvent�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index����ֵ��Lua���洫�ݸ���������
---@param OldRank  ��ֵ�� ��Ӧ�¼��Ķ���ǰְҵ�ȼ�����ֵ��Lua���洫�ݸ���������
---@param NewRank  ��ֵ�� ��Ӧ�¼��Ķ���ְҵ�������ְҵ�ȼ�����ֵ��Lua���洫�ݸ���������
---@return any @����ֵ���ڵ���0�������,����ֵΪ�����ܾ��˴ν�����
function RankUpCallBack(CharIndex, OldRank, NewRank) end

---����һ��������ĳ��ﱻϵͳɾʱ�ᴥ�����¼������ô��¼����Խ����ӳ��ó����ɾ��ʱ��Ȳ�����
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegPetTimeDeleteEvent(Dofile, FuncName) end

---PetTimeDeleteEvent�Ļص�����
---@param PetIndex  ��ֵ�� ����ʱ��ĳ�����������ֵ��Lua���洫�ݸ���������
---@return any @����ֵС�ڵ���0���������ɾ���� | ���ش���0��ó����ɾ��ʱ�佫�ᱻ�ӳ�������ֵ�趨��������ɾ����
function PetTimeDeleteCallBack(PetIndex) end

---����һ��ս��͵Ϯ֮ǰ�������¼������ô��¼����Ըı�ս����͵Ϯ��ʽ
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return nil @
function NL.RegBattleSurpriseEvent(Dofile, FuncName) end

---BattleSurpriseEvent�Ļص�����
---@param battle number ս����index
---@param result number �˴�ս����͵Ϯ��ʽ 0��͵Ϯ��1͵Ϯ��2��͵Ϯ
---@return number @����0��͵Ϯ������1͵Ϯ������2��͵Ϯ
function BattleSurpriseCallBack(battleIndex, result) end

---����һ������ʩ���ٻ�ʱ�������¼������ô��¼����Ըı��ٻ��������͵ȼ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleSummonEnemyEvent(Dofile, FuncName) end

---BattleSummonEnemyEvent�Ļص�����
---@param battle number ս����index
---@param charIndex number ʩ���ٻ���ɫ��index
---@param enemyId number �ٻ���enemyId
---@return number @�����±�� {enemyId���ȼ����ȼ�����}
function BattleSummonEnemyCallBack(battleIndex, charIndex, enemyId) end

---����һ���ٻ�������ǰ�������¼������ô��¼����Ըı��ٻ��������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleSummonedEnemyEvent(Dofile, FuncName) end

---BattleSummonedEnemy�Ļص�����
---@param battle number ս����index
---@param charIndex number ʩ���ٻ���ɫ��index
---@param charIndex number ���ٻ���ɫ��index
---@return any @
function BattleSummonedEnemyCallBack(battleIndex, actionCharIndex, charIndex) end

---����һ����ս����ǰ�������¼������ô��¼����Ըı���ս�Ĺ���͵ȼ�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return nil @
function NL.RegBattleNextEnemyEvent(Dofile, FuncName) end

---BattleNextEnemy�Ļص�����
---@param battle number ս����index
---@param flg number lua��ս����
---@return number @�����±��{enmeyId,�ȼ�,...}��10-19��λ�����У�����nilȡ����ս
function BattleNextEnemyCallBack(battleIndex, flg) end

---����һ����սħ������ǰ�������¼������ô��¼����Ըı���սħ�������
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleNextEnemyInitEvent(Dofile, FuncName) end

---BattleNextEnemyInit�Ļص�����
---@param battle number ս����index
---@param flg number lua��ս����
---@return any @
function BattleNextEnemyInitCallBack(battleIndex, flg) end

---����һ������aiִ��ǰ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBeforeBattleTurnEvent(Dofile, FuncName) end

---BeforeBattleTurnEvent�Ļص�����
---@param battleIndex number ս����index
---@return any @
function BeforeBattleTurnCallBack(battleIndex) end

---����һ������ָ���Ѿ�λ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBeforeBattleTurnStartEvent(Dofile, FuncName) end

---BeforeBattleTurnStartevent�Ļص�����
---@param battleIndex number ս����index
---@return any @
function BeforeBattleTurnStartCallBack(battleIndex) end

---����һ���غϽ����������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegAfterBattleTurnEvent(Dofile, FuncName) end

---AfterBattleTurnevent�Ļص�����
---@param battleIndex number ս����index
---@return any @
function AfterBattleTurnCallBack(battleIndex) end

---����һ����ɫ���Լ��㴥�����¼�(����װ������)
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegAfterCalcCharaBpEvent(Dofile, FuncName) end

---AfterCalcCharaBpevent�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function AfterCalcCharaBpCallBack(charIndex) end

---����һ����ɫװ�����㴥�����¼�(�������ˣ�����)
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegAfterCalcCharaStatusEvent(Dofile, FuncName) end

---AfterCalcCharaStatusevent�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function AfterCalcCharaStatusCallBack(charIndex) end

---����һ����ɫ�������Եĵ��¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegStatusCalcEvent end

---StatusCalcEvent�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function StatusCalcCallBack(charIndex) end

---����һ������ִ��AI�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegEnemyCommandEvent(Dofile, FuncName) end

---EnemyCommandEvent�Ļص�����
---@param battleIndex number ս����index
---@param side number 0 Ϊ�·���1λ�Ϸ�
---@param slot number ս����վλ
---@param action number ���غ��ж�������
---@return any @
function EnemyCommandCallBack(battleIndex, side, slot, action) end

---����һ������(�������� A|B��)����ǰ�Ĵ����¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegCheckDummyDollEvent(Dofile, FuncName) end

---CheckDummyDollEvent�Ļص�����
---@param charIndex number ��ɫ��index
---@param battleIndex number ս����index
---@param dmg number �ܵ����˺�
---@param type number �˺�����
---@return number @����1����ʹ�����ޣ�����0��������
function CheckDummyDoll(charIndex, battleIndex, dmg, type) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleInjuryEvent(Dofile, FuncName) end

---BattleInjuryEvent�Ļص��¼�
---@param fIndex number �����ߵ�index
---@param aIndex number �����ߵ�index
---@param battleIndex number ս����index
---@param inject number ���˳̶�
---@return any @�������˳̶ȣ���Χ0~100
function BattleInjuryCallBack(fIndex, aIndex, battleIndex, inject) end

---����һ��ս�����㻭�����ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegResetCharaBattleStateEvent(Dofile, FuncName) end

---ResetCharaBattleStateEvent�Ļص�����
---@param battleIndex number ս����index
---@return any @
function ResetCharaBattleStateCallBack(battleIndex) end

---����һ����ɫ����󴥷����¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegCharaSavedEvent(Dofile, FuncName) end

---CharaSavedEvent�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function CharaSavedCallBack(charIndex) end

---����һ����ɫ���ݱ���ǰ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBeforeCharaSaveEvent(Dofile, FuncName) end

---BeforeCharaSave�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function BeforeCharaSaveCallBack(charIndex) end

---����һ����ɫɾ��ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegCharaDeletedEvent(Dofile, FuncName) end

---CharaDeleted�Ļص�����
---@param charIndex number ��ɫ��index
---@return any @
function CharaDeletedCallBack(charIndex) end

---����һ��luac�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegScriptCallEvent(Dofile, FuncName) end

---ScriptCallEvent�Ļص�����
---@param npcIndex number ����npc��index
---@param playerIndex number ��ɫ��index
---@param text string ��luac������ַ���
---@param msg string ���ִ������ַ������ο�ͷĿ����
---@return any @������ֵ�����ظ�data
function ScriptCallCallBack(npcIndex, playerIndex, text, msg) end

---����һ����Ʒ���ʵ��¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegDropRateEvent(Dofile, FuncName) end

---DropRateEvent�Ļص�����
---@param enemyIndex number ħ��index
---@param itemId number
---@param rate number ������
---@return any @
function DropRateCallBack(enemyIndex,itemId,rate) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleEscapeEvent(Dofile, FuncName) end

---BattleEscapeEvent�Ļص�����
---@param battle number ս����index
---@param charIndex number ʩ���ٻ���ɫ��index
---@param rate number ���ܳɹ���
---@return any @�ɹ���
function BattleEscape(battleIndex,charIndex,rate) end

---����һ����ӡʱ�������¼������¼�����ͻ�Ʒ��������趨
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleSealRateEvent(Dofile, FuncName) end

---BattleSealRateEvent�Ļص�����
---@param battle number ս����index
---@param charIndex number ʩ�ŷ�ӡ��ɫ��index
---@param enemyIndex number ��ӡ��ħ��index
---@param rate number ��ӡ�ɹ���
---@return any @�ɹ���
function BattleSealRateCallBack(battleIndex,charIndex,enemyIndex,rate) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegCalcCriticalRateEvent(Dofile, FuncName) end

---CalcCriticalRateEvent�Ļص�����
---@param aIndex number �����ߵ�index
---@param fIndex number �����ߵ�index
---@param rate number ��ɱ��
---@return any @��ɱ��
function CalcCriticalRateCallBack(aIndex,fIndex,rate) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleDodgeRateEvent(Dofile, FuncName) end

---BattleDodgeRateEvent�Ļص�����
---@param battleIndex number ս����index
---@param aIndex number �����ߵ�index
---@param fIndex number �����ߵ�index
---@param rate number ������
---@return any @������
function BattleDodgeRateCallBack(battleIndex,aIndex,fIndex,rate) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleCounterRateEvent(Dofile, FuncName) end

---BattleCounterRateEvent�Ļص�����
---@param battleIndex number ս����index
---@param aIndex number �����ߵ�index
---@param fIndex number �����ߵ�index
---@param rate number ������
---@return any @������
function BattleCounterRateCallBack(battleIndex,aIndex,fIndex,rate) end

---����һ�����ħ���˺��������¼������ڸı�ħ���˺�ϵ��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleMagicDamageRateEvent(Dofile, FuncName) end

---BattleMagicDamageRateEvent�Ļص�����
---@param battleIndex number ս����index
---@param aIndex number �����ߵ�index
---@param fIndex number �����ߵ�index
---@param rate number ħ��ϵ��
---@return any @ħ��ϵ��
function BattleMagicDamageRateCallBack(battleIndex,aIndex,fIndex,rate) end

---����һ�����ħ���˺��������¼������ڸı�ħ��ϵ��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleMagicRssRateEvent(Dofile, FuncName) end

---BattleMagicRssRateEvent�Ļص�����
---@param battleIndex number ս����index
---@param aIndex number �����ߵ�index
---@param fIndex number �����ߵ�index
---@param rate number ħ��ϵ��
---@return any @ħ��ϵ��
function BattleMagicRssRateCallBack(battleIndex,aIndex,fIndex,rate) end

---����һ���������ɴ������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemBoxGenerateEvent(Dofile, FuncName) end

---ItemBoxGenerateEvent�Ļص�����
---@param mapId number
---@param floor number
---@param itemBoxType number ������
---@param adm number Ӱ�������Ʒ������δ֪
---@return any @number[] ���ر������ {itemBoxType, adm}
function ItemBoxGenerateCallback(mapId, floor, itemBoxType, adm) end

---����һ�������ȡ��Ʒ���¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemBoxLootEvent(Dofile, FuncName) end

---ItemBoxLootEvent�Ļص�����
---@param charaIndex number
---@param mapId number
---@param floor number
---@param X number
---@param Y number
---@param boxType number
---@param adm number
---@return number @number ����1����Ĭ����Ʒ
function ItemBoxLootCallback(charaIndex, mapId, floor, X, Y, boxType, adm) end

---����һ���������и��ʵ��¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemBoxEncountRateEvent(Dofile, FuncName) end

---ItemBoxEncountEvent�Ļص�����
---@param charaIndex number
---@param mapId number
---@param floor number
---@param X number
---@param Y number
---@param itemIndex number ������Ʒindex
---@return number @number[]|nil �������� ÿ������3���������ֱ�Ϊ id���ȼ�������ȼ��� ����nil�����أ� ���ӣ� {0, 100, 5, 1, 1, 0} ����0�Ź���100-105����1�Ź���1��
function ItemBoxEncountCallback(charaIndex, mapId, floor, X, Y, itemIndex) end

---����һ�������˺������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemTribeRateEvent(Dofile, FuncName) end

---ItemTribeRateEvent�Ļص�����
---@param a number ��������
---@param b number ��������
---@param rate number ���Ʊ���
---@return any @number �����µĿ��Ʊ���
function ItemTribeRateCallback(a, b, rate) end

---����һ��Http�����¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegHttpRequestEvent(Dofile, FuncName) end

---HttpRequestEvent�Ļص�����
---@param method string
---@param api string API����
---@param params ParamType ����
---@param body string body����
---@return any @string body ��������
function HttpRequestCallBack(method, api, params, body) end

---����һ������ʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegBattleHealCalculateEvent(Dofile, FuncName) end

---BattleHealCalculate�Ļص�����
---@param CharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index�������ߣ�����ֵ��Lua���洫�ݸ���������
---@param DefCharIndex  ��ֵ�� ��Ӧ�¼��Ķ���index�������ߣ�����ֵ��Lua���洫�ݸ���������
---@param Oriheal  ��ֵ�� δ�������ƣ���ֵ��Lua���洫�ݸ���������
---@param heal  ��ֵ�� �������ƣ���ʵ���ƣ�����ֵ��Lua���洫�ݸ���������
---@param BattleIndex  ��ֵ�� ��ǰս��index����ֵ��Lua���洫�ݸ���������
---@param Com1  ��ֵ�� ������ʹ�õĄ�����̖����ֵ��Lua���洫�ݸ���������
---@param Com2  ��ֵ�� �����߹���������Ŀ�ˌ����λ�ã���ֵ��Lua���洫�ݸ���������
---@param Com3  ��ֵ�� ������ʹ�õ���������tech��ID����ֵ��Lua���洫�ݸ���������
---@param DefCom1  ��ֵ�� ������ʹ�õĄ�����̖����ֵ��Lua���洫�ݸ���������
---@param DefCom2  ��ֵ�� �����߹���������Ŀ�ˌ����λ�ã���ֵ��Lua���洫�ݸ���������
---@param DefCom3  ��ֵ�� ������ʹ�õ���������tech��ID����ֵ��Lua���洫�ݸ���������
---@param Flg  ��ֵ�� �˺�ģʽ������鿴CONST.HealDamageFlags
---@return any @����ֵ
function BattleHealCalculateCallBack(charIndex, defCharIndex, oriheal, heal, battleIndex, com1, com2, com3, defCom1, defCom2, defCom3, flg) end

---����һ����ħʱ�������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegCalcFpConsumeEvent(Dofile, FuncName) end

---CalcFpConsume�Ļص�����
---@param charIndex number ��ɫ��index
---@param techId number ����id
---@param Fp number ��ħ��ֵ
---@return any @��ħ��ֵ
function CalcFpConsumeCallBack(charIndex,techId,Fp) end

---����һ��װ��˵�����¼��������޸���Ʒ˵��
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegItemExpansionEvent(Dofile, FuncName) end

---ItemExpansion�Ļص�����
---@param itemIndex number
---@param type number 1��Ʒ˵����2�Ҽ�˵��
---@param msg string ��Ʒ˵������
---@param charIndex number
---@param slot number ����λ��
---@return any @string ��Ʒ˵��
function ItemExpansionCallBack(itemIndex, type, msg, charIndex, slot) end

---����һ�����ƺŴ������¼�������ͨ��lua�Զ���ƺţ����巽ʽ��titleconfig.txt���������������ã�ʹ��LUAΪ�����ؼ��֣���LUA=50,=��ӦFlg�е�5,50��ӦData
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegTitleCheckCallEvent(Dofile, FuncName) end

---TitleCheckCallEvent�Ļص�����
---@param charIndex number ��ɫ��index
---@param Data number ������ֵ
---@param Flg number �����ж��� 0 <= 1 >= 2 <> 3 > 4 < 5 =
---@return number @����0�ƺ����������㣬����1�ƺ���������
function TitleCheckCallCallBack(charIndex, Data, Flg) end

---����һ���ɼ������¼�
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ָ���Lua����������
---@return any @
function NL.RegGatherItemEvent(Dofile, FuncName) end

---GatherItemEvent�Ļص�����
---@param charIndex number ��ɫ��index
---@param skillId number ����id
---@param skillLv number ���ܵȼ�
---@param itemNo number �ɼ���Id,�ο�itemset.txt
---@return number @���زɼ����Id���ο�itemset.txt | ��д����ֵʱ�ɼ�ΪĬ�Ͻ��
function GatherItemEventCallback(charIndex, skillId, skillLv, itemNo)  end

