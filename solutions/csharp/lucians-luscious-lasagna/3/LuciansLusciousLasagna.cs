class Lasagna
{
    public int ExpectedMinutesInOven() => 40;

    public int RemainingMinutesInOven(int minutesAlreadyInOven) => ExpectedMinutesInOven() - minutesAlreadyInOven;

    public int PreparationTimeInMinutes(int layers) => layers * 2;

    public int ElapsedTimeInMinutes(int layers, int minutesAlreadyInOven) => PreparationTimeInMinutes(layers) + minutesAlreadyInOven;
}
