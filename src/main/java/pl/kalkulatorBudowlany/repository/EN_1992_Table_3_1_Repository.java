package pl.kalkulatorBudowlany.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_3_1;


public interface EN_1992_Table_3_1_Repository extends JpaRepository<EN_1992_Table_3_1, Long> {

    @Query("SELECT b FROM EN_1992_Table_3_1 b WHERE b.fck =:part")
    EN_1992_Table_3_1 findOneWhereFckEqualsPart(@Param("part") double part);


}
