---@alias �ַ��� string
---@alias ��ֵ�� number


---��ʼ��Http������
---@param 
---@return any 
function Http.Init() end

---����Http����
---@param addr string ����IP,����  "0.0.0.0"
---@param port integer �˿� ����10000����
---@return any integer ret @1���ɹ�������Ϊʧ��
function Http.Start(addr, port) end

---�ر�Http����������Ҫע�⣬��������ֹͣ�ᵼ��������Ӧ502����ǿ�ƹر�����δ���������
---@param 
---@return any 
function Http.Stop() end

---��ȡHttp������״̬
---@param 
---@return any 0|1|2 status  @0=δ��ʼ�� 1=δ���� 2=������
function Http.GetStatus() end

---�󶨾�̬��Դ
---@param path string url��ַ
---@param dir string ����Ŀ¼
---@return any 
function Http.AddMountPoint(path, dir) end

---�Ƴ���̬��Դ
---@param path string url��ַ
---@return any 
function Http.RemoveMountPoint(path) end

