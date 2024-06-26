# Opencart [QWQER](QwQer.lv) Shipping service

[![img](https://res.cloudinary.com/qwqer-app/image/upload/v1652954787/logos/logo-dark_re5qle.svg)](https://qwqer.lv/lv)

```The manual is presented for version 3.x, for other versions the description is very similar```

```Important note: for the module to work, you must provide your full mobile phone number and store address, otherwise couriers will not be able to pick up parcels```

[russian manual](/readme_ru.md)

***Opencart shipping service module for Qwqer Delivery service in Riga, Latvia***

   -*Compatible with Simplecheckout*

   -*Language support:* ***Russian, English, Latvian***

   -*Version Support:* ***1.5 - 3.x***


## Installation

   ***This module requires EUR currency or your store ***

   1.**Download** realease using [Opencart marketplace](https://www.opencart.com/index.php?route=marketplace/extension/info&member_token=c49bd63f358f8de3e70897b531b7c108&extension_id=45603) or  [Release section](https://github.com/klim2020/qwqer_shipment/releases)

   2.**Install** module using simple Installation process, navigate to your admin panel *Extension-> Installer* then click on ***install*** button and install  extension

![img2](https://i.imgur.com/T4cCpHU.png)

   3.**Reload modifications** 
   Reload your modification cache by clicking *Extension-> modifications* in your admin panel and after that click reload and refresh buttons using right sequence.

![img3](https://i.imgur.com/tdcYfiK.png)

   4.***Module Activation**
   To Activate Module please go to *admin dashboard* and after that navigate to *Extensions -> Extensions*  then click on the drop-down menu at the top of the screen, than choose *Shipment* option and then navigate to Qwqer shipment module and press *Install(Plus)* button.

   ![img4](https://i.imgur.com/wQzuRg9.png)

   5. **Enable and tune up module**
   To make module work properly you have to set up additional fields provided by Qwqer company manager, also you need to provide an addres where company couriers will pick up your products. So things you need to setup are:

      -*Api token(Ask Qwqer manager)*

      -*Trading point ID(Ask Qwqer manager)*

      -*Shipping Category(Choose yourself)*
      
      -*Set Status - Enable*

      -*Pick up address(needs to  be properly validated, read instructions below)*

      -*Company Phone Number* - Needs to be mobile, the phone number of your store, by this number couriers can connect with you in case something went wrong

      -*Set type of checkout module* - You need to set checkout module, this is required if you are using modules like SimpleCheckout.

   

   After succesful instalation, plus icon will change to pensil button, that means now you can edit module settings, So press "edit(pensil)" button:

   ![img5](https://i.imgur.com/cEcIkx0.png) 

   After entering settings panel you can edit module setting, I higlighted necessary fields for you. Dont forget to set Status - "Enable" at the bottom of settings panel

   ![img6](https://i.imgur.com/fpAKTcy.png)

   Fill necessary field(marked with red)  and after that press save button(marked with green on a picture)   

   6.***Adress Validation*** 
   Dont forget to enter and  validate your pick up Address, otherwise the **module will not work**.
   To do that enter again into Module settings again, amd fill *"Full Adress"* field. Start entering address in the *Full Adress* field, after entering few letters, a popup window will show up, there you can choose apropriate address in Riga, Latvia.

   ![img5](https://i.imgur.com/DKORB3d.png)

   Choose necessary adress and then press Validate button near to the input field, After that the "address validated" message will show up.
  
  ![img6](https://i.imgur.com/63le9lE.png)


    ```If you see green message near to validate button than address validation process have been completed succesfully```

  After succesfull address validation please press *Save* button again.

  ![img7](https://i.imgur.com/vowOtye.png) 


And Admin setup is finished 😊


## How module works

Navigate to your web store and buy some products. After products have been added to your cart, press checkout button and start a checkout process.

![img7](https://i.imgur.com/GIlxHl2.png)

!!!The shipping service wont show up unless you enter correct  addres  in Riga, Latvia.

Depending on the payment method, the order receives its status. If the order was immediately paid through the payment gateway, it receives the ***Completed*** status and is automatically created with the qwqer system, the courier immediately receives information about it. If the order has not been paid, then the store managers will set it's status after sucessfull payment.

You can see how to work with statuses through this [manual](https://www.opencart.com/blog?page=3&blog_id=229).

To see what statuses, are treated as *"completed"* you need to go to webstore settings:

![img11](https://i.imgur.com/OyqQ2PY.png)

Navigate ***Option*** tab and set ***Complete order statuses***

![img12](https://i.imgur.com/2yX6Eer.png)

Please feel free to ask questions at [github issues](https://github.com/klim2020/qwqer_shipment/issues) sections or at [marketplace](https://www.opencart.com/index.php?route=marketplace/extension/info&member_token=c49bd63f358f8de3e70897b531b7c108&extension_id=45603) in comment sections.


   




