package org.kodifine.service;


import java.util.List;


import org.kodifine.entity.Norms;

import org.kodifine.repository.NormsRepository;
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

public class NormsService 
{

	@Autowired
	NormsRepository AudRepo;

	public Norms save(Norms a)
	{
		return AudRepo.save(a);
	}
	public Norms retrive(int id)
	{
		return AudRepo.findById(id).get();
	}
	public List<Norms> listNorms()
	{
		return AudRepo.findAll();
	}
	
	
}
