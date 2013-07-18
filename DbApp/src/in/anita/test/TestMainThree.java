package in.anita.test;

import in.anita.Db;

public class TestMainThree {
 
	public static void main(String[] args) {
		String sql = "select * from emp";
		
		Db x = null;
		try {
		   x =new Db(sql);
		      
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
