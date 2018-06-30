‰
cC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\App_Start\BundleConfig.cs
	namespace 	
EventOn
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} ç
cC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\App_Start\FilterConfig.cs
	namespace 	
EventOn
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} Î
bC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\App_Start\RouteConfig.cs
	namespace 	
EventOn
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} ¥*
kC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Controllers\BusinessController.cs
	namespace 	
EventOn
 
. 
Controllers 
{ 
public 

class 
BusinessController #
:$ %

Controller& 0
{ 
[ 	
	Authorize	 
] 
public 
ActionResult 
ListBusiness (
(( )
)) *
{ 	!
ListBusinessViewModel !
objViewModel" .
=/ 0
new1 4!
ListBusinessViewModel5 J
(J K
)K L
;L M
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
ListBusiness (
(( )!
ListBusinessViewModel) >
objViewModel? K
)K L
{ 	
objViewModel 
. 
fill 
( 
) 
;  
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
	Authorize	 
] 
public 
ActionResult 
AddEditBusiness +
(+ ,
int, /
?/ 0

businessid1 ;
); <
{ 	$
AddEditBusinessViewModel $
objViewModel% 1
=2 3
new4 7$
AddEditBusinessViewModel8 P
(P Q
)Q R
;R S
objViewModel   
.   
cargarDatos   $
(  $ %

businessid  % /
)  / 0
;  0 1
return!! 
View!! 
(!! 
objViewModel!! $
)!!$ %
;!!% &
}"" 	
[$$ 	
	Authorize$$	 
]$$ 
[%% 	
HttpPost%%	 
]%% 
public&& 
ActionResult&& 
AddEditBusiness&& +
(&&+ ,$
AddEditBusinessViewModel&&, D
objViewModel&&E Q
)&&Q R
{'' 	
try(( 
{)) 
if** 
(** 
objViewModel**  
.**  !

tieneValor**! +
)**+ ,
{++ 
objViewModel,,  
.,,  !
objectBusiness,,! /
.,,/ 0

idBusiness,,0 :
=,,; <
(,,= >
int,,> A
),,A B
objViewModel,,B N
.,,N O

businessID,,O Y
;,,Y Z
objViewModel--  
.--  !
ModificarBusiness--! 2
(--2 3
objViewModel--3 ?
.--? @
objectBusiness--@ N
)--N O
;--O P
}.. 
else// 
{00 
objViewModel11  
.11  !
RegistrarBusiness11! 2
(112 3
objViewModel113 ?
.11? @
objectBusiness11@ N
)11N O
;11O P
}22 
if44 
(44 
objViewModel44  
.44  !

tieneValor44! +
)44+ ,
{55 
TempData66 
[66 
$str66 &
]66& '
=66( )
$str66* S
;66S T
}77 
else88 
{99 
TempData:: 
[:: 
$str:: &
]::& '
=::( )
$str::* T
;::T U
};; 
return== 
RedirectToAction== '
(==' (
$str==( 6
)==6 7
;==7 8
}>> 
catch?? 
(?? 
	Exception?? 
e?? 
)?? 
{@@ 
TempDataAA 
[AA 
$strAA '
]AA' (
=AA) *
$strAA+ 4
+AA5 6
eAA7 8
.AA8 9
MessageAA9 @
.AA@ A
ToListAAA G
(AAG H
)AAH I
;AAI J
returnBB 
ViewBB 
(BB 
objViewModelBB (
)BB( )
;BB) *
}CC 
}DD 	
[FF 	
	AuthorizeFF	 
]FF 
publicGG 
ActionResultGG 
DeleteBusinessGG *
(GG* +
intGG+ .

businessidGG/ 9
)GG9 :
{HH 	$
AddEditBusinessViewModelII $
objViewModelII% 1
=II2 3
newII4 7$
AddEditBusinessViewModelII8 P
(IIP Q
)IIQ R
;IIR S
tryJJ 
{KK 
objViewModelLL 
.LL 
EliminarBusinessLL -
(LL- .

businessidLL. 8
)LL8 9
;LL9 :
TempDataMM 
[MM 
$strMM "
]MM" #
=MM$ %
$strMM& N
;MMN O
returnNN 
RedirectToActionNN '
(NN' (
$strNN( 6
)NN6 7
;NN7 8
}OO 
catchPP 
(PP 
	ExceptionPP 
ePP 
)PP 
{QQ 
TempDataRR 
[RR 
$strRR '
]RR' (
=RR) *
$strRR+ 4
+RR5 6
eRR7 8
.RR8 9
MessageRR9 @
.RR@ A
ToListRRA G
(RRG H
)RRH I
;RRI J
returnSS 
RedirectToActionSS '
(SS' (
$strSS( 6
)SS6 7
;SS7 8
}TT 
}UU 	
}VV 
}WW Ï)
iC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Controllers\EventsController.cs
	namespace 	
EventOn
 
. 
Controllers 
{ 
public 

class 
EventsController !
:" #

Controller$ .
{ 
[ 	
	Authorize	 
] 
public 
ActionResult 

ListEvents &
(& '
)' (
{ 	
ListEventsViewModel 
objViewModel  ,
=- .
new/ 2
ListEventsViewModel3 F
(F G
)G H
;H I
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 

ListEvents &
(& '
ListEventsViewModel' :
objViewModel; G
)G H
{ 	
objViewModel 
. 
fill 
( 
) 
;  
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
	Authorize	 
] 
public 
ActionResult 
AddEditEvent (
(( )
int) ,
?, -
eventid. 5
)5 6
{   	!
AddEditEventViewModel!! !
objViewModel!!" .
=!!/ 0
new!!1 4!
AddEditEventViewModel!!5 J
(!!J K
)!!K L
;!!L M
objViewModel"" 
."" 
cargarDatos"" $
(""$ %
eventid""% ,
)"", -
;""- .
return## 
View## 
(## 
objViewModel## $
)##$ %
;##% &
}$$ 	
[&& 	
	Authorize&&	 
]&& 
['' 	
HttpPost''	 
]'' 
public(( 
ActionResult(( 
AddEditEvent(( (
(((( )!
AddEditEventViewModel(() >
objViewModel((? K
)((K L
{)) 	
try** 
{++ 
if-- 
(-- 
objViewModel--  
.--  !

tieneValor--! +
)--+ ,
{.. 
objViewModel//  
.//  !
objectEvent//! ,
.//, -
idEvent//- 4
=//5 6
(//7 8
int//8 ;
)//; <
objViewModel//< H
.//H I
eventID//I P
;//P Q
objViewModel00  
.00  !
ModificarEvent00! /
(00/ 0
objViewModel000 <
.00< =
objectEvent00= H
)00H I
;00I J
}11 
else22 
{33 
objViewModel44  
.44  !
RegistrarEvento44! 0
(440 1
objViewModel441 =
.44= >
objectEvent44> I
)44I J
;44J K
}55 
if77 
(77 
objViewModel77  
.77  !

tieneValor77! +
)77+ ,
{88 
TempData99 
[99 
$str99 &
]99& '
=99( )
$str99* S
;99S T
}:: 
else;; 
{<< 
TempData== 
[== 
$str== &
]==& '
===( )
$str==* T
;==T U
}>> 
return@@ 
RedirectToAction@@ '
(@@' (
$str@@( 4
)@@4 5
;@@5 6
}AA 
catchBB 
(BB 
	ExceptionBB 
eBB 
)BB 
{CC 
TempDataDD 
[DD 
$strDD '
]DD' (
=DD) *
$strDD+ 4
+DD5 6
eDD7 8
.DD8 9
MessageDD9 @
.DD@ A
ToListDDA G
(DDG H
)DDH I
;DDI J
returnEE 
ViewEE 
(EE 
objViewModelEE (
)EE( )
;EE) *
}FF 
}GG 	
[II 	
	AuthorizeII	 
]II 
publicJJ 
ActionResultJJ 
DeleteEventoJJ (
(JJ( )
intJJ) ,
eventidJJ- 4
)JJ4 5
{KK 	!
AddEditEventViewModelLL !
objViewModelLL" .
=LL/ 0
newLL1 4!
AddEditEventViewModelLL5 J
(LLJ K
)LLK L
;LLL M
tryMM 
{NN 
objViewModelOO 
.OO 
EliminarEventOO *
(OO* +
eventidOO+ 2
)OO2 3
;OO3 4
TempDataPP 
[PP 
$strPP "
]PP" #
=PP$ %
$strPP& M
;PPM N
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( 4
)QQ4 5
;QQ5 6
}RR 
catchSS 
(SS 
	ExceptionSS 
eSS 
)SS 
{TT 
TempDataUU 
[UU 
$strUU '
]UU' (
=UU) *
$strUU+ 4
+UU5 6
eUU7 8
.UU8 9
MessageUU9 @
.UU@ A
ToListUUA G
(UUG H
)UUH I
;UUI J
returnVV 
RedirectToActionVV '
(VV' (
$strVV( 4
)VV4 5
;VV5 6
}WW 
}XX 	
}YY 
}ZZ √!
gC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Controllers\HomeController.cs
	namespace

 	
EventOn


 
.

 
Controllers

 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
[ 	
	Authorize	 
] 
public 
ActionResult 
Index !
(! "
)" #
{ 	
IndexValueViewModel 
objViewModel  ,
=- .
new/ 2
IndexValueViewModel3 F
(F G
)G H
;H I
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
public 
ActionResult 
Login !
(! "
)" #
{ 	
LoginViewModel 
objViewModel '
=( )
new* -
LoginViewModel. <
(< =
)= >
;> ?
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
Login !
(! "
LoginViewModel" 0
objViewModel1 =
)= >
{ 	
try 
{ 
EventOnEntities   
context    '
=  ( )
new  * -
EventOnEntities  . =
(  = >
)  > ?
;  ? @
User!! 

objUsuario!! 
=!!  !
context!!" )
.!!) *
Users!!* /
."" 
FirstOrDefault"" #
(""# $
x""$ %
=>""& (
x"") *
.""* +
userName""+ 3
==""4 6
objViewModel""7 C
.""C D
userName""D L
&&""M O
x""P Q
.""Q R
password""R Z
==""[ ]
objViewModel""^ j
.""j k
password""k s
)""s t
;""t u
if$$ 
($$ 

objUsuario$$ 
==$$ !
null$$" &
)$$& '
{%% 
Console&& 
.&& 
	WriteLine&& %
(&&% &
$str&&& /
)&&/ 0
;&&0 1
TempData'' 
['' 
$str'' +
]''+ ,
=''- .
$str''/ X
;''X Y
return(( 
View(( 
(((  
objViewModel((  ,
)((, -
;((- .
})) 
FormsAuthentication** #
.**# $
SetAuthCookie**$ 1
(**1 2

objUsuario**2 <
.**< =
userName**= E
,**E F
false**G L
)**L M
;**M N
Session++ 
[++ 
$str++ $
]++$ %
=++& '

objUsuario++( 2
;++2 3
return-- 
RedirectToAction-- '
(--' (
$str--( /
,--/ 0
$str--1 7
)--7 8
;--8 9
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
TempData22 
[22 
$str22 ,
]22, -
=22. /
$str220 9
+22: ;
ex22< >
.22> ?
Message22? F
.22F G
ToString22G O
(22O P
)22P Q
;22Q R
return33 
View33 
(33 
objViewModel33 (
)33( )
;33) *
}44 
}55 	
[77 	
	Authorize77	 
]77 
public88 
ActionResult88 
CerrarSesion88 (
(88( )
)88) *
{99 	
FormsAuthentication:: 
.::  
SignOut::  '
(::' (
)::( )
;::) *
Session;; 
.;; 
Clear;; 
(;; 
);; 
;;; 
LoginViewModel<< 
objViewModel<< '
=<<( )
new<<* -
LoginViewModel<<. <
(<<< =
)<<= >
;<<> ?
return== 
RedirectToAction== #
(==# $
$str==$ +
,==+ ,
$str==- 3
)==3 4
;==4 5
}>> 	
}?? 
}@@ Ö*
jC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Controllers\SectorsController.cs
	namespace 	
EventOn
 
. 
Controllers 
{ 
public 

class 
SectorsController "
:# $

Controller% /
{ 
[ 	
	Authorize	 
] 
public 
ActionResult 
ListSectors '
(' (
)( )
{ 	 
ListSectorsViewModel  
objViewModel! -
=. /
new0 3 
ListSectorsViewModel4 H
(H I
)I J
;J K
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
ListSectors '
(' ( 
ListSectorsViewModel( <
objViewModel= I
)I J
{ 	
objViewModel 
. 
fill 
( 
) 
;  
return 
View 
( 
objViewModel $
)$ %
;% &
} 	
[ 	
	Authorize	 
] 
public 
ActionResult 
AddEditSector )
() *
int* -
?- .
sectorid/ 7
)7 8
{ 	"
AddEditSectorViewModel "
objViewModel# /
=0 1
new2 5"
AddEditSectorViewModel6 L
(L M
)M N
;N O
objViewModel   
.   
cargarDatos   $
(  $ %
sectorid  % -
)  - .
;  . /
return!! 
View!! 
(!! 
objViewModel!! $
)!!$ %
;!!% &
}"" 	
[$$ 	
	Authorize$$	 
]$$ 
[%% 	
HttpPost%%	 
]%% 
public&& 
ActionResult&& 
AddEditSector&& )
(&&) *"
AddEditSectorViewModel&&* @
objViewModel&&A M
)&&M N
{'' 	
try(( 
{)) 
if++ 
(++ 
objViewModel++  
.++  !

tieneValor++! +
)+++ ,
{,, 
objViewModel--  
.--  !
objectSector--! -
.--- .
idSector--. 6
=--7 8
(--9 :
int--: =
)--= >
objViewModel--> J
.--J K
sectorID--K S
;--S T
objViewModel..  
...  !
ModificarSector..! 0
(..0 1
objViewModel..1 =
...= >
objectSector..> J
)..J K
;..K L
}// 
else00 
{11 
objViewModel22  
.22  !
RegistrarSector22! 0
(220 1
objViewModel221 =
.22= >
objectSector22> J
)22J K
;22K L
}33 
if55 
(55 
objViewModel55  
.55  !

tieneValor55! +
)55+ ,
{66 
TempData77 
[77 
$str77 &
]77& '
=77( )
$str77* S
;77S T
}88 
else99 
{:: 
TempData;; 
[;; 
$str;; &
];;& '
=;;( )
$str;;* T
;;;T U
}<< 
return>> 
RedirectToAction>> '
(>>' (
$str>>( 5
)>>5 6
;>>6 7
}?? 
catch@@ 
(@@ 
	Exception@@ 
e@@ 
)@@ 
{AA 
TempDataBB 
[BB 
$strBB '
]BB' (
=BB) *
$strBB+ 4
+BB4 5
eBB5 6
.BB6 7
MessageBB7 >
.BB> ?
ToListBB? E
(BBE F
)BBF G
;BBG H
returnCC 
ViewCC 
(CC 
objViewModelCC (
)CC( )
;CC) *
}DD 
}EE 	
[GG 	
	AuthorizeGG	 
]GG 
publicHH 
ActionResultHH 
DeleteSectorHH (
(HH( )
intHH) ,
sectoridHH- 5
)HH5 6
{II 	"
AddEditSectorViewModelJJ "
objViewModelJJ# /
=JJ0 1
newJJ2 5"
AddEditSectorViewModelJJ6 L
(JJL M
)JJM N
;JJN O
tryKK 
{LL 
objViewModelMM 
.MM 
EliminarSectorMM +
(MM+ ,
sectoridMM, 4
)MM4 5
;MM5 6
TempDataNN 
[NN 
$strNN "
]NN" #
=NN$ %
$strNN& M
;NNM N
returnOO 
RedirectToActionOO '
(OO' (
$strOO( 5
)OO5 6
;OO6 7
}PP 
catchQQ 
(QQ 
	ExceptionQQ 
eQQ 
)QQ 
{RR 
TempDataSS 
[SS 
$strSS '
]SS' (
=SS) *
$strSS+ 4
+SS5 6
eSS7 8
.SS8 9
MessageSS9 @
.SS@ A
ToListSSA G
(SSG H
)SSH I
;SSI J
returnTT 
RedirectToActionTT '
(TT' (
$strTT( 5
)TT5 6
;TT6 7
}UU 
}VV 	
}WW 
}XX ˛
XC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Global.asax.cs
	namespace		 	
EventOn		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} è
dC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str "
)" #
]# $
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *›D
ÅC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\BusinessViewModel\AddEditBusinessViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
BusinessViewModel -
{ 
public		 

class		 $
AddEditBusinessViewModel		 )
{

 
public 
int 
? 

businessID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Business 
objectBusiness &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 

tieneValor 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
User 
> 
	ListUsers #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
List 
< 
Sector 
> 
ListSectors '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public $
AddEditBusinessViewModel '
(' (
)( )
{ 	
objectBusiness 
= 
new  
Business! )
() *
)* +
;+ ,
} 	
public 
void 
cargarDatos 
(  
int  #
?# $

businessid% /
)/ 0
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
this 
. 
ListSectors 
= 
context &
.& '
Sectors' .
.. /
ToList/ 5
(5 6
)6 7
;7 8
this 
. 
	ListUsers 
= 
context $
.$ %
Users% *
.* +
ToList+ 1
(1 2
)2 3
;3 4

tieneValor   
=   
false   
;   
if!! 
(!! 

businessid!! 
.!! 
HasValue!! #
)!!# $
{"" 
Business## 
objBusiness## $
=##% &
context##' .
.##. /

Businesses##/ 9
.##9 :
FirstOrDefault##: H
(##H I
x##I J
=>##K M
x##N O
.##O P

idBusiness##P Z
==##[ ]

businessid##^ h
)##h i
;##i j
this$$ 
.$$ 

businessID$$ 
=$$  !

businessid$$" ,
;$$, -
objectBusiness%% 
.%% 

idBusiness%% )
=%%) *
objBusiness%%+ 6
.%%6 7

idBusiness%%7 A
;%%A B
objectBusiness&& 
.&& 
businessName&& +
=&&, -
objBusiness&&. 9
.&&9 :
businessName&&: F
;&&F G
objectBusiness'' 
.'' 
	RUCNumber'' (
='') *
objBusiness''+ 6
.''6 7
	RUCNumber''7 @
;''@ A
objectBusiness(( 
.(( 
businessPhone(( ,
=((- .
objBusiness((/ :
.((: ;
businessPhone((; H
;((H I
objectBusiness)) 
.)) 
contactName)) *
=))+ ,
objBusiness))- 8
.))8 9
contactName))9 D
;))D E
objectBusiness** 
.** 
contactPhone** +
=**, -
objBusiness**. 9
.**9 :
contactPhone**: F
;**F G
objectBusiness++ 
.++ 
User++ #
=++$ %
objBusiness++& 1
.++1 2
User++2 6
;++6 7
objectBusiness,, 
.,, 
Sector,, %
=,,& '
objBusiness,,( 3
.,,3 4
Sector,,4 :
;,,: ;

tieneValor-- 
=-- 
true-- !
;--! "
}.. 
}// 	
public00 
void00 
RegistrarBusiness00 %
(00% &
Business00& .
_objBusiness00/ ;
)00; <
{11 	
EventOnEntities22 
context22 #
=22$ %
new22& )
EventOnEntities22* 9
(229 :
)22: ;
;22; <
_objBusiness33 
.33 
estado33 
=33  !
$str33" %
;33% &
context44 
.44 

Businesses44 
.44 
Add44 "
(44" #
_objBusiness44# /
)44/ 0
;440 1
context55 
.55 
SaveChanges55 
(55  
)55  !
;55! "
}66 	
public77 
void77 
ModificarBusiness77 %
(77% &
Business77& .
_objBusiness77/ ;
)77; <
{88 	
EventOnEntities99 
context99 #
=99$ %
new99& )
EventOnEntities99* 9
(999 :
)99: ;
;99; <
Business:: 
objBusiness::  
=::! "
context::# *
.::* +

Businesses::+ 5
.::5 6
FirstOrDefault::6 D
(::D E
x::E F
=>::G I
x::J K
.::K L

idBusiness::L V
==::W Y
_objBusiness::Z f
.::f g

idBusiness::g q
)::q r
;::r s
objBusiness;; 
.;; 
businessName;; $
=;;% &
_objBusiness;;' 3
.;;3 4
businessName;;4 @
;;;@ A
objBusiness<< 
.<< 
	RUCNumber<< !
=<<" #
_objBusiness<<$ 0
.<<0 1
	RUCNumber<<1 :
;<<: ;
objBusiness== 
.== 
businessPhone== %
===& '
_objBusiness==( 4
.==4 5
businessPhone==5 B
;==B C
objBusiness>> 
.>> 
contactName>> #
=>>$ %
_objBusiness>>& 2
.>>2 3
contactName>>3 >
;>>> ?
objBusiness?? 
.?? 
contactPhone?? $
=??% &
_objBusiness??' 3
.??3 4
contactPhone??4 @
;??@ A
objBusiness@@ 
.@@ 
User@@ 
=@@ 
_objBusiness@@ +
.@@+ ,
User@@, 0
;@@0 1
objBusinessAA 
.AA 
SectorAA 
=AA  
_objBusinessAA! -
.AA- .
SectorAA. 4
;AA4 5
objBusinessBB 
.BB 
estadoBB 
=BB  
$strBB! $
;BB$ %
contextCC 
.CC 
SaveChangesCC 
(CC  
)CC  !
;CC! "
}EE 	
publicFF 
voidFF 
EliminarBusinessFF $
(FF$ %
intFF% (

BusinessIdFF) 3
)FF3 4
{GG 	
EventOnEntitiesHH 
contextHH #
=HH$ %
newHH& )
EventOnEntitiesHH* 9
(HH9 :
)HH: ;
;HH; <
BusinessII 
objBusinessII  
=II! "
contextII# *
.II* +

BusinessesII+ 5
.II5 6
FirstOrDefaultII6 D
(IID E
xIIE F
=>IIG I
xIIJ K
.IIK L

idBusinessIIL V
==IIW Y

BusinessIdIIZ d
)IId e
;IIe f
objBusinessJJ 
.JJ 
estadoJJ 
=JJ  
$strJJ! $
;JJ$ %
contextKK 
.KK 
SaveChangesKK 
(KK  
)KK  !
;KK! "
}LL 	
publicMM 
boolMM 
BusinessExisteMM "
(MM" #
stringMM# )
_nombrebusinessMM* 9
)MM9 :
{NN 	
EventOnEntitiesOO 
contextOO #
=OO$ %
newOO& )
EventOnEntitiesOO* 9
(OO9 :
)OO: ;
;OO; <
BusinessPP 
objBusinessPP  
=PP! "
contextPP# *
.PP* +

BusinessesPP+ 5
.PP5 6
FirstOrDefaultPP6 D
(PPD E
xPPE F
=>PPG I
xPPJ K
.PPK L
businessNamePPL X
==PPY [
_nombrebusinessPP\ k
)PPk l
;PPl m
ifQQ 
(QQ 
objBusinessQQ 
!=QQ 
nullQQ #
)QQ# $
returnQQ% +
trueQQ, 0
;QQ0 1
returnRR 
falseRR 
;RR 
}SS 	
}TT 
}UU ´
~C:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\BusinessViewModel\ListBusinessViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
BusinessViewModel -
{ 
public		 

class		 !
ListBusinessViewModel		 &
{

 
public 
List 
< 
Business 
> 
ListBusiness *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
Filtro 
{ 
get "
;" #
set$ '
;' (
}) *
public !
ListBusinessViewModel $
($ %
)% &
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
ListBusiness 
= 
context "
." #

Businesses# -
.- .
Where. 3
(3 4
x4 5
=>6 8
x9 :
.: ;
estado; A
==B D
$strE H
)H I
.I J
ToListJ P
(P Q
)Q R
;R S
} 	
public 
void 
fill 
( 
) 
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
Filtro& ,
), -
)- .
ListBusiness/ ;
=< =
context> E
.E F

BusinessesF P
. 
Where 
( 
x 
=> 
x  !
.! "
estado" (
==) +
$str, /
&&0 2
x3 4
.4 5
businessName5 A
.A B
ToUpperB I
(I J
)J K
.K L
ContainsL T
(T U
FiltroU [
.[ \
ToUpper\ c
(c d
)d e
)e f
)f g
. 
ToList 
( 
) 
; 
} 	
} 
} ﬂ
yC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\IndexViewModel\IndexValueViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
IndexViewModel *
{ 
public		 

class		 
IndexValueViewModel		 $
{

 
public 
int 
nroEvent 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
nroBusiness 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	nroSector 
{ 
get "
;" #
set$ '
;' (
}) *
public 
IndexValueViewModel "
(" #
)# $
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
nroBusiness 
= 
context !
.! "

Businesses" ,
., -
Count- 2
(2 3
)3 4
;4 5
nroEvent 
= 
context 
. 
Events %
.% &
Count& +
(+ ,
), -
;- .
	nroSector 
= 
context 
.  
Sectors  '
.' (
Count( -
(- .
). /
;/ 0
} 	
} 
} ê
tC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\IndexViewModel\LoginViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
IndexViewModel *
{ 
public 

class 
LoginViewModel 
{		 
public

 
String

 
userName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
String 
password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
LoginViewModel 
( 
) 
{ 	
} 	
} 
} Ï>
|C:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\EventsViewModel\AddEditEventViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
EventsViewModel +
{ 
public		 

class		 !
AddEditEventViewModel		 &
{

 
public 
int 
? 
eventID 
{ 
get !
;! "
set# &
;& '
}( )
public 
Event 
objectEvent  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 

tieneValor 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
Business 
> 
ListBusiness *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
List 
< 
Category 
> 
ListCategory *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public !
AddEditEventViewModel $
($ %
)% &
{ 	
objectEvent 
= 
new 
Event #
(# $
)$ %
;% &
} 	
public 
void 
cargarDatos 
(  
int  #
?# $
eventid% ,
), -
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
this 
. 
ListBusiness 
= 
context  '
.' (

Businesses( 2
.2 3
ToList3 9
(9 :
): ;
;; <
this 
. 
ListCategory 
= 
context  '
.' (

Categories( 2
.2 3
ToList3 9
(9 :
): ;
;; <

tieneValor   
=   
false   
;   
if!! 
(!! 
eventid!! 
.!! 
HasValue!!  
)!!  !
{"" 
Event## 
objEvent## 
=##  
context##! (
.##( )
Events##) /
.$$ 
Include$$ 
($$ 
$str$$ '
)$$' (
.%% 
Include%% 
(%% 
$str%% '
)%%' (
.&& 
FirstOrDefault&& #
(&&# $
x&&$ %
=>&&& (
x&&) *
.&&* +
idEvent&&+ 2
==&&3 5
eventid&&6 =
)&&= >
;&&> ?
this(( 
.(( 
eventID(( 
=(( 
eventid(( &
;((& '
objectEvent)) 
.)) 
idEvent)) #
=))$ %
objEvent))& .
.)). /
idEvent))/ 6
;))6 7
objectEvent** 
.** 
name**  
=**! "
objEvent**# +
.**+ ,
name**, 0
;**0 1
objectEvent++ 
.++ 
place++ !
=++" #
objEvent++$ ,
.++, -
place++- 2
;++2 3
objectEvent,, 
.,, 
date,,  
=,,! "
objEvent,,# +
.,,+ ,
date,,, 0
;,,0 1
objectEvent-- 
.-- 
Business-- $
=--% &
objEvent--' /
.--/ 0
Business--0 8
;--8 9
objectEvent.. 
... 
Category.. $
=..% &
objEvent..' /
.../ 0
Category..0 8
;..8 9

tieneValor// 
=// 
true// !
;//! "
}00 
}11 	
public22 
void22 
RegistrarEvento22 #
(22# $
Event22$ )
	_objEvent22* 3
)223 4
{33 	
EventOnEntities44 
context44 #
=44$ %
new44& )
EventOnEntities44* 9
(449 :
)44: ;
;44; <
	_objEvent55 
.55 
estado55 
=55 
$str55 "
;55" #
context66 
.66 
Events66 
.66 
Add66 
(66 
	_objEvent66 (
)66( )
;66) *
context77 
.77 
SaveChanges77 
(77  
)77  !
;77! "
}88 	
public99 
void99 
ModificarEvent99 "
(99" #
Event99# (
	_objEvent99) 2
)992 3
{:: 	
EventOnEntities;; 
context;; #
=;;$ %
new;;& )
EventOnEntities;;* 9
(;;9 :
);;: ;
;;;; <
Event<< 
objEvent<< 
=<< 
context<< $
.<<$ %
Events<<% +
.<<+ ,
FirstOrDefault<<, :
(<<: ;
x<<; <
=><<= ?
x<<@ A
.<<A B
idEvent<<B I
==<<J L
	_objEvent<<M V
.<<V W
idEvent<<W ^
)<<^ _
;<<_ `
objEvent== 
.== 
name== 
=== 
	_objEvent== %
.==% &
name==& *
;==* +
objEvent>> 
.>> 
place>> 
=>> 
	_objEvent>> &
.>>& '
place>>' ,
;>>, -
objEvent?? 
.?? 
date?? 
=?? 
	_objEvent?? %
.??% &
date??& *
;??* +
objEvent@@ 
.@@ 
Business@@ 
=@@ 
	_objEvent@@  )
.@@) *
Business@@* 2
;@@2 3
objEventAA 
.AA 
CategoryAA 
=AA 
	_objEventAA  )
.AA) *
CategoryAA* 2
;AA2 3
objEventCC 
.CC 
estadoCC 
=CC 
$strCC !
;CC! "
contextDD 
.DD 
SaveChangesDD 
(DD  
)DD  !
;DD! "
}EE 	
publicFF 
voidFF 
EliminarEventFF !
(FF! "
intFF" %
EventIdFF& -
)FF- .
{GG 	
EventOnEntitiesHH 
contextHH #
=HH$ %
newHH& )
EventOnEntitiesHH* 9
(HH9 :
)HH: ;
;HH; <
EventII 
objEventII 
=II 
contextII $
.II$ %
EventsII% +
.II+ ,
FirstOrDefaultII, :
(II: ;
xII; <
=>II= ?
xII@ A
.IIA B
idEventIIB I
==IIJ L
EventIdIIM T
)IIT U
;IIU V
objEventJJ 
.JJ 
estadoJJ 
=JJ 
$strJJ !
;JJ! "
contextKK 
.KK 
SaveChangesKK 
(KK  
)KK  !
;KK! "
}LL 	
publicMM 
boolMM 
EventExisteMM 
(MM  
stringMM  &
_nombreeventoMM' 4
)MM4 5
{NN 	
EventOnEntitiesOO 
contextOO #
=OO$ %
newOO& )
EventOnEntitiesOO* 9
(OO9 :
)OO: ;
;OO; <
EventPP 
objEventPP 
=PP 
contextPP $
.PP$ %
EventsPP% +
.PP+ ,
FirstOrDefaultPP, :
(PP: ;
xPP; <
=>PP= ?
xPP@ A
.PPA B
namePPB F
==PPG I
_nombreeventoPPJ W
)PPW X
;PPX Y
ifQQ 
(QQ 
objEventQQ 
!=QQ 
nullQQ  
)QQ  !
returnQQ" (
trueQQ) -
;QQ- .
returnRR 
falseRR 
;RR 
}SS 	
}TT 
}UU â
zC:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\EventsViewModel\ListEventsViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
SectorsViewModel ,
{ 
public		 

class		 
ListEventsViewModel		 $
{

 
public 
List 
< 
Event 
> 

ListEvents %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Filtro 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ListEventsViewModel "
(" #
)# $
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <

ListEvents 
= 
context  
.  !
Events! '
.' (
Where( -
(- .
x. /
=>0 2
x3 4
.4 5
estado5 ;
==< >
$str? B
)B C
.C D
ToListD J
(J K
)K L
;L M
} 	
public 
void 
fill 
( 
) 
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
Filtro& ,
), -
)- .

ListEvents/ 9
=: ;
context< C
.C D
EventsD J
. 
Where 
( 
x 
=> 
x  !
.! "
estado" (
==) +
$str, /
&&0 2
x3 4
.4 5
name5 9
.9 :
ToUpper: A
(A B
)B C
.C D
ContainsD L
(L M
FiltroM S
.S T
ToUpperT [
([ \
)\ ]
)] ^
)^ _
. 
ToList 
( 
) 
; 
} 	
} 
} µ.
~C:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\SectorsViewModel\AddEditSectorViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
SectorsViewModel ,
{ 
public		 

class		 "
AddEditSectorViewModel		 '
{

 
public 
int 
? 
sectorID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Sector 
objectSector "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 

tieneValor 
{  
get! $
;$ %
set& )
;) *
}+ ,
public "
AddEditSectorViewModel %
(% &
)& '
{ 	
objectSector 
= 
new 
Sector %
(% &
)& '
;' (
} 	
public 
void 
cargarDatos 
(  
int  #
?# $
sectorid% -
)- .
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <

tieneValor 
= 
false 
; 
if 
( 
sectorid 
. 
HasValue !
)! "
{ 
Sector 
	objSector  
=! "
context# *
.* +
Sectors+ 2
.2 3
FirstOrDefault3 A
(A B
xB C
=>D F
xG H
.H I
idSectorI Q
==R T
sectoridU ]
)] ^
;^ _
this 
. 
sectorID 
= 
sectorid  (
;( )
objectSector 
. 
idSector %
=& '
	objSector( 1
.1 2
idSector2 :
;: ;
objectSector 
. 

sectorName '
=( )
	objSector* 3
.3 4

sectorName4 >
;> ?

tieneValor 
= 
true !
;! "
}   
}!! 	
public"" 
void"" 
RegistrarSector"" #
(""# $
Sector""$ *

_objSector""+ 5
)""5 6
{## 	
EventOnEntities$$ 
context$$ #
=$$$ %
new$$& )
EventOnEntities$$* 9
($$9 :
)$$: ;
;$$; <

_objSector%% 
.%% 
estado%% 
=%% 
$str%%  #
;%%# $
context&& 
.&& 
Sectors&& 
.&& 
Add&& 
(&&  

_objSector&&  *
)&&* +
;&&+ ,
context'' 
.'' 
SaveChanges'' 
(''  
)''  !
;''! "
}(( 	
public)) 
void)) 
ModificarSector)) #
())# $
Sector))$ *

_objSector))+ 5
)))5 6
{** 	
EventOnEntities++ 
context++ #
=++$ %
new++& )
EventOnEntities++* 9
(++9 :
)++: ;
;++; <
Sector,, 
	objSector,, 
=,, 
context,, &
.,,& '
Sectors,,' .
.,,. /
FirstOrDefault,,/ =
(,,= >
x,,> ?
=>,,@ B
x,,C D
.,,D E
idSector,,E M
==,,N P

_objSector,,Q [
.,,[ \
idSector,,\ d
),,d e
;,,e f
	objSector-- 
.-- 

sectorName--  
=--! "

_objSector--# -
.--- .

sectorName--. 8
;--8 9
	objSector.. 
... 
estado.. 
=.. 
$str.. "
;.." #
context// 
.// 
SaveChanges// 
(//  
)//  !
;//! "
}11 	
public22 
void22 
EliminarSector22 "
(22" #
int22# &
sectorId22' /
)22/ 0
{33 	
EventOnEntities44 
context44 #
=44$ %
new44& )
EventOnEntities44* 9
(449 :
)44: ;
;44; <
Sector55 
	objSector55 
=55 
context55 &
.55& '
Sectors55' .
.55. /
FirstOrDefault55/ =
(55= >
x55> ?
=>55@ B
x55C D
.55D E
idSector55E M
==55N P
sectorId55Q Y
)55Y Z
;55Z [
	objSector66 
.66 
estado66 
=66 
$str66 "
;66" #
context77 
.77 
SaveChanges77 
(77  
)77  !
;77! "
}88 	
public99 
bool99 
SectorExiste99  
(99  !
string99! '
_nombresector99( 5
)995 6
{:: 	
EventOnEntities;; 
context;; #
=;;$ %
new;;& )
EventOnEntities;;* 9
(;;9 :
);;: ;
;;;; <
Sector<< 
	objSector<< 
=<< 
context<< &
.<<& '
Sectors<<' .
.<<. /
FirstOrDefault<</ =
(<<= >
x<<> ?
=><<@ B
x<<C D
.<<D E

sectorName<<E O
==<<P R
_nombresector<<S `
)<<` a
;<<a b
if== 
(== 
	objSector== 
!=== 
null== !
)==! "
return==# )
true==* .
;==. /
return>> 
false>> 
;>> 
}?? 	
}BB 
}CC ñ
|C:\Users\Sofia\Desktop\CICLO-2018\OTRASCOSAS\EventOnFinal\EventOn\EventOn\ViewModel\SectorsViewModel\ListSectorsViewModel.cs
	namespace 	
EventOn
 
. 
	ViewModel 
. 
SectorsViewModel ,
{ 
public		 

class		  
ListSectorsViewModel		 %
{

 
public 
List 
< 
Sector 
> 

ListSector &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Filtro 
{ 
get "
;" #
set$ '
;' (
}) *
public  
ListSectorsViewModel #
(# $
)$ %
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <

ListSector 
= 
context  
.  !
Sectors! (
.( )
Where) .
(. /
x/ 0
=>1 3
x4 5
.5 6
estado6 <
=== ?
$str@ C
)C D
.D E
ToListE K
(K L
)L M
;M N
} 	
public 
void 
fill 
( 
) 
{ 	
EventOnEntities 
context #
=$ %
new& )
EventOnEntities* 9
(9 :
): ;
;; <
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
Filtro& ,
), -
)- .

ListSector/ 9
=: ;
context< C
.C D
SectorsD K
. 
Where 
( 
x 
=> 
x  !
.! "
estado" (
==) +
$str, /
&&0 2
x3 4
.4 5

sectorName5 ?
.? @
ToUpper@ G
(G H
)H I
.I J
ContainsJ R
(R S
FiltroS Y
.Y Z
ToUpperZ a
(a b
)b c
)c d
)d e
. 
ToList 
( 
) 
; 
} 	
} 
} 