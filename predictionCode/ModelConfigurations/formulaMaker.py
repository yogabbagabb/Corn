



def addFixedEffects(desiredComponents, formulaString=""):
    theLength = len(desiredComponents)
    for counter, component in enumerate(desiredComponents):
        if component == "EVI":
            formulaString += "evi5 +  evi6 +  evi7 +  evi8"
        if component == "EVI2":
            formulaString += "I(evi5^2) + I(evi6^2) + I(evi7^2) + I(evi8^2)"
        if component == "VPD":
            formulaString += "vpdave5 +  vpdave6 +  vpdave7 +  vpdave8"
        if component == "VPD2":
            formulaString += "I(vpdave5^2) + I(vpdave6^2) + I(vpdave7^2) + I(vpdave8^2)"
        if component == "PRECIP":
            formulaString += "precip5 +  precip6 +  precip7 +  precip8"
        if component == "PRECIP2":
            formulaString += "I(precip5^2) + I(precip6^2) + I(precip7^2) + I(precip8^2)"
        if component == "FIPS":
            formulaString += "FIPS"
        if counter != (theLength -1):
            formulaString += " + "
    return formulaString

def addRandomStateFIPSEffects(desiredComponents,formulaString=""):
    theLength = len(desiredComponents)
    for counter, component in enumerate(desiredComponents):
        if component == "EVI":
            formulaString += "(0 + evi5 | State/FIPS) +  (0 + evi6 | State/FIPS) +  (0 + evi7 | State/FIPS) +  (0 + evi8 | State/FIPS)"
        if component == "EVI2":
            formulaString += "(0 + I(evi5^2) | State/FIPS) + (0 + I(evi6^2) | State/FIPS) + (0 + I(evi7^2) | State/FIPS) + (0 + I(evi8^2) | State/FIPS)"
        if component == "VPD":
            formulaString += "(0 + vpdave5 | State/FIPS) +  (0 + vpdave6 | State/FIPS) +  (0 + vpdave7 | State/FIPS) +  (0 + vpdave8 | State/FIPS)"
        if component == "VPD2":
            formulaString += "(0 + I(vpdave5^2) | State/FIPS) + (0 + I(vpdave6^2) | State/FIPS) + (0 + I(vpdave7^2) | State/FIPS) + (0 + I(vpdave8^2) | State/FIPS)"
        if component == "INTERCEPT":
            formulaString += "(1 | State/FIPS)"
        if counter != (theLength-1):
            formulaString += " + "

    return formulaString


def addRandomStateEffects(desiredComponents,formulaString=""):
    theLength = len(desiredComponents)
    for counter, component in enumerate(desiredComponents):
        if component == "EVI":
            formulaString += "(0 + evi5 | State) +  (0 + evi6 | State) +  (0 + evi7 | State) +  (0 + evi8 | State)"
        if component == "EVI2":
            formulaString += "(0 + I(evi5^2) | State) + (0 + I(evi6^2) | State) + (0 + I(evi7^2) | State) + (0 + I(evi8^2) | State)"
        if component == "VPD":
            formulaString += "(0 + vpdave5 | State) +  (0 + vpdave6 | State) +  (0 + vpdave7 | State) +  (0 + vpdave8 | State)"
        if component == "VPD2":
            formulaString += "(0 + I(vpdave5^2) | State) + (0 + I(vpdave6^2) | State) + (0 + I(vpdave7^2) | State) + (0 + I(vpdave8^2) | State)"
        if component == "PRECIP":
            formulaString += "(0 + precip5 | State) +  (0 + precip6 | State) +  (0 + precip7 | State) +  (0 + precip8 | State)"
        if component == "PRECIP2":
            formulaString += "(0 + I(precip5^2) | State) + (0 + I(precip6^2) | State) + (0 + I(precip7^2) | State) + (0 + I(precip8^2) | State)"
        if component == "INTERCEPT":
            formulaString += "(1 | State)"
        if counter != (theLength -1):
            formulaString += " + "

    return formulaString

def printString(fixedEffects, randomStateEffects, randomStateFIPSEffects):
    formulaString = "\"yield_rainfed_ana ~ "
    if (fixedEffects != []):
        formulaString += addFixedEffects(fixedEffects)
    if (randomStateEffects != []):
        formulaString += " + " + addRandomStateEffects(randomStateEffects)
    if (randomStateFIPSEffects != []):
        formulaString += " + " + addRandomStateFIPSEffects(randomStateFIPSEffects)
    formulaString += "\""
    print(formulaString)


if __name__ == "__main__":
    fixedEffects = [['PRECIP', 'PRECIP2', 'VPD', 'VPD2'], ['PRECIP2', 'VPD', 'VPD2'], ['PRECIP', 'VPD', 'VPD2'], ['VPD', 'VPD2'], ['PRECIP', 'PRECIP2', 'VPD2'], ['PRECIP2', 'VPD2'], ['PRECIP', 'VPD2'], ['VPD2'], ['PRECIP', 'PRECIP2', 'VPD'], ['PRECIP2', 'VPD'], ['PRECIP', 'VPD'], ['VPD'], ['PRECIP', 'PRECIP2'], ['PRECIP2'], ['PRECIP'], []]
    randomStateEffects = [[], ['PRECIP'], ['PRECIP2'], ['PRECIP', 'PRECIP2'], ['VPD'], ['PRECIP', 'VPD'], ['PRECIP2', 'VPD'], ['PRECIP', 'PRECIP2', 'VPD'], ['VPD2'], ['PRECIP', 'VPD2'], ['PRECIP2', 'VPD2'], ['PRECIP', 'PRECIP2', 'VPD2'], ['VPD', 'VPD2'], ['PRECIP', 'VPD', 'VPD2'], ['PRECIP2', 'VPD', 'VPD2'], ['PRECIP', 'PRECIP2', 'VPD', 'VPD2']]
    randomStateFIPSEffects = [["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"],["INTERCEPT"]]

    for i in range(len(fixedEffects)):
        print()
        printString(fixedEffects[i], randomStateEffects[i], randomStateFIPSEffects[i])
        print()

    


    
