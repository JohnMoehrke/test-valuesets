

Instance: cs-testy
InstanceOf: CodeSystem
Title: "test codeSystem with various properties"
Description: """
Various status of codes
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* title = "test codeSystem with various properties"
* name = "CS_testy"
* description = """
Various status of codes
"""
* content = #complete
* url = "http://johnmoehrke.github.io/test-valuesets/CodeSystem/cs-testy"
* version = "0.1.0"
* jurisdiction[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#840 "United States of America"
* caseSensitive = true
// Codes representing types of sensitive health information under AB352
* concept[+].code = #GoodCode1
* concept[=].display = "Good Code 1"
* concept[=].definition = "example Code that is good first"
* concept[+].code = #GoodCode2
* concept[=].display = "Good Code 2"
* concept[=].definition = "example Code that is good second"
* concept[+].code = #GoodCode3
* concept[=].display = "Good Code 3"
* concept[=].definition = "example Code that is good third"
* concept[+].code = #nothingInactive
* concept[=].display = "Test for Nothing Inactive"
* concept[=].definition = "Inactive code."
* concept[=].property[+].code = #inactive
* concept[=].property[=].valueBoolean = true
* concept[+].code = #nothingRetired
* concept[=].display = "Test for Nothing Retired"
* concept[=].definition = "Retired code."
* concept[=].property[+].code = #status
* concept[=].property[=].valueCode = #retired
* concept[+].code = #nothingInactiveRetired
* concept[=].display = "Test for Nothing Inactive Retired"
* concept[=].definition = "Inactive Retired code."
* concept[=].property[+].code = #inactive
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #status
* concept[=].property[=].valueCode = #retired
* property[+].code = #inactive
* property[=].type = #boolean
* property[=].uri = "http://hl7.org/fhir/concept-properties#inactive"
* property[+].code = #status
* property[=].type = #code
* property[=].uri = "http://hl7.org/fhir/concept-properties#status"


Instance: vs-values-inactive
InstanceOf: ValueSet
Title: "Values Inactive Tags"
Description: "ValueSet of codes including retired."
Usage: #definition
* status = #active
* experimental = false
* title = "Values Inactive Tags"
* name = "VS_Values_Inactive_Tags"
* description = "ValueSet of codes including retired."
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/vs-values-inactive"
* compose.inactive = true
* compose.include[0].system = "http://johnmoehrke.github.io/test-valuesets/CodeSystem/cs-testy"

Instance: vs-values-active
InstanceOf: ValueSet
Title: "Values Only Active Tags"
Description: "ValueSet of codes including only Active."
Usage: #definition
* status = #active
* experimental = false
* title = "Values Only Active Tags"
* name = "VS_Values_Only_Active_Tags"
* description = "ValueSet of codes including only Active."
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/vs-values-active"
* compose.inactive = false
* compose.include[0].system = "http://johnmoehrke.github.io/test-valuesets/CodeSystem/cs-testy"

Instance: vs-values-unknown
InstanceOf: ValueSet
Title: "Values Undefined inactive Tags"
Description: "ValueSet of codes including undefined inactive status."
Usage: #definition
* status = #active
* experimental = false
* title = "Values Undefined inactive Tags"
* name = "VS_Values_Undefined_Inactive_Tags"
* description = "ValueSet of codes including undefined inactive status."
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/vs-values-unknown"
//* compose.inactive = false
* compose.include[0].system = "http://johnmoehrke.github.io/test-valuesets/CodeSystem/cs-testy"



Instance: SamhsaJustRx-inactive
InstanceOf: ValueSet
Usage: #definition
Title: "Inactive clinical codes that indicate ETH from RXNORM"
Description: """
just valueSets from RXNORM that indicate ETH and have retired codes

These valueSets are `not maintained`
"""
* name = "SamhsaJustRx_inactive"
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/SamhsaJustRx-inactive"
* status = #active
* experimental = false
* compose.inactive = true
// SAMHSA C2S Amphetamine Use Disorders
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.10" // RXNORM
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.57" // RXNORM


Instance: SamhsaJustRx-active
InstanceOf: ValueSet
Usage: #definition
Title: "Active clinical codes that indicate ETH from RXNORM"
Description: """
just valueSets from RXNORM that indicate ETH and have retired codes

These valueSets are `not maintained`
"""
* name = "SamhsaJustRx_active"
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/SamhsaJustRx-active"
* status = #active
* experimental = false
* compose.inactive = false
// SAMHSA C2S Amphetamine Use Disorders
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.10" // RXNORM
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.57" // RXNORM


Instance: SamhsaJustRx-unknown
InstanceOf: ValueSet
Usage: #definition
Title: "Inactive not defined clinical codes that indicate ETH from RXNORM"
Description: """
just valueSets from RXNORM that indicate ETH and have retired codes

These valueSets are `not maintained`
"""
* name = "SamhsaJustRx_unknown"
* url = "http://johnmoehrke.github.io/test-valuesets/ValueSet/SamhsaJustRx-unknown"
* status = #active
* experimental = false
//* compose.inactive = false
// SAMHSA C2S Amphetamine Use Disorders
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.10" // RXNORM
* compose.include[+].valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.57" // RXNORM
