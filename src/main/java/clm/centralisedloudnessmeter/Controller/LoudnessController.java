package clm.centralisedloudnessmeter.Controller;

import clm.centralisedloudnessmeter.Entity.Loudness;
import clm.centralisedloudnessmeter.Service.LoudnessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class LoudnessController {

    @Autowired
    private LoudnessService objService;

    @RequestMapping(value="/putLoudness",method = RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
    public void putLoudness(@RequestBody Loudness loudness) {

        System.out.println(loudness.toString());
        objService.putLoudness(loudness);

    }

    @GetMapping(value="/getLoudnessbyLocation/{name}")
    public String getLoudnessbyLocation(@PathVariable("name") String name)
    {
        return objService.getLoudnessbyLocation(name);
    }




}
