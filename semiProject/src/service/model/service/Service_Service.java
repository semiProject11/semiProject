package service.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Inquiary;
import board.model.vo.Review;
import member.model.vo.Member;
import service.model.dao.ServiceDao;
import service.model.vo.CategoryListPd;
import service.model.vo.MpSelectBSNo;
import service.model.vo.Service;
import service.model.vo.ServiceBuyList;
import service.model.vo.ServiceSellList;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;
import service.model.vo.Service_Review;
import service.model.vo.Service_ServiceTable_oh;
import service.model.vo.Service_SeviceFilesTable_oh;


public class Service_Service {

   public ArrayList<Service_List> selectTradeList(int currentPage, int limit) {
      
      Connection conn=getConnection();
      ArrayList<Service_List> tradeList=new ServiceDao().selectTradeList(conn,currentPage, limit);
      close(conn);
      System.out.println("서비스단에서:"+tradeList);
      return tradeList;
   }
   

   public ArrayList<Service_ServiceTable_oh> selectServiceList(int currentPage, int limit) {
      Connection conn=getConnection();
      ArrayList<Service_ServiceTable_oh> serviceList=new ServiceDao().selectServiceList(conn,currentPage, limit);
      close(conn);
      System.out.println("서비스단에서:"+serviceList);
      return serviceList;
      
      
   }


   public Service_List selectTrade(int service_no) {
      Connection conn=getConnection();
      Service_List trade=new ServiceDao().selectTrade(conn,service_no);
      close(conn);
      System.out.println("서비스단에서:"+trade);
      return trade;
   }


   public Service_ServiceTable_oh selectTradeServ(int service_no) {
      Connection conn=getConnection();
      Service_ServiceTable_oh service=new ServiceDao().selectTradeServ(conn,service_no);
      close(conn);
      System.out.println("서비스단에서:"+service);
      return service;
   }


   public Service_Category selectTradeCategory(int service_no) {
      Connection conn=getConnection();
      Service_Category category=new ServiceDao().selectTradeCategory(conn,service_no);
      close(conn);
      System.out.println("서비스단에서:"+category);
      return category;
   }


   public int getBuyListCount(String userNo) {
      Connection conn=getConnection();
      int result = new ServiceDao().getBuyListCount(conn, userNo);
      
      
      close(conn);
      return result;
   }


   public ArrayList<ServiceBuyList> selectBuyServiceList(int currentPage, int limit, String userNo) {
      Connection conn=getConnection();
      
      ArrayList<ServiceBuyList> bsList = new ServiceDao().selectBuyServiceList(conn, currentPage, limit, userNo);
      
      close(conn);
      
      
      
      return bsList;
   }


   public ArrayList<Review> selectReviewList(String userNo) {
      Connection conn=getConnection();
      ArrayList<Review> re = new ServiceDao().selectReviewList(conn, userNo);
      
      close(conn);
      return re;
   }



	public int insertService(Service_ServiceTable_oh st, String[] day,
	         ArrayList<Service_SeviceFilesTable_oh> servicefileList) {
	      
	      Connection conn = getConnection();
	       ServiceDao sDao = new ServiceDao();
	      
	       int result1 = sDao.insertService1(conn,st);
	       int result2 = sDao.insertService2(conn, day);
	       int result3 = sDao.insertService3(conn,servicefileList);
	       
	       if(result1>0 && result2>0 && result3 >0) {
	          commit(conn);
	       }else {
	          rollback(conn);
	       }
	       close(conn);
	       
	      return result1;
	   }


	   

	




   public Service selectServiceReview(int board_no) {
      Connection conn = getConnection();
      
      Service service = new ServiceDao().selectServiceReview(conn,board_no);
   
      close(conn);
      return service;
   }


   public ArrayList<Service> selectS_ReivewList() {
      Connection conn = getConnection();
      
      ArrayList<Service> sList = new ServiceDao().selectS_ReviewList(conn);

      close(conn);
      
      return sList;
   }


   public ArrayList<Service_Category> selectSC_ReivewList() {
      Connection conn = getConnection();
      
      ArrayList<Service_Category> scList = new ServiceDao().selectSC_ReviewList(conn);

      close(conn);
      
      return scList;

   }


   public ArrayList<Service_List> selectSL_ReivewList() {
      Connection conn = getConnection();
      
      ArrayList<Service_List> slList = new BoardDao().selectSL_ReviewList(conn);

      close(conn);
      
      return slList;
   }


   public Service_List selectLServiceReview(int board_no) {
      
      Connection conn = getConnection();
      
      Service_List lService = new ServiceDao().selectLServiceReview(conn, board_no);
   
      close(conn);
      return lService;
   }


   public Service_Category selectCServiceReview(int board_no) {
      
      Connection conn = getConnection();
      
      Service_Category cService = new ServiceDao().selectCServiceReview(conn, board_no);
   
      close(conn);
      return cService;
   }


   public ServiceBuyList selectBuyListServiceReview(int board_no) {
      
      Connection conn = getConnection();
      
      ServiceBuyList sbService = new ServiceDao().selectBuyListServiceReview(conn, board_no);
   
      close(conn);
      return sbService;
   }


   public int getSellListCount(String userNo) {
      Connection conn=getConnection();
      int result = new ServiceDao().getSellListCount(conn, userNo);
      
      
      close(conn);
      return result;
   }


   public ArrayList<ServiceSellList> selectSellServiceList(int currentPage, int limit, String userNo) {
      Connection conn=getConnection();
      
      ArrayList<ServiceSellList> bsList = new ServiceDao().selectSellServiceList(conn, currentPage, limit, userNo);
      
      close(conn);
      
      
      
      return bsList;
   }


   public int deleteService(ArrayList<String> arr) {
      Connection conn=getConnection();
      
      int result2=new ServiceDao().deleteServiceDate(conn,arr);
      int result1=new ServiceDao().deleteServiceFile(conn,arr);
      int result=new ServiceDao().deleteService(conn,arr);

      if (result > 0) {
         commit(conn);
      } else {
         rollback(conn);
      }
      close(conn);
      
   
      return result;
   }



	//================================================================
	public ArrayList selectsvList(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.selectsvList(conn, category, salemethod);

		return list;
	}


	public ArrayList selectfList() {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.selectFList(conn);

		return list;
	}


	public ArrayList selectgeneral(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.selectgeneral(conn, category, salemethod);

		return list;
	}


	public ArrayList sortpricehigh(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.sortpricehigh(conn, category, salemethod);

		return list;
	}


	public ArrayList sortpricelow(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.sortpricelow(conn, category, salemethod);

		return list;
	}


	public ArrayList viewssort(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.viewssort(conn, category, salemethod);

		return list;
	}


	public ArrayList newpdsort(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.newpdsort(conn, category, salemethod);

		return list;
	}


	public ArrayList resetpd(String category, String salemethod) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.resetpd(conn, category, salemethod);

		return list;
	}


	public ArrayList popitem(String[] category) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.popitem(conn, category);

		return list;
	}


	public CategoryListPd auctiondetail(String sNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		CategoryListPd clpd = svDao.auctiondetail(conn, sNo);

		return clpd;
	}


	public int updateCount(String sNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.updateCount(conn, sNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public ArrayList selectsvinfo(String sNo) {
		Connection conn = getConnection();
		ArrayList list = null;
		
		ServiceDao svDao = new ServiceDao();
		
		list = svDao.selectsvinfo(conn, sNo);
		
		return list;
	}


	public ArrayList selectreview(String suserNo) {
		
		Connection conn = getConnection();
		ArrayList list = null;
		
		ServiceDao svDao = new ServiceDao();
		
		list = svDao.selectreview(conn, suserNo);
		
		return list;
	}


	public Member pointcheck(String loginUserNo) {
		
		Connection conn = getConnection();
		
		ServiceDao svDao = new ServiceDao();
		
		Member member = svDao.pointcheck(conn, loginUserNo);
		
		return member;
	}


	public Service selectbuserNo(String sNo) {
		Connection conn = getConnection();
		
		ServiceDao svDao = new ServiceDao();
		
		Service sv = svDao.selectbuserNo(conn, sNo);
		
		return sv;
	}


	public int updateMinusPoint(String insertprice, String loginUserNo) {
		
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.updateMinusPoint(conn, insertprice, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int salePriceMinusPoint(String saleprice, String loginUserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.salePriceMinusPoint(conn, saleprice, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int changebuser(String sNo, String loginUserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.changebuser(conn, sNo, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int salePricePlusPoint(String saleprice, String suserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.salePricePlusPoint(conn, saleprice, suserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int insertlist(String sNo, String suserNo, String loginUserNo) {

		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.insertlist(conn, sNo, suserNo, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int updatebindding(String sNo, String insertprice, String loginUserNo) {
		
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.updatebindding(conn, sNo, insertprice, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int updatePlusPoint(String price, String buserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.updatePlusPoint(conn, price, buserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int suserPointPlus(String price, String suserNo, String loginUserNo, String buserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.suserPointPlus(conn, price, suserNo, loginUserNo, buserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int snoStatusUpdate(String sNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.snoStatusUpdate(conn, sNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int biddingchangeupdate(String sNo, String price) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.biddingchangeupdate(conn, sNo, price);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int insertbidbuylist(String sNo, String suserNo, String buserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.insertbidbuylist(conn, sNo, suserNo, buserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}
	
	public MpSelectBSNo selectBSNo(String sn) {
		Connection conn = getConnection();
		
		MpSelectBSNo bs = new ServiceDao().selectBSNo(conn,sn);
		System.out.println("과연:"+bs);
		close(conn);
		return bs;
	}


	public int cancelPointb(String bNo, int price) {
		Connection conn = getConnection();
		int result = new ServiceDao().cancelPointb(conn, bNo, price);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public int cancelPoints(String sNo, int price) {
		Connection conn = getConnection();
		int result = new ServiceDao().cancelPoints(conn, sNo, price);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public int deleteTH(String sn) {
		Connection conn = getConnection();
		int result = new ServiceDao().deleteTH(conn, sn);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}



	public ArrayList<Service_List> searchTradeList(int currentPage, int limit, String type, String word) {
		 Connection conn=getConnection();
	      ArrayList<Service_List> tradeList=new ServiceDao().searchTradeList(conn,currentPage, limit,type,word);
	      close(conn);
	      System.out.println("서비스단에서:"+tradeList);
	      return tradeList;
	}


	public ArrayList<Service_ServiceTable_oh> searchServiceList(int currentPage, int limit, String type, String word) {
		 Connection conn=getConnection();
		 ArrayList<Service_ServiceTable_oh> list=new ServiceDao().searchServiceList(conn,currentPage, limit,type,word);
	      close(conn);
	     
	      return list;
	}

	public ArrayList<CategoryListPd> searchService(String category, String word, String salemethod) {
		Connection conn = getConnection();

		
		ArrayList<CategoryListPd> sList = new ServiceDao().searchService(conn,category,word,salemethod);

		close(conn);
		return sList;
		

	}
	


	public int sellCountPlus(String suserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.sellCountPlus(conn, suserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int buyCountPlus(String loginUserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.buyCountPlus(conn, loginUserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public int buyCountPlusbid(String buserNo) {
		Connection conn = getConnection();

		ServiceDao svDao = new ServiceDao();

		int result = svDao.buyCountPlusbid(conn, buserNo);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		return result;
	}


	public ArrayList<CategoryListPd> selectReport(String service_no) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.selectReport(conn, service_no);

		return list;
	}


	public ArrayList<Service_SeviceFilesTable_oh> selectReportfList(String service_no) {
		Connection conn = getConnection();

		ArrayList list = null;

		ServiceDao svDao = new ServiceDao();

		list = svDao.selectReportFList(conn,service_no);

		return list;
	}


	public ArrayList<Service_List> searchTradeListaaa(int currentPage, int limit, String type, String word) {
		 Connection conn=getConnection();
	      ArrayList<Service_List> tradeList=new ServiceDao().selectTradeListaaa(conn,currentPage, limit);
	      close(conn);
	      System.out.println("서비스단에서:"+tradeList);
	      return tradeList;
	   }


	public ArrayList<Service_ServiceTable_oh> searchServiceListaaa(int currentPage, int limit, String type,
			String word) {
		Connection conn=getConnection();
		 ArrayList<Service_ServiceTable_oh> list=new ServiceDao().searchServiceListaaa(conn,currentPage, limit,type,word);
	      close(conn);
	     
	      return list;
	
	}


	public ArrayList<Service_List> selectTradeListaaa(int currentPage, int limit) {
		 Connection conn=getConnection();
	      ArrayList<Service_List> tradeList=new ServiceDao().selectTradeListaaa(conn,currentPage, limit);
	      close(conn);
	      System.out.println("서비스단에서:"+tradeList);
	      return tradeList;
	   }



}

