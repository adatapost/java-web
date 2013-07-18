package in.anita.test;

import in.anita.Db;

public class TestMainFour {
 
	public static void main(String[] args) {
		String sql = "select * from emp where ename like ?";
		
		Db x = null;
		try {
		   x =new Db(sql);
		   x.getPs().setString(1, "R%");   
		 for(Object []ar : x.rows()){
			 System.out.println(ar[0] + " " + ar[1] + " " + ar[2]);
		 }
		   
		   
		   System.out.println("OK");
		} catch (Exception e) {
			 System.out.println(e);
		} finally{
			if(x!=null)
				 x.dispose();
		}

	}

}
