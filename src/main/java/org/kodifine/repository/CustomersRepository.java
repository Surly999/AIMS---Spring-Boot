package org.kodifine.repository;

import java.util.List;

import org.kodifine.entity.Customers;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;



public interface CustomersRepository extends JpaRepository<Customers, Integer>
{

	@Query(value="SELECT * FROM customers WHERE status='Waiting for Auditing'",nativeQuery = true)
	public List<Customers> waitingForAudit();
	
	@Query(value="SELECT * FROM customers WHERE status='Revert for update'",nativeQuery = true)
	public List<Customers> waitingForExeCheck();
	
	@Query(value="SELECT * FROM customers WHERE status='Pending Manager Review'",nativeQuery = true)
	public List<Customers> waitingForManager();
	
	@Query(value="SELECT * FROM customers WHERE status != 'Approved'", nativeQuery = true)
	public List<Customers> findCustomersNotApproved();
	
	
	
	@Modifying
	@Query(value ="UPDATE customers SET status=?1 WHERE id=?2",nativeQuery = true)
	public int updateStatus(String status,int id);
	
	
}
