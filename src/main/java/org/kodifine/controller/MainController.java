package org.kodifine.controller;


import java.io.IOException;
import java.util.List;



import org.kodifine.entity.Norms;
import org.kodifine.repository.CustomersRepository;
import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.kodifine.entity.Audit;
import org.kodifine.entity.Customers;
import org.kodifine.entity.Login;
import org.kodifine.service.NormsService;
import org.kodifine.service.AuditService;
import org.kodifine.service.CustomersService;
import org.kodifine.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class MainController 
{
	
	
//	---------------------- Login Starts Here   ------------------------------
	
	
	@Autowired
	LoginService LogServ;

//	@GetMapping("/login")
//	public String login2() 
//	{
//		
//		return "loginpage";
//	}
//	
//	
//	@PostMapping("/login")
//	public String checkLogin(Login l)
//	{
//		String page=null;
//		System.out.println(l.getUsername());
//		String role=LogServ.logIn(l.getUsername(), l.getPassword());
//		System.out.println(role);
//		if (role.equals("sales"))
//		{
//			page="index";
//			
//		}
//		else if(role.equals("auditor"))
//		{
//			page="audindex";
//		}
//		else if(role.equals("manager"))
//			page="managerindex";
//		else
//		{
////			m.addAttribute("Loginerr","Please check Username and Password");
//			page="loginpage";
//		
//		}
//		
//		return page;
//	}
//	
	
	
	
	
	
	
	
	
	
//	----------------------  Sales Executive Module Starts Here   ------------------------------
	

	@Autowired
	CustomersService SaleServ;
	@Autowired
	CustomersRepository custRepo;
	
	@GetMapping("/sales/exehome")
	public String home()
	{
		return "index";
	}
	
	@PostMapping("/sales/addcust")
	public String saveCust(Customers c)
	{
		SaleServ.save(c);
		return "index";
	}
	
//	@PostMapping("/addcust")
//	public String saveCust(@RequestParam("file") MultipartFile multipartFile, 
//			RedirectAttributes ra,Customers c) throws IOException
//	{
//		String fileName=StringUtils.cleanPath(multipartFile.getOriginalFilename());
//		Customers document=new Customers();
//		document.setName(fileName);
//		document.setFiles(multipartFile.getBytes());
//		document.setFsize(multipartFile.getSize());
//		document.setFtype(multipartFile.getContentType());
//		SaleServ.save(c);
//		SaleServ.save(document);
//		
//		ra.addFlashAttribute("message", "This file has been uploaded successfully");
//		
//		return "redirect:/";
//	}
//	
	
//	@PostMapping("/addcust")
//    public String saveCust(@RequestParam("file") MultipartFile multipartFile, RedirectAttributes ra, Customers c) throws IOException {
//        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//        c.setName(fileName);
//        c.setFiles(multipartFile.getBytes());
//        c.setFsize(multipartFile.getSize());
//        c.setFtype(multipartFile.getContentType());
//        System.out.println(c);
//        SaleServ.save(c);
//
//        ra.addFlashAttribute("message", "This file has been uploaded successfully");
//
//        return "redirect:/";
//    }
	
//	@PostMapping("/sales/addcust")
//	public String saveCust(@RequestParam("file") MultipartFile multipartFile, RedirectAttributes ra, Customers c) throws IOException {
//	    String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//	    c.setName(fileName);
//	    c.setFiles(multipartFile.getBytes());
//	    c.setFsize(multipartFile.getSize());
//	    c.setFtype(multipartFile.getContentType());
//	    System.out.println(c);
//	    SaleServ.save(c);
//
//	    ra.addFlashAttribute("message", "This file has been uploaded successfully");
//
//	    return "redirect:/";
//	}

	
	
	
	
	
	@GetMapping("/sales/redirectaddcustomer")
	public String redirectaddcustomer()
	{
       
        return "addcustomer";
    }
	
	@GetMapping("/sales/redirectviewcustomer")
	public String redirectviewcustomer()
	{
       
        return "viewcustomer";
    }
	
	@GetMapping("/sales/viewcustomer")
	public String viewcustomer(Model m) 
	{
		List<Customers> CustList=SaleServ.listcust();
		m.addAttribute("custDet",CustList);
		return  "viewcustomer";
	}
	
	@GetMapping("/sales/cancel")
	public String cancel()
	{
       
        return "index";
    }
	
	
	
	@GetMapping("/sales/checkReverted")
	public String checkReverted(Model m)
	{
		List<Customers> c=custServ.waitingForExeCheck();
		m.addAttribute("cust",c);
		return "checkreverted";
	}
	
	@GetMapping("/sales/viewCustById/{id}")
	public String viewCustById(@PathVariable int id, Model m)
	{
		Customers c=custServ.retrive(id);
		m.addAttribute("cust",c); 
		return "ExeEditCust";
	}
	
//	@PostMapping("/updateCust")
//	public String updateCust(HttpServletRequest httpRequest)
//	{
//		int id=Integer.parseInt(httpRequest.getParameter("id"));
//		String status=httpRequest.getParameter("status");
//		Customers c=new Customers(id,status);
//		System.out.println(c);
//		custServ.edit2(c);
//		
//		return "c";
//		
//	}
	
	
	@PostMapping("/sales/updateCust")
	public String updateCust(Customers cust)
	{
		custServ.updates(cust);
		return "index";
		
	}
	
	@GetMapping("/sales/viewNorms1")
	public String viewNorms2(Model m) 
	{
		List<Norms> AudList=AudServ.listNorms();
		m.addAttribute("NormsDet",AudList);
		return "viewnorms";
	}
	
	
	
	
	
	
	
	
//	----------------------  Auditor Module Starts Here   ------------------------------
	
	
	
	
	@Autowired
	NormsService AudServ;
	
	
	@GetMapping("/auditor/audhome")
	public String home2()
	{
		return "audindex";
	}
	
	
	@GetMapping("/auditor/redirectaddnorm")
	public String redirectaddnorm()
	{
       
        return "AddNorms";
    }
	
	@PostMapping("/auditor/addnorm")
	public String saveNorm(Norms c)
	{
		AudServ.save(c);
		return "audindex";
	}
	
//	@GetMapping("/viewnormsfromaudit")
//	public String viewNorms1() 
//	{
//		return "viewnorms";
//	}
	
	@GetMapping("/auditor/viewNorms1")
	public String viewNorms1(Model m) 
	{
		List<Norms> AudList=AudServ.listNorms();
		m.addAttribute("NormsDet",AudList);
		return "viewnorms";
	}
	
	
	@GetMapping("/auditor/checkacc1")
	public String CheckAcc() 
	{
		return "auditform";
	}
	
	
	
	
	@Autowired
	CustomersService custServ;
	
	@GetMapping("/auditor/viewCustByStatus")
	public String viewCustByStatus(Model m)
	{
		List<Customers> c=custServ.waitingForAudit();
		m.addAttribute("cust",c);
		return "checkacc";
	}
	
	
	@GetMapping("/auditor/auditcheckbyid/{id}")
	public String auditcheckbyid(@PathVariable int id, Model m)
	{
		Customers c=custServ.retrive(id);
		m.addAttribute("cust",c);
		return "auditform";
	}
	
	
	@Autowired
	AuditService audServ;
	
	
	@PostMapping("/auditor/audsave")
	public String auditsave(Audit au,HttpServletRequest httpRequest)
	{
		
		audServ.saveAudit(au);
		int id=Integer.parseInt(httpRequest.getParameter("id"));
		
		String status=httpRequest.getParameter("status");
		
		Customers c=new Customers(id,status);
		custServ.edit(c);
		return "audindex";
	}

	
	@GetMapping("/auditor/viewcustomer")
	public String viewcustomer2(Model m) 
	{
		List<Customers> CustList=SaleServ.listcust();
		m.addAttribute("custDet",CustList);
		return  "viewcustomer";
	}
	
	

	
	
	
	
//----------------------   Manager Module Starts Here   ------------------------------




	@GetMapping("manager/managerhome")
	public String managerHome()
	{
		return "managerindex";
	}
	
	@GetMapping("/manager/managerViewCustByStatus")
	public String managerViewCustByStatus(Model m)
	{
		List<Customers> c=custServ.waitingForManager();
		
		m.addAttribute("cust",c);
		return "managercheckdes";
	}

	@GetMapping("/manager/managercheckbyid/{id}")
	public String managerCheckbyid(@PathVariable int id, Model m)
	{
		Customers c=custServ.retrive(id);
		Audit au=audServ.findByID(id);
		m.addAttribute("aud",au);
		m.addAttribute("cust",c);
		return "Managercheckcustomer";
	}
	
	@PostMapping("/manager/managerUpdateStatus")
	public String managerUpdateStatus(HttpServletRequest httpRequest)
	{
		int id=Integer.parseInt(httpRequest.getParameter("id"));
		String status=httpRequest.getParameter("status");
		Customers c=new Customers(id,status);
		System.out.println(c);
		custServ.edit(c);
		
		return "managerindex";
		
	}
	
	@GetMapping("/manager/viewNorms1")
	public String viewNorms3(Model m) 
	{
		List<Norms> AudList=AudServ.listNorms();
		m.addAttribute("NormsDet",AudList);
		return "viewnorms";
	}
	
	@GetMapping("/manager/openedacc")
	public String openedAcc(Model m)
	{
		List<Customers> c=custServ.findCustomersNotApproved();
		m.addAttribute("cust",c);
		return "openedAcc";
	}
	
	
	
}







