package org.kodifine.repository;

import org.kodifine.entity.Audit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AuditRepository extends JpaRepository<Audit, Integer>
{

	
	@Query(value = "SELECT * FROM audit WHERE cid=?1",nativeQuery = true)
	public Audit findDesByID(int cid);
}
