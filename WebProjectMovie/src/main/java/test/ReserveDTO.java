package test;

public class ReserveDTO {
    private String movieId;
    private String theaterId;
    private String date;
    private String seat;

    // Add constructors, getters, and setters

    public ReserveDTO() {
    }

    public ReserveDTO(String movieId, String theaterId, String date, String seat) {
        this.movieId = movieId;
        this.theaterId = theaterId;
        this.date = date;
        this.seat = seat;
    }

    // Add getters and setters

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getTheaterId() {
        return theaterId;
    }

    public void setTheaterId(String theaterId) {
        this.theaterId = theaterId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }
}
