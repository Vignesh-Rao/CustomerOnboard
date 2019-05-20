package bean; 

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.ResourceBundle;
import java.util.Set;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class Test{
	
	
	DBConnection dbc = new DBConnection();

	public static void main(String[] args) {
		
		Test t= new Test();
		ArrayList li = t.getQuestions();
		Iterator it = li.iterator();
	
		
		
		while (it.hasNext())
		{
			System.out.println(it.next());
		}
	}
		
		
	
	
	
	
	private ArrayList getQuestionsfromDB(Connection cx) throws SQLException
	{
		ArrayList li = new ArrayList();
		Statement stm = cx.createStatement();
		ResultSet rs = stm.executeQuery("SELECT * FROM questions");
	
		
		String str = new String ();
		 while(rs.next())
		 {
			 str = (String)rs.getString(2);
			li.add(str);
			System.out.println(str);

		 }
		
		return li;
		
	}
	
	
	private ResultSet getQuestionsfromDB1(Connection cx) throws SQLException
	{
		Statement stm = cx.createStatement();
		ResultSet rs = stm.executeQuery("SELECT * FROM questions");
	
		
		return rs;
		
	}

	
	public ArrayList getQuestions()
	{
		
	
		ArrayList li = null;
		try
		{
			Connection cx = dbc.getConn();
			li = getQuestionsfromDB(cx);
			dbc.closeConn(cx);
		}catch (SQLException ex){
			ex.printStackTrace();
		}
		return li;
	
    }
	public ResultSet getQuestions1(Connection cx)
	{
		
	
		ResultSet rs = null;
		try
		{
			//Connection cx = getConnection();
			rs = getQuestionsfromDB1(cx);
			//closeConnection(cx);
		}catch (SQLException ex){
			ex.printStackTrace();
		}
		return rs;
	
    }
	
	public void insertAnswersinDB(Map map, int uid){
		ResultSet rs = null;
		try
		{
			Connection cx = dbc.getConn();
			Set<Entry<String, String[]>> mapSet = map.entrySet();
	        Iterator<Entry<String, String[]>> mapIterator = mapSet.iterator();
	        while (mapIterator.hasNext()) {
	            Entry<String, String[]> mapEntry = mapIterator.next();
	            String qid = mapEntry.getKey();
	            System.out.println("qid::"+qid);
	            String[] answer = mapEntry.getValue();
	            System.out.println(Arrays.toString(answer));
	            System.out.println(answer.length);
	            if (answer.length > 0) {
					Statement stm = cx.createStatement();
					int i = stm
							.executeUpdate("insert into answers(QID,Answer,UID) values ('"
									+ qid
									+ "','"
									+ Arrays.toString(answer)
									+ "','" + uid + "')");
				}
	        }
			dbc.closeConn(cx);;
		}catch (SQLException ex){
			ex.printStackTrace();
		}
		
	}
}
