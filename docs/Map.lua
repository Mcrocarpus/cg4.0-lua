---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡ�Թ�Id
---@param floor integer
---@return number �Թ�id
function Map.GetDungeonId(floor) end

---��ȡ�Թ����
---@param dungeonId �Թ�id
---@return any number mapType, number floor, number x, number y
function Map.FindDungeonEntry(dungeonId) end

---��ȡ�Թ��Ĺ���ʱ��
---@param dungeonId �Թ�id
---@return any 
function Map.GetDungeonExpireAtByDungeonId(dungeonId) end

---�����Թ�Id�����Թ�����ʱ�� 
---@param dungeonId �Թ�id
---@param time UnixTime
---@return any 
function Map.SetDungeonExpireAtByDungeonId(dungeonId, time) end

---��õ�ͼλ�õ�ͼ��
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@return any ���صذ�ͼ����������ͼ��
function Map.GetImage(Map,Floor,Xpos,Ypos) end

---�趨��ͼλ�õ�ͼ��
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@param Tile number �ذ�ͼ�� ����Ϊnull
---@param Obj number ������ͼ�� ����Ϊnull
---@return any 
function Map.SetImage(Map,Floor,Xpos,Ypos,Tile,Obj) end

---��õ�ͼ��С
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@return any ���ص�ͼ��С  ������
function Map.GetMapSize(Map,Floor) end

---�������Ƶ�ͼ���µ�ͼ��mapidΪCONST.��ͼ����_LUAMAP
---@param mapid  ��ֵ�� Ҫ���Ƶĵ�ͼ��Map ID��
---@param floor  ��ֵ�� Ҫ���Ƶĵ�ͼ��Floor ID��
---@return number �ɹ������µ�FloorID��ʧ�ܷ���-1��
function Map.MakeCopyMap(mapid, floor) end

---ɾ��Lua���ɵĵ�ͼ���ͷŵ�ͼ��š�
---@param floor  ��ֵ�� ��ͼ��Floor ID��
---@return number �ɹ�����0��ʧ�ܷ���-1��
function Map.DelLuaMap(floor) end

---���������ͼ��
---@param Dofile �ص����������ļ� �ַ���
---@param InitFuncName �ص����������������ͼ���ɳɹ��Ժ󣬻ᴥ������Ļص����� MakeMazeMapCallBack �ַ���
---@param Xsize��ͼx�������ֵ ��ֵ��
---@param Ysize ��ͼy�������ֵ ��ֵ��
---@param MapName ��ͼ�� �ַ���
---@return number �ɹ������µ�FloorID��ʧ�ܷ���-1��
function Map.MakeMazeMap(Dofile, InitFuncName,Xsize,Ysize,MapName) end

---�����Map.MakeMazeMap���������ͼ����Ļص�����
---@param FloodID  ��ֵ�� ���ɵĵ�ͼ�ı��
---@param Doneflg  ��ֵ�� ���ɵ�ͼ�Ľ���������ֵΪ1�����ɳɹ������Ϊ0������ʧ�ܡ�
---@return any 
function MapCallBack(FloorID, Doneflg) end

---��ȡ�����ͼ���õ����ꡣ
---@param mapid number ��ͼ����
---@param floor number ��ͼ
---@return number ����x�����y���꣬���ʧ����x��y��Ϊ-1��
function Map.GetAvailablePos(mapid, floor) end

---���õ�ͼ�����Ƿ����ͨ��
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@param Able number �Ƿ�ͨ��
---@return any 
function Map.SetWalkable(Map,Floor,Xpos,Ypos,Able) end

---�鿴��ͼ�����Ƿ����ͨ��
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@return number ��ͨ�з���1������ͨ�з���0
function Map.IsWalkable(Map,Floor,Xpos,Ypos) end

