---@alias string string
---@alias number number


---ִ��ָ����Mysql��ѯ��
---@param QueryString  string Ҫִ�е�Mysql��ѯ��䡣
---@return number @�����ѯ�����ΪINSERT, DELETE�ȣ��򷵻�0Ϊ�ɹ�������ʧ�� | �����ѯ�����ΪSELECT, �򷵻�nilΪ�޽��������TableΪ�ɹ� | Table�м���ѯ�Ľ�� table[a_b]aΪ������bΪ����
function SQL.Run(QueryString) end

---ִ��ָ����Mysql��ѯ��
---@param QueryString  string Ҫִ�е�Mysql��ѯ��䡣
---@return number @�����ѯ�����ΪINSERT, DELETE�ȣ��򷵻�0Ϊ�ɹ�������ʧ�� | �����ѯ�����ΪSELECT, �򷵻�nilΪ�޽��������TableΪ�ɹ� | Table�м���ѯ�Ľ�� table[a_b]aΪ������bΪ����
function SQL.Query(QueryString) end

---ִ��ָ����Mysql��ѯ��
---@param param sql string sql
---@param ...  string|number �󶨲��������40��
---@return any @{status:number, effectRows:number, rows: table} ���ز�ѯ����
function SQL.QueryEx(sql, ...) end

---������ת����string��ʽ����ʶ��ת�������
---@param s string|number
---@return any @string��ʽ���� ʧ�ܷ���'null'
function SQL.sqlValue(s) end

---ִ��ָ����Mysql��ѯ��
---@param sql  string Ҫִ�е�Mysql��ѯ��䡣
---@return any @string��ʽ���� table[a][b]aΪ������bΪ����
function SQL.querySQL(sql, returnNil) end

