/*
Package weather provides a function to display any weather condition for any specified city.
*/
package weather

// CurrentCondition: a string which contains the current weather condition.
var CurrentCondition string
// CurrentLocation: a string which contains the name of the location, whose condition is described in CurrentCondition.
var CurrentLocation string

// Forecast returns a string in the format of: "<city> - current weather condition: + <condition>".
// Both city and condition are provided as arguments to the function.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
