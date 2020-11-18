package clm.centralisedloudnessmeter.Repository;

import clm.centralisedloudnessmeter.Entity.Loudness;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
public class RepoLoudness {




    @PersistenceContext
    private EntityManager entityManager;
    @Transactional
    public void putLoudness(Loudness loudness)
    {
        entityManager.createNativeQuery("INSERT INTO Loudness_Main (Latitude,Longitude,SPL,Location,TimeStamp) VALUES (?,?,?,?,CURRENT_TIMESTAMP )")
                .setParameter(1, loudness.getLatitude())
                .setParameter(2, loudness.getLongitude())
                .setParameter(3, loudness.getSPL())
                .setParameter(4,loudness.getLocation())
                .executeUpdate();
    }

}
