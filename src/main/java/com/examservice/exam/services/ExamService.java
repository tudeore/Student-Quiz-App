package com.examservice.exam.services;

import java.util.List;
import java.util.Map;

import com.examservice.exam.entity.QuetionsEntity;

public interface ExamService {

	public List<String> Result(Map answer);

	List<QuetionsEntity> sendQuestion();
}
