package clm.centralisedloudnessmeter.Entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name = "Loudness_Main")
@Table(name = "Loudness_Main")
@IdClass(LoudnessKey.class)
public class Loudness implements Serializable
{

    @Id
    @Column(name = "Latitude")
    @JsonProperty
    String Latitude;

    @Id
    @Column(name = "Longitude")
    @JsonProperty
    String Longitude;

    @Id
    @Column(name = "TimeStamp")
    String TimeStamp;

    @Column(name = "Location")
    String Location;

    @Column(name = "SPL")
    @JsonProperty
    String SPL;


    public Loudness() {
    }

    public Loudness(String latitude, String longitude,String spl,String location) {
        Latitude = latitude;
        Longitude = longitude;
        SPL = spl;
        Location = location;
    }


    public String getLatitude() {
        return Latitude;
    }

    public void setLatitude(String latitude) {
        Latitude = latitude;
    }

    public String getLongitude() {
        return Longitude;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public void setLongitude(String longitude) {
        Longitude = longitude;
    }

    public String getTimeStamp() {
        return TimeStamp;
    }

    public void setTimeStamp(String timeStamp) {
        TimeStamp = timeStamp;
    }

    public String getSPL() {
        return SPL;
    }

    public void setSPL(String SPL) {
        this.SPL = SPL;
    }

    @Override
    public String toString() {
        return "Loudness{" +
                "Latitude='" + Latitude + '\'' +
                ", Longitude='" + Longitude + '\'' +
                ", TimeStamp='" + TimeStamp + '\'' +
                ", Location='" + Location + '\'' +
                ", SPL='" + SPL + '\'' +
                '}';
    }
}
