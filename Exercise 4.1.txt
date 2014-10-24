declare namespace p = "http://www.parlamento.pt";

let $doc := doc("file:///afs/ist.utl.pt/users/3/2/ist169632/gti-project1/parliament-data.xml")

let $rep := (
for $speech in $doc//p:speech
let $code := $doc//p:politician[text() = "José Seguro"]/@code
let $replies := $speech[@politician = $code]/following-sibling::*[1][attribute::politician and @politician != $code]
order by $replies/@politician
return $replies)

let $codes := 
(let $dist := distinct-values($rep/@politician)
for $i in (1 to count($dist))
let $count := $rep[@politician = $dist[$i]]
return if (count($count) > 2)
	then $dist[$i]
	else ())

for $code in $codes
let $politician := $doc//p:politician[@code = $code]
return <politician party="{$politician/@party}">{$politician/text()}</politician>

