package clm.centralisedloudnessmeter.Entity;

import java.io.Serializable;
import java.util.Objects;

public class LoudnessKey implements Serializable
{
    private String Latitude;
    private String Longitude;
    private String TimeStamp;

    public LoudnessKey() {
    }

    public LoudnessKey(String latitude, String longitude, String timeStamp) {
        Latitude = latitude;
        Longitude = longitude;
        TimeStamp = timeStamp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LoudnessKey that = (LoudnessKey) o;
        return Objects.equals(Latitude, that.Latitude) &&
                Objects.equals(Longitude, that.Longitude) &&
                Objects.equals(TimeStamp, that.TimeStamp);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Latitude, Longitude, TimeStamp);
    }
}

