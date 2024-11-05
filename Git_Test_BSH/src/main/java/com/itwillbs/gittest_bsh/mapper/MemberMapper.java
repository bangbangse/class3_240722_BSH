package com.itwillbs.gittest_bsh.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.gittest_bsh.vo.MemberVO;

@Mapper
public interface MemberMapper {

	int insertMember(MemberVO member);
	
	//	회원 패스워드 조회 요청
	String selectMemberPasswd(String id);

	MemberVO selectMember(MemberVO member);

	int updateMember(Map<String, String> map);
	
	//	회원 탈퇴(파라미터가 2개이므로 @Param 어노테이션 필요)
	int updateMemberStatus(@Param("id") String id,@Param("member_status") int member_status);


}
