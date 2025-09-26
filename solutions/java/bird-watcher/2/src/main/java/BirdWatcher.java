import java.util.Arrays;

class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return birdsPerDay;
    }

    public int getToday() {
        // The array is said to be guaranteed to be of size 7, so we get the last index, which should be 6
        return birdsPerDay[6];
    }

    public void incrementTodaysCount() {
        // Same here, except we increment it instead of returning
        birdsPerDay[6]++;
    }

    public boolean hasDayWithoutBirds() {
        // Here we assume that it's not possible to have a negative amount of seen birds
        // As such, the lowest possible value is 0, and if there is at least one zero, this condition will be true, because zero IS the minimum number in such an array.
        return Arrays.stream(birdsPerDay).min().getAsInt() == 0;
    }

    public int getCountForFirstDays(int numberOfDays) {
        // Let's asume the user is nice and won't input a negative number of days.
        // If the numberOfDays is greater than the size of our array (7), we don't need to do any additional handling,
        // as limit(n) will not cut off our 7 elements, which is the required behaviour.
        return Arrays.stream(birdsPerDay).limit(numberOfDays).sum();
    }

    public int getBusyDays() {
        // count() returns a Long, so we need to cast it to int
        return (int) Arrays.stream(birdsPerDay).filter(i -> i >= 5).count();
    }
}
