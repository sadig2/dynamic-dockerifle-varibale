adi_xml = "ADI.xml"

with open(adi_xml, "rb") as fd:
    data = fd.read()
    print(type(data.decode()))
    data_formatted = "".join(data.decode().splitlines())
    # print("".join(data.decode()).splitlines(), "\n")
    print(data_formatted)