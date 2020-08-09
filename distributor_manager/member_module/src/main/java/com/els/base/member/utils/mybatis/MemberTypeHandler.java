package com.els.base.member.utils.mybatis;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import com.els.base.member.entity.member.Member;
import com.els.base.member.service.member.MemberService;
import com.els.base.utils.SpringContextHolder;

public class MemberTypeHandler implements TypeHandler<Member>{
	
	@Override
	public void setParameter(PreparedStatement ps, int i, Member parameter, JdbcType jdbcType) throws SQLException {
	}

	@Override
	public Member getResult(ResultSet rs, String columnName) throws SQLException {
		MemberService memberService = SpringContextHolder.getBean("memberService");
		String memberId = rs.getString(columnName);
		return memberService.queryObjById(memberId);
	}

	@Override
	public Member getResult(ResultSet rs, int columnIndex) throws SQLException {
		MemberService memberService = SpringContextHolder.getBean("memberService");
		String memberId = rs.getString(columnIndex);
		return memberService.queryObjById(memberId);
	}

	@Override
	public Member getResult(CallableStatement cs, int columnIndex) throws SQLException {
		MemberService memberService = SpringContextHolder.getBean("memberService");
		String memberId = cs.getString(columnIndex);
		return memberService.queryObjById(memberId);
	}


}
