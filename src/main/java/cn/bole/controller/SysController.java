package cn.bole.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.ss.usermodel.Workbook;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bole.pojo.Job;
import cn.bole.service.SysService;

@Controller
public class SysController {
	@Autowired
	SysService sysService;

	@RequestMapping("/title")
	public String title() {
		return "/home/title";
	}

	// 转向欢迎页面
	@RequestMapping("/home")
	public String home() {
		return "/home/fmain";
	}

	@RequestMapping("/{moduleName}/Left")
	public String sysadminLeft(@PathVariable String moduleName) {
		return "/" + moduleName + "/left";
	}

	@RequestMapping("/{moduleName}/Main")
	public String sysadminMain(@PathVariable String moduleName) {
		return "/" + moduleName + "/main";
	}

	@RequestMapping("/sysadmin/job/list")
	public String jobList(Model model) {
		List<Job> jobList = sysService.findAllJob();
		model.addAttribute("jobList", jobList);
		return "sysadmin/job/jobList";
	}

	@RequestMapping("/sysadmin/job/pass")
	public String pass(@RequestParam(value = "jobId", required = true) String[] ids) {
		Integer state = 1;
		sysService.setState(ids, state);

		return "redirect:/sysadmin/job/list";
	}

	@RequestMapping("/sysadmin/job/stop")
	public String stop(@RequestParam(value = "jobId", required = true) String[] ids) {
		Integer state = 0;
		sysService.setState(ids, state);

		return "redirect:/sysadmin/job/list";
	}

	@RequestMapping("/sysadmin/job/area")
	public String area() {
//		return "sysadmin/job/echart";
		return "sysadmin/job/echart";
	}

	// 返回给ajax一个jason字符串用户画图
	@RequestMapping("/sysadmin/job/show")
	@ResponseBody
	public Map<String, Object> show() throws JSONException {
		Map<String,Object> map=new HashMap<String,Object>();
		//各城市职位数量
//		int[] jobNum=new int[]{20, 20, 36, 40, 40,40};
		String[] citys=new String[]{ "北京", "上海", "广州", "深圳", "苏州", "杭州" };
		
		int[] jobNum=sysService.findJobNumByCity(citys);
		
		map.put("jobNum", jobNum);
		//图标2
		String[] categories=new String[]{"华为", "中兴", "腾讯","百度", "Alibaba"};
		map.put("categories", categories);
		int[] data=new int[]{20, 20, 36, 40, 40};
		map.put("data", data);
		
		//图表2、各城市信息
		
		double[][] salary= new double[6][3];
			salary=sysService.findAvgSalaryByCity();
			
		map.put("salary", salary);
		
		return map;
	}
	
	
	
	
	
	
	
	//poi下载
		@RequestMapping("/sysadmin/job/download")
		public String download(HttpServletRequest request,HttpServletResponse response) throws IOException{
			List<Job> jobList = sysService.findAllJob();
		
			
			DateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

			ServletOutputStream os = response.getOutputStream();
			Workbook wb = new HSSFWorkbook();
			Sheet sheet1 = wb.createSheet("new sheet");
			//加表头
			CreationHelper createHelper = wb.getCreationHelper();
			CellStyle style= wb.createCellStyle();
			//样式(style,style3是日期类型的样式，style2,style1是普通样式
			style.setDataFormat(createHelper.createDataFormat().getFormat("yyyy-mm-dd"));
			style.setBorderLeft(BorderStyle.THIN);
			style.setBorderRight(BorderStyle.THIN);
			style.setBorderTop(BorderStyle.THIN);
			style.setBorderBottom(BorderStyle.THIN);
			style.setAlignment(HorizontalAlignment.LEFT);
	        style.setVerticalAlignment(VerticalAlignment.TOP);
	        style.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.getIndex());
	        style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
			//日期格式2
	    	
			CellStyle style3= wb.createCellStyle();
			style3.setDataFormat(createHelper.createDataFormat().getFormat("yyyy-mm-dd"));
			style3.setBorderLeft(BorderStyle.THIN);
			style3.setBorderRight(BorderStyle.THIN);
			style3.setBorderTop(BorderStyle.THIN);
			style3.setBorderBottom(BorderStyle.THIN);
			style3.setAlignment(HorizontalAlignment.LEFT);
	        style3.setVerticalAlignment(VerticalAlignment.TOP);
	    
			
			//设置样式
			CellStyle style1 = wb.createCellStyle();
		
			style1.setBorderLeft(BorderStyle.THIN);
			style1.setBorderRight(BorderStyle.THIN);
			style1.setBorderTop(BorderStyle.THIN);
			style1.setBorderBottom(BorderStyle.THIN);
			style1.setAlignment(HorizontalAlignment.LEFT);
	        style1.setVerticalAlignment(VerticalAlignment.TOP);
	        style1.setFillForegroundColor(IndexedColors.LIGHT_CORNFLOWER_BLUE.getIndex());
	        style1.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	      
	        CellStyle style2 = wb.createCellStyle();
	    	style2.setBorderLeft(BorderStyle.THIN);
			style2.setBorderRight(BorderStyle.THIN);
			style2.setBorderTop(BorderStyle.THIN);
			style2.setBorderBottom(BorderStyle.THIN);
			style2.setAlignment(HorizontalAlignment.LEFT);
	        style2.setVerticalAlignment(VerticalAlignment.TOP);
	        
	        String[] headers = {"序号","职位名称","职位描述","所在城市","职位状态"};
	        Row row0 = sheet1.createRow(0);
	        Cell cellHeader;
	    	for(int i=0; i<headers.length;i++){
	    		cellHeader = row0.createCell(i);
	    		cellHeader.setCellStyle(style1);
	    		cellHeader.setCellValue(headers[i]);
	    		
	    	}
	        	
			// 在列表中循环遍历，存入excel 中
			Job job;
			for(int i=1; i<= jobList.size();i++ ){
				job =jobList.get(i-1);
				Row row = sheet1.createRow(i);
				Cell cell;
				CellStyle cellStyle;
				cellStyle =( i % 2 ==0?style1: style2);
				
				cell = row.createCell(0);
				cell.setCellStyle(cellStyle);
				cell.setCellValue(job.getJobId());
				
				cell = row.createCell(1);
				cell.setCellStyle(cellStyle);
				cell.setCellValue(job.getJobName());
				
				cell = row.createCell(2);
				cell.setCellStyle(cellStyle);
				cell.setCellValue(job.getJobInfo().getDiscription());
				
				
				cell = row.createCell(3);
				cell.setCellStyle(cellStyle);
				cell.setCellValue(job.getJobInfo().getCity());
				
				cell = row.createCell(4);
				cell.setCellStyle(cellStyle);
				String state = (job.getState()==1?"审核通过":"等待审核");
				cell.setCellValue(state);
				
				
			}
			

			// 生成表之后，下载到本地
			
			response.setContentType("application/vnd.ms-excel");
			
			response.setHeader("content-disposition","attachment;filename="+"job.xls");
		
			wb.write(os);
			os.flush();
			os.close();
		
			return "/sysadmin/job/jobList";
		}

}
