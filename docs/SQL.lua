---ִ��ָ����Mysql��ѯ��
---@param QueryString  string Ҫִ�е�Mysql��ѯ��䡣
---@return number|table @�����ѯ�����ΪINSERT, DELETE�ȣ��򷵻�0Ϊ�ɹ�������ʧ�� | �����ѯ�����ΪSELECT, �򷵻�nilΪ�޽��������TableΪ�ɹ� | Table�м���ѯ�Ľ�� table[a_b]aΪ������bΪ����
function SQL.Run(QueryString) end

---ִ��ָ����Mysql��ѯ��
---@param QueryString  string Ҫִ�е�Mysql��ѯ��䡣
---@return number|table @�����ѯ�����ΪINSERT, DELETE�ȣ��򷵻�0Ϊ�ɹ�������ʧ�� | �����ѯ�����ΪSELECT, �򷵻�nilΪ�޽��������TableΪ�ɹ� | Table�м���ѯ�Ľ�� table[a_b]aΪ������bΪ����
function SQL.Query(QueryString) end

---ִ��ָ����Mysql��ѯ��
---@param sql string sql
---@vararg string|number �󶨲��������40��
---@return {status:number,effectRows:number,rows:table} @���ز�ѯ����
function SQL.QueryEx(sql, ...) end

