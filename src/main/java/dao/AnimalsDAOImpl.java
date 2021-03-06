package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.AnimalsDTO;

@Repository("animalsdao")
public class AnimalsDAOImpl implements AnimalsDAO {
	@Autowired
	// <=여기만 추가해주면 다른건 안 건들여도 됨.
	private SqlSession sqlSession;

	// 설정 파일에 등록된 JdbcTemplate 객체를 주입받도록 설정
	/*
	 * public MemberDAOImpl(JdbcTemplate template) { super(); this.template =
	 * template; }
	 */

	public List<AnimalsDTO> getAnimalsList(String ISO_Codes) {
		List<AnimalsDTO> animals = sqlSession.selectList("eden2Mapper.animals", ISO_Codes);
		return animals;
	}

	@Override
	public List<AnimalsDTO> getAnimalsList2(String Class_names) {
		List<AnimalsDTO> animals = sqlSession.selectList("eden2Mapper.animals2",
				Class_names);
		return animals;
	}

	// 분포도 뭐야 그..... animal3로
	public List<AnimalsDTO> getAnimalsList3(String Class_names) {
		List<AnimalsDTO> animals = sqlSession.selectList("eden2Mapper.animals3",
				Class_names);
		return animals;
	}

	@Override
	public AnimalsDTO getAnimalsList4(String Common_names) {

		AnimalsDTO animal = (AnimalsDTO) sqlSession.selectOne("eden2Mapper.animals4",
				Common_names);
		System.out.println("DAO오류" + animal.getCommon_names());
		return animal;
	}
}
