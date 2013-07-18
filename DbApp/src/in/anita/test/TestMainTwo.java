package in.anita.test;

import in.anita.Db;

public class TestMainTwo {
 
	public static void main(String[] args) {
		String sql = "select * from emp where eno=?";
		
		Db x = null;
		try {
		   x =new Db(sql);
		   x.getPs().setInt(1, 104);
		    
		   Object []ar = x.row();
		   if(ar!=null)
		     System.out.println(ar[0] + " " + ar[1] + " " + ar[2]);
		   else
			 System.out.println("Not found");
		   
		   System.out.println("OK");
		} catch (Exception e) {
			 System.out.println(e);
		} finally{
			if(x!=null)
				 x.dispose();
		}

	}

}
