---@alias �ַ��� string
---@alias ��ֵ�� number


---����һ��ָ��������ܵ��󴥷��ĺ���
---@param Dofile  �ַ��� Ҫ���صĽű��ļ��������Ϊ��ǰ�ļ�������nil����
---@param FuncName  �ַ��� ������Lua���������ƣ��ú�����������ʽ��ο�[OnRecvCallBack]
---@param PacketID  ��ֵ�� ���ͷ���壬��ο���¼��[��������]��
---@return any @
function Protocol.OnRecv(Dofile, FuncName, PacketID) end

---OnRecv�Ļص�����
---@param Fd  ��ֵ�� ��Ӧ�¼��Ķ���������׽���ID����ֵ��Lua���洫�ݸ�������������ͨ��Protocol.GetCharByFd��ȡ��Ӧ����Ҷ���
---@param Head  ��ֵ�� ���ͷ���壬��ο�[��������]��
---@param Packet  �ַ��� ������ݣ��á� �����������ݡ�
---@return number @����0�����ظ÷��������1�����ظ÷��������˽������һ������÷������ͬ����ת������ˣ���
function OnRecvCallBack(Fd, Head, Packet) end

---������ҿͻ������ӺŻ�ȡ��Ҷ���
---@param Fd  ��ֵ�� �����׽���ID��
---@return number @�ɹ����ض���index��ʧ�ܷ���-1��
function Protocol.GetCharByFd(Fd) end

---������ҿͻ������ӺŻ�ȡ��Ҷ���
---@param Fd  ��ֵ�� �����׽���ID��
---@return number @�ɹ����ض���index��ʧ�ܷ���-1��
function Protocol.GetCharIndexFromFd(fd) end

---�Զ��巢�ͷ����
---@param CharIndex  ��ֵ�� Ŀ��� ����index��
---@param PacketID  ��ֵ�� ���ͷ���壬��ο���¼��[��������]��
---@param Packet  �ַ��� ������ݡ�
---@return number @����0ʧ�ܣ�����1�ɹ���
function Protocol.Send(CharIndex, PacketID, Packet) end

---�Զ��巢�ͷ����
---@param CharIndex  ��ֵ�� Ŀ��� ����index��
---@param PacketID  ��ֵ�� ���ͷ���壬��ο���¼��[��������]��
---@param Packet  �ַ��� ������ݡ�
---@return number @����0ʧ�ܣ�����1�ɹ���
function Protocol.SendToFd(fd, header, ...) end

---��ȡ�ͻ���IP
---@param Fd  ��ֵ�� �����׽���ID��
---@return any @ip
function Protocol.GetIp(fd) end

---����charIndex��ȡfd
---@param charIndex number
---@return number @Fd: ��ֵ�� �����׽���ID��
function Protocol.GetFdByCharIndex(charIndex) end

---���������ַ���������Ϣ���������
---@param str �ַ���
---@return string @������ַ���
function Protocol.makeEscapeString(str) end

---���������ַ���������Ϣ���������
---@param str �ַ���
---@return string @������ַ���
function Protocol.makeStringFromEscaped(str) end

---����ַ�������
---@param str �ַ���
---@return string @������ַ���
function Protocol.nrprotoEscapeString(str) end

---����ַ�������
---@param str �ַ���
---@return string @������ַ���
function Protocol.nrprotoUnescapeString(str) end

