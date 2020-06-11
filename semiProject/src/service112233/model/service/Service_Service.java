package service112233.model.service;

import com.sun.corba.se.pept.transport.Connection;

import service112233.model.dao.ServiceDao;
import service112233.model.vo.Service;

import static common.JDBCTemplate.*;

public class Service_Service {

	public int insertService(Service sv) {
		Connection conn = null;
		
		int result = new ServiceDao().insertService(conn,sv);
		
		if(result >0) {
				commit(conn);
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

}
