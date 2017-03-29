package com.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Retailer;
import com.bean.User;
import com.dao.interfaces.IRetailerDao;
import com.util.DBConnection;

public class RetailerDao extends GenericDao implements IRetailerDao {
	@Override
	public Integer addRetailer(Retailer retailer) throws SQLException, ClassNotFoundException{
		Integer userId = addNewUser(retailer, User.RETAILER);
		
		// Add Address
		AddressDao addressDao = new AddressDao();
		Integer addressId = addressDao.addAddress(retailer.getAddress());
		
		/*
		 * RETAILERID		NUMBER(38,0)
			NAME			VARCHAR2(30 BYTE)
			CONTACTNO1		VARCHAR2(30 BYTE)
			CONTACTNO2		VARCHAR2(30 BYTE)
			ADDRESSID		NUMBER(38,0)
			STBL			VARCHAR2(30 BYTE)
			CREDITLIMIT		VARCHAR2(30 BYTE)
			CPSG			VARCHAR2(30 BYTE)
			SERVICECHARGE	VARCHAR2(30 BYTE)
			CREATIONDATE	DATE
			TCI				NUMBER
		 */
	
		query = "INSERT INTO RETAILER VALUES(?,?,?,?,?,?,?,?,?,?)";
		ps = con.prepareStatement(query);
		ps.setInt(1, userId);
		ps.setString(2, retailer.getName());
		ps.setString(3, retailer.getContactNo1());;
		ps.setString(4, retailer.getContactNo2());
		ps.setInt(5, addressId);
		ps.setString(6, retailer.getSetTopBoxLimit());
		ps.setString(7, retailer.getCreditLimit());
		ps.setString(8,  retailer.getCommissionPercentage());
		ps.setString(9, retailer.getServiceCharges());
		
		// USE THIS TO CONVERT DATES FROM java.util.Date TO java.sql.Date
		java.sql.Date sqlDate = this.convertDate(retailer.getRetailerCreationDate());
		ps.setDate(10, sqlDate);

		ps.executeUpdate();
		
		return userId;
	}
	@Override
	public Retailer getRetailerByName(String name) throws SQLException, ClassNotFoundException {
		con = DBConnection.getConnection();
		
		ps = con.prepareStatement("Select * from Retailer where name = ?");
		ps.setString(1, name);
		
		rs = ps.executeQuery();
		
		if(rs.next()){
			Retailer retailer = new Retailer();
			retailer.setUserId(rs.getInt("userId"));
			retailer.setName(rs.getString("name"));
			
			return retailer;
		}
		return null;
	}
	@Override
	public List<Retailer> getAllRetailers() {
		
		
		ArrayList<Retailer> retailers = new ArrayList<>();
	//	Address address=new Address();
		
		// Get connection
		con = DBConnection.getConnection();
		
		// Prepare SQL statement
		try {
			ps = con.prepareStatement("select * from Retailer");
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Retailer retailer = new Retailer();
				
				retailer.setUserId(rs.getInt("retailerId"));
				retailer.setName(rs.getString("name"));
				retailer.setContactNo1(rs.getString("contactNo1"));
				retailer.setContactNo2(rs.getString("contactNo2"));
				retailer.setSetTopBoxLimit(rs.getString("setTopBoxLimit"));
				retailer.setCreditLimit(rs.getString("creditLimit"));
				retailer.setCommissionPercentage(rs.getString("commissionPercentage"));
				retailer.setServiceCharges(rs.getString("serviceCharges"));
				retailer.setRetailerCreationDate(rs.getDate("retailerCreationDate"));
			
//				address.setAddressId(Integer.parseInt(rs.getString("addressid")));
//				customer.getAddress().getAddress1()
			//	logger.info(retailer.getName());
				
				retailers.add(retailer);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e.getMessage());
		}

		// Execute SQL statement
		
		
		return retailers;
	}
}
