package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.six.dao.AddressDao;
import com.six.utils.DBUtil;

public class AddressDaoImpl implements AddressDao{

	@Override
	public void addAddre(int uid,String address) {
		Connection coon=null;
		PreparedStatement prep=null;
		String str="insert into t_address values(null,?,?,now()) ";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(coon, str);
			prep.setInt(1, uid);
			prep.setString(2, address);
			prep.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep,coon);
		}
		
		
	}

}
