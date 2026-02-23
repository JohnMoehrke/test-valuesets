
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

**Note** Now that vsac is natively in the tx server, the `.18` ValueSet does return with some codes marked inactive. So the above expansion works as expected.

**Note** No longer need to depend on vsac package, as it is native now in tx server

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
