package com.els.runhe.cms.dao.template;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.els.runhe.cms.entity.template.Template;
import com.els.runhe.cms.entity.template.TemplateExample;

/**
 * TemplateMapper
 * 
 * @author acer
 * 
 */
public interface TemplateMapper {

	int countByExample(TemplateExample example);

	int deleteByExample(TemplateExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Template record);

	int insertSelective(Template record);

	List<Template> selectByExample(TemplateExample example);

	Template selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Template record,
			@Param("example") TemplateExample example);

	int updateByExample(@Param("record") Template record,
			@Param("example") TemplateExample example);

	int updateByPrimaryKeySelective(Template record);

	int updateByPrimaryKey(Template record);

	List<Template> selectByExampleByPage(TemplateExample example);
}