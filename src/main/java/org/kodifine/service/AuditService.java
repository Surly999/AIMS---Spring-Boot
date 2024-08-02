package org.kodifine.service;

import org.kodifine.entity.Audit;

import org.kodifine.repository.AuditRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public class AuditService 
{	
	@Autowired
	AuditRepository audRepo;
	
	
	public void saveAudit(Audit c)
	{
		audRepo.save(c);
	}
	public Audit findByID(int id)
	{
		Audit au=audRepo.findDesByID(id);
		return au;
	}
}
