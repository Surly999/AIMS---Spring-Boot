package org.kodifine.repository;

import java.util.Optional;

import org.kodifine.entity.Login;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LoginRepository extends JpaRepository<Login,Integer>
{
	Optional<Login> findByUsername(String username);
	
	
	
//	@Query(value = "SELECT * FROM login WHERE username=?1 AND password=?2",nativeQuery = true)
//	public Login findByIdAndPass(String uname,String pass);
}
