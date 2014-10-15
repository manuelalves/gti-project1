<interventions>{let $doc := doc("file:///C:\Users\Ricardo Leitão\Documents\gti-project1\parliament-data.xml")
for $i in (1 to 5)
let $intervention := (for $speech in $doc//speech
for $interventions in $speech[attribute::politician]
order by string-length($interventions/text()) descending
return $interventions)[$i]
let $politician := $doc//politician[@code = $intervention/@politician]
return <intervention session-date="{$intervention/../@date}"
		party="{$politician/@party}"
 		politician="{$politician/text()}"
 		rank-order="{$i}">
{$intervention/text()} </intervention>}</interventions>