---@alias string string
---@alias number number


---����һ��ָ��������ܵ��󴥷��ĺ���
---@param Dofile  string Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  string ������Lua���������ƣ��ú�����������ʽ��ο�[OnRecvCallBack]
---@param PacketID  number ���ͷ���壬��ο���¼��[��������]��
---@return any @
function Protocol.OnRecv(Dofile, FuncName, PacketID) end

---OnRecv�Ļص�����
---@param Fd  number ��Ӧ�¼��Ķ���������׽���ID����ֵ��Lua���洫�ݸ�������������ͨ��Protocol.GetCharByFd��ȡ��Ӧ����Ҷ���
---@param Head  number ���ͷ���壬��ο�[��������]��
---@param Packet  string ������ݣ��á� �����������ݡ�
---@return number @����0�����ظ÷��������1�����ظ÷��������˽������һ������÷������ͬ����ת������ˣ���
function OnRecvCallBack(Fd, Head, Packet) end

---������ҿͻ������ӺŻ�ȡ��Ҷ���
---@param Fd  number �����׽���ID��
---@return number @�ɹ����ض���index��ʧ�ܷ���-1��
function Protocol.GetCharByFd(Fd) end

---������ҿͻ������ӺŻ�ȡ��Ҷ���
---@param Fd  number �����׽���ID��
---@return number @�ɹ����ض���index��ʧ�ܷ���-1��
function Protocol.GetCharIndexFromFd(fd) end

---�Զ��巢�ͷ����
---@param CharIndex  number Ŀ��� ����index��
---@param PacketID  number ���ͷ���壬��ο���¼��[��������]��
---@param Packet  string ������ݡ�
---@return number @����0ʧ�ܣ�����1�ɹ���
function Protocol.Send(CharIndex, PacketID, Packet) end

---�Զ��巢�ͷ����
---@param CharIndex  number Ŀ��� ����index��
---@param PacketID  number ���ͷ���壬��ο���¼��[��������]��
---@param Packet  string ������ݡ�
---@return number @����0ʧ�ܣ�����1�ɹ���
function Protocol.SendToFd(fd, header, ...) end

---��ȡ�ͻ���IP
---@param Fd  number �����׽���ID��
---@return any @ip
function Protocol.GetIp(fd) end

---����charIndex��ȡfd
---@param charIndex number
---@return number @Fd: ��ֵ�� �����׽���ID��
function Protocol.GetFdByCharIndex(charIndex) end

---���������ַ���������Ϣ���������
---@param str string
---@return string @������ַ���
function Protocol.makeEscapeString(str) end

---���������ַ���������Ϣ���������
---@param str string
---@return string @������ַ���
function Protocol.makeStringFromEscaped(str) end

---����ַ�������
---@param str string
---@return string @������ַ���
function Protocol.nrprotoEscapeString(str) end

---����ַ�������
---@param str string
---@return string @������ַ���
function Protocol.nrprotoUnescapeString(str) end

