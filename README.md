# PlistData_lib

est une librairie permettant de gérer les properties d'un projet depuis un fichier plist et d'en assurer la permanence. 

<u>**INSTALATION**</u> 

1 - Faites glisser le fichier libPlistData_lib.a dans votre projet Xcode  

2 - Vérifler que Xcode à bien ajouté les liens vers la  librairie  dans les chemins de recherche ( voir https://www.accusoft.com/resources/blog/using-static-library-ios-app/)

3 - créer un fichier plist dans votre projet (CMD + N - template Property List). Nommez le comme vous voulez

4 -  ajouter (obligatoirement) 2 entrées de type dictionary **data** et **dynamicData** servant respectivement à recevoir les var (data) et les let(dynamicData)

![](plist_init.png)

Vous pouvez désormais ajouter les propretés que vous souhaites sous ces 2 clefs

Les propriété ajoutée dans data sont immutables et ne peuvent donc pas être modifiées celles créées dans dynamicData sont modifiables depuis votre aplication
Vous pouvez égalemant ajouter des paopriétés sous les deux clefs depuis le code de l'application

**Attention !**
Toute modification apportée aux propriétés contenues dans ce fichier à partir de Xcode exige la suppression de l'app sur le device ou dans la simulateur pour être prise en compte .

**<u>UTILISATION</u>**

*Vous pouvez cloner un exemple d'utilisation depuis GitHub :*
https://github.com/laurentAubourg/testLib/

Dans le **ViewController** : 

**`import plistData`**

initialisez une varieble de type **PLD_class**

var  PLD_obj : PLD_class?
PLD_obj = PLD_class(fileName:"game")

puis créer une variable  var1 du type que vous souhaitez :

`var v1:Int = 8`

et mettez a jour le fichier plist

`PLD_obj?.setValueof("var1", 123 as AnyObject)`

 La variable v1 est désormais concervée dans le fichier plist

