package pl.kalkulatorBudowlany.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_3_1;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_4_4N_StructuralClass;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_4_4N_Values;

public interface EN_1992_Table_4_4N_Values_Repository extends JpaRepository<EN_1992_Table_4_4N_Values, Long> {

    @Query("SELECT b FROM EN_1992_Table_4_4N_Values b WHERE b.exposureClass =:exposure and b.structuralClass =:structural")
    EN_1992_Table_4_4N_Values findOneWhereExposureAndStructuralEqualsPart(@Param("exposure") String exposure, @Param("structural") String structural);
}
