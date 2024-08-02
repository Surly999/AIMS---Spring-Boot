package org.kodifine.service;


import java.util.List;
import java.util.Optional;

import org.kodifine.entity.Customers;

import org.kodifine.repository.CustomersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;




@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Service
@Transactional
public class CustomersService 
{

	@Autowired
	CustomersRepository SalesRepo;
	
	public Customers save(Customers c)
	{
		return SalesRepo.save(c);
	}
	
	
	
	
	public Customers retrive(int id)
	{
		return SalesRepo.findById(id).get();
	}
	public List<Customers> listcust()
	{
		return SalesRepo.findAll();
	}
	public List<Customers> waitingForAudit()
	{
		return SalesRepo.waitingForAudit();
	}
	public Optional<Customers> findCustomerById(int id) 
	{
        return SalesRepo.findById(id);
    }
	public Customers edit(Customers c)
	{
	    int rowsAffected = 0;
	    if (SalesRepo.findById(c.getId()).isPresent()) 
	    {
	        rowsAffected = SalesRepo.updateStatus(c.getStatus(), c.getId());
	    }
	   
	    return null; 
	}
	
	public List<Customers> waitingForExeCheck()
	{
		return SalesRepo.waitingForExeCheck();
	}
	
	public List<Customers> waitingForManager()
	{
		return SalesRepo.waitingForManager();
	}
	
	public void edit2(Customers c)
	{
		int rowsAffected = 0;
		System.out.println(c.getId()+"\t"+c.getStatus());
		if(SalesRepo.findById(c.getId()).isPresent())
		{
			rowsAffected=SalesRepo.updateStatus(c.getStatus(),c.getId());
		}
		
	}
	
	public Customers updates(Customers c)
	{
		Customers cust=null;
		if(SalesRepo.findById(c.getId()).isPresent())
		{
		 cust=SalesRepo.save(c);
		}
		return cust;
		
	}
	
	public List<Customers> findCustomersNotApproved()
	{
		return SalesRepo.findCustomersNotApproved();
	}

}
