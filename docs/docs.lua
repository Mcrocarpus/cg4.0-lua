---@meta _

---������Ѫ�����֣�
function cg.DisplayEnemyInfo() end

---������ͼ
function cg.SimplyWarp() end

---����ս������ָ���ʱ��
---@param time number ����ָ���ʱ�䣬��λ����
function cg.SetBattleActionTime(time) end

---�����Զ�ս���ȴ�ʱ��
---@param time number �Զ�ս���ȴ�ʱ�䣬��λ����
function cg.SetAutoBattleDelayTime(time) end

---�����������ɼ��ĵȴ�ʱ��
---@param percent number �ȴ�ʱ�䣬�ٷֱȣ�50Ϊԭ�ȴ�ʱ���50%
function cg.SetActionTime(percent) end

---����ָ����Ч
---@param seNo  number se��Чindex
function Audio.PlaySe(seNo) end

---��ָ��λ����ʾ����
---@param dispPrio  number ��ʾ���ȼ���0��ͣ�255���
---@param str  string ��������
---@param x  number ���ص������
---@param y  number ���ص�������
---@param size  number �����С
---@param color  number ������ɫ
---@param space  number ������
function Font.DrawFont(dispPrio, str, x, y, size, color, space) end

---�����������ʾ����
---@param str  string ��������
---@param size  number �����С
---@param color  number ������ɫfunction Font.DrawChatLine(str, color, size) end
function Font.DrawChatLine(str, size, color) end

---��ָ��λ����ʾͼƬ
---@param x  number ���ص������
---@param y  number ���ص�������
---@param dispPrio  number ��ʾ���ȼ���0��ͣ�255���
---@param bmpNo  number ͼ����
function Image.DrawImage(x, y, dispPrio, bmpNo) end

---��ָ��λ����ʾѡ���
---@param x1  number ���Ͻ����ص������
---@param y1  number ���Ͻ����ص�������
---@param x2  number ���½����ص������
---@param y2  number ���½����ص�������
---@param dispPrio  number ��ʾ���ȼ���0��ͣ�255���
function Image.DrawHitBox(x1, y1, x2, y2, dispPrio) end

---�����굱ǰ״̬
---@return number 
function Mouse.GetMouseOnceState() end

---�����굱ǰδ֪
---@return number @x����
---@return number @y����
function Mouse.GetMousePos() end

---����һ����Ϸ����ʱ�Զ�������Lua����, ��ս����״̬
---[@group NL.RegGaming]
---@param Dofile?  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����(�ݲ���Ч)
---@param InitFuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[LoginEventCallBack]
function NL.RegGaming(Dofile, InitFuncName) end

---Gaming�Ļص�����
---[@group NL.RegGaming]
function GamingCallBack() end

---����һ��ָ����CLTLUA���ͷ�󴥷��ĺ���
---[@group Protocol.OnRecv]
---@param Dofile?  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[OnRecvCallBack]
function Protocol.OnRecv(Dofile, FuncName) end

---OnRecv�Ļص�����
---[@group Protocol.OnRecv]
---@param Head  string ���ͷ CLTLUA
---@param Packet  string �������
function OnRecvCallBack(Head, Packet) end

---����������ͷ������֧��CLTLUA���ͷ
---@param str  string Ŀ��� ������ݣ�����Ҫ���CLTLUA���ͷ
function Protocol.SendToServer(str) end


