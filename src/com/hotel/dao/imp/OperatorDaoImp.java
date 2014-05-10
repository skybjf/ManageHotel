package com.hotel.dao.imp;

import java.util.List;

import org.apache.log4j.Logger;

import com.hotel.base.PageObject;
import com.hotel.dao.OperatorDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Operator;
import com.hotel.util.HotelUtils;

public class OperatorDaoImp extends BaseDaoImp implements OperatorDao {
	private static final Logger log = Logger.getLogger(OperatorDaoImp.class);

	// 该删除为假删除，即将delMark的值进行改变
	public boolean updateOptDelMarkByIds(String[] ids) {
		String sql = "from " + TablesEnum.OPERATOR.getTableName() + HotelUtils.spliceToSqlString(ids);
		List<?> list = this.selectObjectByIds(sql);
		try {
			for (Object obj : list) {
				Operator opt = (Operator) obj;
				opt.setDelMark("1");
				this.getHibernateTemplate().update(opt);
			}
		} catch (Exception e) {
			log.error("update error [befor update the select sql : " + sql + "]", e);
		}
		return true;
	}

	public boolean delOperatorByIds(String[] ids) {
		String sql = "from " + TablesEnum.OPERATOR.getTableName() + HotelUtils.spliceToSqlString(ids);
		List<?> list = this.selectObjectByIds(sql);
		try {
			for (Object obj : list) {
				Operator opt = (Operator) obj;
				this.getHibernateTemplate().delete(opt);
			}
		} catch (Exception e) {
			log.error("del error [befor del the select sql : " + sql + "]", e);
			return false;
		}
		return true;
	}

	public PageObject listOperator(String hql, PageObject operator) {

		return super.listObject(hql, operator);
	}

}
