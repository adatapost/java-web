package in.anita.test;

import in.anita.Db;

public class TestMain {
 
	public static void main(String[] args) {
		String sql = "insert into emp values (?,?,?)";
		
		Db x = null;
		try {
		   x =new Db(sql);
		   x.getPs().setInt(1, 103);
		   x.getPs().setString(2,"Rakesh");
		   x.getPs().setDate(3,Db.toSqlDate("1-12-2002"));
		   
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
