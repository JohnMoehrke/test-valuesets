
Shows how a ValueSet resource can be used to hold historic codes. Experimenting with inclusion of inactive codes.

First there is a [Code System](CodeSystem-cs-testy.html) with active, inactive, retired, and inactive+retired codes.

Then there are a set of ValueSets that includes all codes from that Code System.
- One [ValueSet](ValueSet-vs-values-active.html) includes only the active codes from that Code System.
- One [ValueSet](ValueSet-vs-values-inactive.html) includes only the inactive codes from that Code System.
- One [ValueSet](ValueSet-vs-values-unknown.html) does not set the inactive parameter from that Code System.

**Note** that these three properly include active or not properly.

Second there is exploration of the SAMHSA ValueSets from VSAC, specifically valueSets that are marked as not maintained, and how they include inactive codes that are needed for historic data.
- One [ValueSet](ValueSet-SamhsaJustRx-active.html) includes the `active` SAMHSA 
- One [ValueSet](ValueSet-SamhsaJustRx-inactive.html) includes the `inactive` SAMHSA
- One [ValueSet](ValueSet-SamhsaJustRx-unknown.html) does not set the inactive parameter from SAMHSA

**Note** that all three of these are the same. So the ValueSets that are being included clearly don't indicate the active/inactive status of the codes.

Unfortunately the vsac codes are still made available to an IG by use of the vsac package.
- Version 0.19.0 of the vsac package includes the SAMHSA ValueSets.
- Later versions have removed the SAMHSA ValueSets.

Should not need to use the vsac package to get these ValueSets, but currently that is the only way.

<div markdown="1" class="stu-note">

<br/>
This IG is founded on HL7 FHIR Revision {{site.data.fhir.version}} found at [{{site.data.fhir.path}}]({{site.data.fhir.path}})
<br/>
</div>


### Source

The source code for this Implementation Guide can be found on [GitHub](https://github.com/JohnMoehrke/test-valuesets)

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}

#### IP Statements

{% include ip-statements.xhtml %}
