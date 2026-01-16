class Lasagna
{
    public int ExpectedMinutesInOven() {
        return 40;
    }

    public int RemainingMinutesInOven(int minutesAlreadyInOven) {
        return ExpectedMinutesInOven() - minutesAlreadyInOven;
    }

    public int PreparationTimeInMinutes(int layers) {
        return layers * 2;
    }

    public int ElapsedTimeInMinutes(int layers, int minutesAlreadyInOven) {
        return PreparationTimeInMinutes(layers) + minutesAlreadyInOven;
    }
}
