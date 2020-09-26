package com.examservice.exam.services;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.examservice.exam.entity.QuetionsEntity;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ExamServiceImpl implements ExamService{
	
	List<QuetionsEntity> list;

	@Override
	public List<String> Result(Map answer) {
		int result=0;
		int correctAnswer = 0;
		int wrongAnswer = 0;
		String remark ="";
		String key = "";
		List completeResult = new ArrayList<String>();
		for(int count =0;count<answer.size();count++) {
			key = "question"+count;
			String jsonData =answer.get(key).toString();
			String outputOfTest = list.get(count).answer.toString();
			if(jsonData.equalsIgnoreCase(outputOfTest)) {
				result += 10;
				correctAnswer++;
			} else {
				wrongAnswer++;
			}
		}
		
		if(result>=70) {remark="Pass";} else {remark="Fail";}
		completeResult.add(result);
		completeResult.add(correctAnswer);
		completeResult.add(wrongAnswer);
		completeResult.add(remark);
		
		
		return completeResult;
	}
	
	@Override
	public List<QuetionsEntity> sendQuestion() {
		List<QuetionsEntity> entity = new ArrayList<QuetionsEntity>();
		ObjectMapper mapper = new ObjectMapper();
		try {
			 list = Arrays.asList(mapper.readValue(Paths.get("C:\\Users\\tudeore\\Desktop\\Question.json")
					.toFile(),QuetionsEntity[].class));
			for(int count=0;count<list.size();count++) {
				entity.add(list.get(count));
			}
					
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entity;
	}

}
