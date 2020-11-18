package clm.centralisedloudnessmeter.Service;

import clm.centralisedloudnessmeter.Entity.Loudness;
import clm.centralisedloudnessmeter.Repository.InterfaceLoudness;
import clm.centralisedloudnessmeter.Repository.RepoLoudness;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoudnessService {

    @Autowired
    private RepoLoudness objRepo;
    @Autowired
    private InterfaceLoudness objIntLoudness;

    public void putLoudness(Loudness ld)
    {
        System.out.println(ld.getLatitude());
        System.out.println(ld.getLongitude());
        System.out.println(ld.getSPL());
        System.out.println(ld.getLocation());
        Loudness loudness = new Loudness(ld.getLatitude(),ld.getLongitude(),ld.getSPL(),ld.getLocation());
        objRepo.putLoudness(loudness);
    }

    public String getLoudnessbyLocation(String name)
    {
        return objIntLoudness.getLoudnessbyLocation(name);
    }

}
