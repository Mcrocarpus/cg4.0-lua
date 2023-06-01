---@alias �ַ��� string
---@alias ��ֵ�� number


---��ȡ���߶���index��ָ����Ϣ��
---@param ItemIndex  ��ֵ�� Ŀ��� ����index��
---@param Dataline  ��ֵ�� ˵ָ���Ķ���ʵ����Ϣ��λ��������λ������鿴��¼��
---@return any @ָ����Ϣ��λ��ֵ
function Item.GetData(ItemIndex,Dataline) end

---���õ��߶���index��ָ����Ϣ��
---@param CharIndex  ��ֵ�� Ŀ��� ���߶���index��
---@param Dataline  ��ֵ�� ˵ָ���Ķ���ʵ����Ϣ��λ��������λ������鿴��¼��
---@param Data  ��ֵ�� �� �ַ��� �µ�ֵ
---@return any @0Ϊʧ�ܣ�1Ϊ�ɹ���
function Item.SetData(ItemIndex,Dataline,Data) end

---���͸��µ��ߵķ������������ҡ�
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param Slot  ��ֵ�� ָ��������λ�ã����Ϊ-1��������еĵ��ߡ�
---@return any @
function Item.UpItem(CharIndex, Slot) end

---ɾ�����߲��ҷ��ͷ��֪ͨ��ҡ�
---@param CharIndex  ��ֵ�� Ŀ�����index��
---@param ItemIndex  ��ֵ�� Ŀ�����index��
---@param Slot  ��ֵ�� ָ��������λ�á�
---@return number @����ɾ���ɹ�����1,ʧ�ܷ���0������
function Item.Kill(CharIndex, ItemIndex, Slot) end

---�����µĵ�������
---@param type number �������ͱ��
---@param name string ������������
---@param defaultImage number δ����ʱͼ��
---@param place number װ��λ��
---@param flags number �������͡�1-��ͨ������2-����4-С����8-�����ڣ�255-����������Ͷ��������=2+4+8=14
---@return any @
function Item.CreateNewItemType(type, name, defaultImage, place, flags)) end

---����µõ���������Ϣ
---@param type number �������ͱ��
---@return any @number, type, number, number, number	��CreateNewItemType�����type, name, place, defaultImage, flags
function Item.GetNewItemType(type) end

---��ȡ��չ�Զ�����Ʒ���ְҵװ���ȼ�
---@param job number ְҵID
---@param type number ��������
---@return any @����Ʒ����ְҵװ���ȼ�
function Item.GetItemTypeEquipLevelForJob(job, type) end

---��չ�Զ�����Ʒ���ְҵװ���ȼ�
---@param job number ְҵID
---@param type number ��������
---@param level number ְҵװ���ȼ�
---@return any @
function Item.SetItemTypeEquipLevelForJob(job, type, level) end

---��ȡ���ߵ�userdata
---@param ItemIndex number ����index
---@return any @���ߵ�userdata
function Item.GetCharPointer(ItemIndex) end

---������ߵ�userdata
---@param ItemIndex number ����index
---@param val userdata 
---@return any @
function Item.SetCharPointer(ItemIndex, val) end

---�Ƴ����ߵ�userdata
---@param ItemIndex number ����index
---@return any @���ߵ�userdata
function Item.RemoveCharPointer(ItemIndex) end

---��ȡitemId������
---@param itemId number ����id
---@return any @string ������
function Item.GetNameFromNumber(ItemId) end

---ɾ������
---@param ItemIndex number ����index
---@return any @
function Item.UnlinkItem(ItemIndex) end

---�жϵ����Ƿ�������
---@param ItemIndex number ����index
---@return any @
function Item.IsWeaponType(ItemIndex) end

---��������Ʒ������Ʒ��������Ʒ
---@param itemId number ����id
---@return number @number ���ص���itemindex
function Item.MakeItem(itemId) end

