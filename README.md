# README - Test Yourself
## Contextualització del problema
El principal problema amb que es troben tots els alumnes és la manca de motivació a l'hora d'estudiar qualsevol assignatura.
>Els estudiants reporten que les solucions que existeixen per a resoldre aquest problema fins a dia d'avui no són divertides, no ajuden a combatre la mandra i molt menys el desig de procastinació dels alumnes.

## Solució i valor afegit
Segons els experts, la millor manera per facilitar l'estudi d'un temari per un examen és seguint la mateixa estructura en la que aquest es durà a terme i rebre un feedback ràpid per tal de modelar l'aprenentatge.

En el nostre cas, aquesta aplicació web *responsive* es basa en resoldre examens de tipus test, ja que és la part que hem implementat, però es podria extendre a altres tipus d'examens com podrien ser de resposta oberta (on existiria un col·lectiu que avaluaria la resposta dels alumnes/companys) o bé de caràcter matemàtic o estadístic on es facin servir tècniques diverses per resoldre diferents problemes.

Les preguntes de tipus test que hem implementat per a aquest joc tenen quatre opcions de resposta amb només una de correcta, i poden estar introduides tant pel professor com pels alumnes de l'assignatura.

La web es gestiona a través de l'administrador (perfil pensat per a que sigui el professor), que permet l'accés al test pels estudiants i dóna permisos de moderadors a certs perfils per tal de rebre ajuda a l'hora de controlar les preguntes i les respostes que es reportin degut a algun error o problema.

El nostre projecte preten augmentar la motivació de l'estudi a través de la gamificació utilitzant *rankings*, l'ús de les xarxes socials, *badges*, competicions entre alumnes i un avatar o nivell que s'obté en funció de l'experiència que es guanya conforme es plantejen preguntes i es completen tests.

- *Badges*: aquests logros es divideixen en dues families. La primera serien tots aquells fàcils d'aconseguir per incentivar la motivació i la retenció de l'usuari a la plataforma. La segona, serien tots els que es poden aconseguir gràcies al progrés personal.
- *Rankings*: recompensen a l'usuari tant en la creació de preguntes per tal d'augmentar la base de dades dels tests com amb la correcta execució dels tests. Això fomenta la cooperació i la competitivitat entre els usuaris i l'afany de superació personal.
- Avatar o nivells: recompensen a l'usuari respecte l'ús continuat de l'aplicació i el seu propi procés.
- Xarxes socials: fomenta el sentiment de pertinença d'un grup, la competitivitat entre els usuaris i la cooperació.

Per tal de conèixer el progrés o afavorir la metacognició de l'usuari hi haurà una barra d'evolució on es vegin els resultats obtinguts. Així doncs, també volem complementar l'estudi mitjançant una possible explicació de la resposta de cada pregunta que permetrà aprofundir en l'aprenentatge, i una bateria de preguntes fallades en format test per tal de tornar a examinar-se i aprendre dels errors.

Els nostres valors afegits respecte d'altres plataformes són:

- l'ús colaboratiu entre l'alumnat i el professor de l'assignatura per tal d'introduir les preguntes i la possibilitat de modificar aquestes.
- donem importància a l'usuari premiant-lo en diferents aspectes (*badges*, nivells i *rankings*) i afavorim la seva motivació en la plataforma i en la tasca d'estudi (valorant la seva evolució).
- fomenta el treball cooperatiu al tenir un objectiu compartit amb altres usuaris.

## Implementació durant la CodeathonURV2016
De tota la nostra solució hem pogut implementar:
- Login i Register d'usuaris funcional.
- Els usuaris poden enviar preguntes del test a la plataforma.
- Els usuaris poden realitzar els test, obtenir una puntuació i guanyar experiencia.
- Els usuaris poden veure i editar els seus perfils.
- Hi ha accés a rankings globals i locals del examen.

## Perspectiva futura del projecte
En primer lloc, s'hauria de dur a terme tota la implementació de les altres funcionalitats de la web que no s'han pogut acabar durant aquesta jornada, ja que ens hem basat en implementar el més funcional per a tenir un prototip del projecte de cara a la presentació. Això inclouria, per exemple, la integració de les xarxes socials per compartir el progrés de l'usuari i els *badges* aconseguits.

Una de les millores a realitzar podria consistir en integrar la nostra web amb Moodle, per tal que sigui més senzill l'ús i la gestió de l'espai.

Com ja s'ha comentat al punt de la solució el nostre projecte ara està limitat a examens amb preguntes de tipus test, però preten oferir la possibilitat d'altres formats de resposta que s'adequin a les necessitats dels usuaris. Alguns d'aquests tipus serien els examens amb resposta oberta (on podria existir un col·lectiu que avalués la resposta dels alumnes/companys) o bé examens de caràcter matemàtic o estadístic on es facin servir tècniques diverses per resoldre diferents problemes.

Una altra idea seria permetre el mode multijugador on els tests generats tinguéssin un seed per saber quines preguntes han sortit en la generació aleatòria. Aquesta pràctica permetria repetir un mateix conjunt de preguntes i així desafiar un grup d'alumnes.

## Especificacions
#### Ruby version
    2.2.0
#### Rails version
    4.2.5.1

## Instal·lació
#### 1. Clonar el projecte
```sh
$ sudo apt-get install git
$ git clone https://github.com/GaijinBushi/CodeathonURV2016_KELD.git
```
#### 2. Instal·lar Ruby
```sh
$ sudo apt-get install rvm
$ rvm install ruby-2.2.0
$ rvm use ruby-2.2.0@testyourself
```
#### 3. Realitzar un bundle install
#### 4. Crear i migrar la base de dades
```sh
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
#### 5. Arrancar el projecte
```sh
Arrancar en mode de development
```
#### 6. Accedir al navegador
```sh
$ http://localhost:3000/
```
