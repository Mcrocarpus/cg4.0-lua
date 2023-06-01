---��ʼ��Http������
---@return any @
function Http.Init() end

---����Http����
---@param addr string ����IP,����  "0.0.0.0"
---@param port integer �˿� ����10000����
---@return number @1���ɹ�������Ϊʧ��
function Http.Start(addr, port) end

---�ر�Http����������Ҫע�⣬��������ֹͣ�ᵼ��������Ӧ502����ǿ�ƹر�����δ���������
---@return number @
function Http.Stop() end

---��ȡHttp������״̬
---@return 0|1|2 @0=δ��ʼ�� 1=δ���� 2=������
function Http.GetStatus() end

---�󶨾�̬��Դ
---@param path string url��ַ
---@param dir string ����Ŀ¼
---@return number @
function Http.AddMountPoint(path, dir) end

---�Ƴ���̬��Դ
---@param path string url��ַ
---@return number @
function Http.RemoveMountPoint(path) end

