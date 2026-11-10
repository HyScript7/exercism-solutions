package interest

// InterestRate returns the interest rate for the provided balance.
func InterestRate(balance float64) float32 {
	if balance < 0 {
        return 3.213
    } else if balance >= 5000 {
        return 2.475
    } else if balance >= 1000  {
        return 1.621
    } else {
        return 0.5
    }
}

// Interest calculates the interest for the provided balance.
func Interest(balance float64) float64 {
	return balance * float64(InterestRate(balance)) / 100.0;
}

// AnnualBalanceUpdate calculates the annual balance update, taking into account the interest rate.
func AnnualBalanceUpdate(balance float64) float64 {
	return balance + Interest(balance)
}

// YearsBeforeDesiredBalance calculates the minimum number of years required to reach the desired balance.
func YearsBeforeDesiredBalance(balance, targetBalance float64) int {
	if (targetBalance <= balance) {
        return 0
    }
    var years int
    for years = 0; balance < targetBalance; years++ {
        balance = AnnualBalanceUpdate(balance)
    }
    return years
}
