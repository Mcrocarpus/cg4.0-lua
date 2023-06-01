---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡָ����ͼλ�õ�Object Index�б�
---@param MapId  ��ֵ�� �����ͼid��
---@param FloorId  ��ֵ�� ����Floor id��
---@param x  ��ֵ�� ����x��
---@param y  ��ֵ�� ����y��
---@return number ����ֵΪ2������һ������ֵΪ�������ڶ�������ֵ��lua��table���������ж���Ķ���index��
function Obj.GetObject(MapId, FloorId, X, Y) end

---����ObjIndex��� ����/����/��Ʒ�� ��������
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number ����index
function Obj.GetCharIndex(ObjectIndex) end

---��ȡָ��Object Index��Object���͡�
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return any -1���Ƿ� | 0��δʹ�� | 1����ɫ | 2������ | 3����� | 4�����͵� | 5���� | 6���ؾ�
function Obj.GetType(ObjectIndex) end

---��ȡָ��Object Index��X���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number x����
function Obj.GetX(ObjectIndex) end

---��ȡָ��Object Index��Y���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number y����
function Obj.GetY(ObjectIndex) end

---��ȡָ��Object Index��Floor ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Floor ID
function Obj.GetFloor(ObjectIndex) end

---��ȡָ��Object Index��Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Map ID
function Obj.GetMap(ObjectIndex) end

---��ȡָ��Object Index��Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Map ID
function Obj.GetMapId(ObjectIndex) end

---��ȡָ��Object Index��Warp X���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number x����
function Obj.GetWarpX(ObjectIndex) end

---��ȡָ��Object Index��Warp Y���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number y����
function Obj.GetWarpY(ObjectIndex) end

---��ȡָ��Object Index��Warp Floor ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Floor ID
function Obj.GetWarpFloor(ObjectIndex) end

---��ȡָ��Object Index��Warp Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Map ID
function Obj.GetWarpMap(ObjectIndex) end

---��ȡָ��Object Index��Warp Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return number Map ID
function Obj.GetWarpMapId(ObjectIndex) end

---��ȡָ��Objec����Ŀ�ʼʱ��(���￪ʼ���ص�ʱ��)��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@return any ��ʼʱ���timestamp��
function Obj.GetDelTime(ObjectIndex) end

---����ָ��Object Index��Object���͡�
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� ȡֵ0~6
---@param 0��δʹ��
---@param 1����ɫ
---@param 2������
---@param 3�����
---@param 4�����͵�
---@param 5����
---@param 6���ؾ�
---@return any ����ǰ������
function Obj.SetType(ObjectIndex, Value) end

---����ָ��Object Index��X���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�X����
---@return number ����ǰ��x����
function Obj.SetX(ObjectIndex, Value) end

---����ָ��Object Index��Y���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�Y����
---@return number ����ǰ��Y����
function Obj.SetY(ObjectIndex, Value) end

---����ָ��Object Index��Floor ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�FloorID
---@return number ����ǰ��Floor ID
function Obj.SetFloor(ObjectIndex, Value) end

---����ָ��Object Index��Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�MapID
---@return number ����ǰ��Map ID
function Obj.SetMap(ObjectIndex, Value) end

---����ָ��Object Index��Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�MapID
---@return number ����ǰ��Map ID
function Obj.SetMapId(ObjectIndex, Value) end

---����ָ��Object Index��Warp X���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�X����
---@return number ����ǰ��x����
function Obj.SetWarpX(ObjectIndex, Value) end

---����ָ��Object Index��Warp Y���ꡣ
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�Y����
---@return number ����ǰ��Y����
function Obj.SetWarpY(ObjectIndex, Value) end

---����ָ��Object Index��Warp Floor ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�FloorID
---@return number ����ǰ��Floor ID
function Obj.SetWarpFloor(ObjectIndex, Value) end

---����ָ��Object Index��Warp Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�MapID
---@return number ����ǰ��Map ID
function Obj.SetWarpMap(ObjectIndex, Value) end

---����ָ��Object Index��Warp Map ID��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� �µ�MapID
---@return number ����ǰ��Map ID
function Obj.SetWarpMapId(ObjectIndex, Value) end

---����ָ��Objec����Ŀ�ʼʱ��(���￪ʼ���ص�ʱ��)��
---@param ObjectIndex  ��ֵ�� Ŀ��� ���index��
---@param Value  ��ֵ�� ʱ��timestamp
---@return any ����ǰ��ʱ��
function Obj.SetDelTime(ObjectIndex, Value) end

---�Ƴ�ָ��obj
---@param objectIndex number object��index
---@return any 
function Obj.RemoveObject(objectIndex) end

---��ָ���ĵ�ͼ���������ô��͵�
---@param Map number ���͵��ͼ����
---@param Floor number ���͵��ͼ
---@param Xpos number ���͵�X����
---@param Ypos number ���͵�Y����
---@param toMap number ���ͺ��ͼ����
---@param toFloor number ���ͺ��ͼ
---@param toXpos number ���ͺ�X����
---@param toYpos number ���ͺ�Y����
---@return any 
function Obj.AddWarp(Map,Floor,Xpos,Ypos,toMap,toFloor,toXpos,toYpos) end

---��ָ���ĵ�ͼ�����ϷŽ��
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@param gold number �������
---@return any 
function Obj.AddGold(Map,Floor,Xpos,Ypos,gold) end

---��ָ���ĵ�ͼ�����Ϸ���Ʒ
---@param Map number ��ͼ����
---@param Floor number ��ͼ
---@param Xpos number X����
---@param Ypos number Y����
---@param itemIndex number ��Item.MakeItem(itemId)����ֵ
---@return any 
function Obj.AddItem(Map,Floor,Xpos,Ypos,itemIndex) end

