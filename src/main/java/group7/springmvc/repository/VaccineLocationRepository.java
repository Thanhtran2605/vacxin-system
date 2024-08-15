package group7.springmvc.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import group7.springmvc.model.VaccineLocation;

@Repository
public interface VaccineLocationRepository extends JpaRepository<VaccineLocation, Long> {
    List<VaccineLocation> findByNameLocationContaining(String keyword);
}
