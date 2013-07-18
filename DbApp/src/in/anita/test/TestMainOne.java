package in.anita.test;

import in.anita.Db;

public class TestMainOne {
 
	public static void main(String[] args) {
		String sql = "update emp set ename=? where eno=?";
		
		Db x = null;
		try {
		   x =new Db(sql);
		  
		   x.getPs().setString(1,"Manish");
		   x.getPs().setInt(2, 101);
		   
		   x.execute();
		   System.out.println("OK");
		} catch (Exception e) {
			 System.out.println(e);
		} finally{
			if(x!=null)
				 x.dispose();
		}

	}

}
