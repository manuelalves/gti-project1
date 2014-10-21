declare namespace p = "http://www.parlamento.pt";

<interventions>{let $doc := doc("file:///afs/ist.utl.pt/users/3/2/ist169632/gti-project1/parliament-data.xml")
for $i in (1 to 5)
let $intervention := (for $speech in $doc//p:speech
for $interventions in $speech[attribute::politician]
order by string-length($interventions/text()) descending
return $interventions)[$i]
let $politician := $doc//p:politician[@code = $intervention/@politician]
return <intervention session-date="{$intervention/../@date}"
		party="{$politician/@party}"
 		politician="{$politician/text()}"
 		rank-order="{$i}">
{$intervention/text()} </intervention>}</interventions>