package pl.kalkulatorBudowlany.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.kalkulatorBudowlany.entity.EN_1992_Table_4_4N_ExposureClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public interface EN_1992_Table_4_4N_ExposureClass_Repository extends JpaRepository<EN_1992_Table_4_4N_ExposureClass, Long> {

}
