---
title: Kuinka parantaa ulkoistetun ohjelmistoprojektin onnistumistodennäköisyyttä
layout: default
---

(draft)

[Standish Groupin mittaamista](http://www.standishgroup.com/newsroom/chaos_2009.php) ohjelmistoprojekteista on ollut

- 32%   ajallaan, budjetissa, tilatut toiminnallisuudet
- 44%   myöhässä, yli budjetin, vajaa toiminnallisuus
- 24%   epäonnistuneita(keskeytenyt, ei käytössä)

Tärkein syy mikä vaikuttaa ohjelmistoprojektien myöhästymiseen ja budjetin ylittymiseen on työmääräarvoiden hankaluus(ehkä jopa mahdottomuus). Puoli vuosisataa on jo yritetty kehitellä erilaisia arviointimenetelmiä, mutta edelleen parhaat metodit ovat:

- [Hofstadterin laki](http://en.wikipedia.org/wiki/Hofstadter's_law): "Se aina vie enemmän aikaa kuin odotit, vaikka ottaisit huomioon Hofstadterin lain."
- [90-90 sääntö](http://en.wikipedia.org/wiki/Ninety-ninety_rule): "Ensimmäiset 90% koodista vie 90% kehitysajasta, loput 10% vie toiset 90% kehitysaikaa."

Kyle Wilson on [kertonut](http://gamearchitect.net/Articles/SoftwareIsHard.html) hyvän aksiooman ohjelmistokehityksestä:
Tutkimalla mitä tahansa huomion arvoista koodin pätkää, on mahdotonta arvioida siihen käytettyä aikaa edes 100 prosentin virhemarginaalilla.
Joten:
Jos valmiin ohjelmiston osasta ei osata sanoa kauanko sen tekemiseen on mennyt, kuinka arviointi voi onnistua ennen kuin ensimmäistäkään koodiriviä on kirjoitettu?

Tämä on syy miksi kiinteähintaiset ohjelmistoprojektit ovat huono idea. Projektin tilaaja saattaa herkästi ajatella, että kiinteähintaisessa projektissa riski on toimittajalla, mutta on siinä riskejä tilaajallekkin. Toimittaja joutuu arvioimaan työmäärän mahdollisimman yläkanttiin ja sen lisäksi yleensä laskee projektin hintaan riskilisän. Tilaaja monesti yrittää saada vaatimusmäärittelyyn kaikki mahdolliset ominaisuudet, sellaisetkin "joita ehkä saattaa tarvita". Seuraksena on, että tilaaja joutuu maksamaan ylihintaa projektista ja ominaisuuksista, joita ei sitten kuitenkaan tarvitse. Tai toimittaja joutuu tinkimään laadusta, jotta saa projektin valmiiksi määräaikaan mennessä.
Tilaaja ja toimittaja joutuvat helposti eturistiriitaan. Tilaaja haluaa muuttaa vaatimuksia ja lisätä ominaisuuksia, toimittaja taas vastustaa niitä, tai vaatii lisämaksua kaikista muutoksista. Tästä aiheutuu kitkaa kommunikaatioon kehittäjien ja asiakkaan välille ja projektin riskit kasvavat entisestään.
Äärimmäisessä tapauksessa saattaa käydä niin, että huonon sopimuksen tehnyt toimittaja joutuu projektin takia pahoihin talousvaikeuksiin ja joutuu tekemään konkurssin. Tilaajalle jää keskeneräinen tuote ja sille uuden toimittajan hankkiminen ei varmasti tule halvaksi.

Koska perinteinen malli toimii niin huonosti, niin joidenkin mielestä on itseasiassa epäeettistä olla tarjoamatta asiakkaalle vaihtoehtoja kiinteähintaiselle projektille.

[Ketterät menetelmät](http://fi.wikipedia.org/wiki/Ketterä_ohjelmistokehitys) tarjoavat erilaisen lähestymistavan, niissä painotetaan esimerkiksi seuraavia asioita: "Asiakasyhteistyötä enemmän kuin sopimusneuvotteluita", joka tarkoittaa että vaikka sopimus on tärkeä, niin projektin onnistumiseen vaikuttaa enemmän yhteistyö asiakkaan ja toimittajan välillä. "Muutokseen reagoimista enemmän kuin suunnitelman noudattamista", jopa myöhäiset muutokset vaatimuksiin ovat tervetulleita, se vain tarkoittaa tehtävien uudelleen priorisointia tai määräajan siirtämistä.

## Sopimusmalleja ketterille projekteille

Millainen laskutusmalli sopii ketterälle ohjelmistoprojektille? Peter Stevens esittää [10 erilaista sopimusmallia](http://www.agilesoftwaredevelopment.com/blog/peterstev/10-agile-contracts) ja niiden sopivuuden ketterälle ohjelmistokehitykselle, joista sopivimmat ovat:

### Jaksotettu kehitys

Rahoitus vuosineljänsittäin, seuraavan neljänneksen rahoitus hyväksytään aina onnistuneen julkaisun/version jälkeen.

### Kiinteä tuotto

Projektin budjetti koostuu todellisista kuluista ja tuotosta. Osapuolet sopivat tuoton etukäteen. Riippumatta siitä milloin projekti päättyy, toimittaja saa korvauksen kuluista plus sovitun tuoton.

### "Rahaa tyhjästä, muutokset ilmaiseksi"

Vaatii työmääräarvion siitä kuinka paljon kaikkien ominaisuuksien toteuttaminen vaatisi. Laskutus normaalin tuntihinnan mukaisesti, mutta kustannustavoitteella. Kun asiakas toteaa että riittävä toiminnalisuus on saavutettu, projekti keskeytetään ja toimittaja saa keskeytysmaksun, joka on saamatta jääneen tuoton verran. Tarkempi kuvaus löytyy [esitelmästä](http://jeffsutherland.com/scrum/Agile2008MoneyforNothing.pdf), jonka Jeff Sutherland on pitänyt Agile 2008 konferenssissa.

## Ketterällä onnistut todennäköisemmin

Ohjelmistoprojektien onnistumisprosentti valitun prosessin mukaan[1]

- 71% Iterative
- 70% Agile
- 66% Traditional
- 62% Ad-Hoc

[1]: http://www.ambysoft.com/surveys/success2008.html

Kuitenkin tärkein syy joka vaikuttaa projektin onnistumismahdollisuuteen, on kommunikointi asiaakkaan ja kehittäjien välillä. Kehittäjillä ei useinkaan ole kokemusta asiakkaan toimialasta, joten asiakkaan kannattaa aktiivisesti olla mukana projektissa kertomassa käyttötapauksista.

## Mutta olemme aina ennekin saaneet kiinteähintaisia tarjouksia

Kuinka jotkut yritykset sitten pystyvät tarjoamaan kiinteähintaisia projekteja? Prosessi menee suunnilleen näin: Asiakas lähettää tarjouspyynnön IT-konsulttiyritykselle. Myyjä pyytää projektipäälliköltä työmääräarviota tarjouksesta. Projektipäällikkö käy kysymässä ohjelmoijalta(ammattitaitoinen useammalta), mutta ohjelmoija valittaa että tarjous ei ole tarpeeksi tarkka kunnollisen arvion tekemiseen(eivät ne ikinä ole), joten projektipäällikkö joutuu anelemaan edes jonkinlaista arviota. Kun arvio on valmis ohjelmoija lisää siihen varulta 20% ja antaa sen projektipäällikölle, tämä taas lisää siihen 30%(projektin hallinnointiin) ja antaa arvion myyjälle. Myyjä tuplaa arvion ja vastaa tarjouspyyntöön.
