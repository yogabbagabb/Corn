masterBoxOne = []
masterBoxTwo = []

for i in range(0,16,1):
    temp = i
    secondBox = []
    thirdBox = []
    for j in range(1,5,1):
        if (temp & 1 == 1):
            if (j == 1):
                secondBox.append("PRECIP")
            elif (j == 2):
                secondBox.append("PRECIP2")
            elif (j == 3):
                secondBox.append("VPD")
            elif (j == 4):
                secondBox.append("VPD2")
        else:
            if (j == 1):
                thirdBox.append("PRECIP")
            elif (j == 2):
                thirdBox.append("PRECIP2")
            elif (j == 3):
                thirdBox.append("VPD")
            elif (j == 4):
                thirdBox.append("VPD2")
        temp = temp >> 1
    masterBoxOne.append(secondBox)
    masterBoxTwo.append(thirdBox)
print(masterBoxOne)
print(masterBoxTwo)




