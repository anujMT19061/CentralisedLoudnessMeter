package clm.centralisedloudnessmeter.Repository;

import clm.centralisedloudnessmeter.Entity.Loudness;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface InterfaceLoudness extends JpaRepository<Loudness,Integer> {

    @Query("select avg(SPL) from Loudness_Main group by Location having (?1 is null or Location = ?1 )")
    public String getLoudnessbyLocation(String name);


}
