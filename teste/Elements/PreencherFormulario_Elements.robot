*** Variables ***
##formulário Enter Vehicle Data
&{Formulario}   select_make=id:make
...             select_model=id:model
...             input_cyli=id:cylindercapacity
...             input_engine=id:engineperformance
...             input_dateofmanu=id:dateofmanufacture
...             select_numberseats=id:numberofseats
...             click_element_next=class=ideal-radiocheck-label
...             select_numberofseats=id:numberofseatsmotorcycle
...             select_fuel=id:fuel
...             input_payload=id:payload 
...             input_totalweight=id:totalweight
...             input_listprice=id:listprice
...             input_licenseplate=id:licenseplatenumber 
...             input_annualmileage=id:annualmileage
...             click_next_enter_insurant_data=id:nextenterinsurantdata

##formulário Enter Insurant Data
...             input_firstname=id:firstname
...             input_lastname=id:lastname
...             input_birthdate=id:birthdate
...             click_gendermale=document.getElementById('gendermale').click()
...             input_streetaddress=id:streetaddress
...             select_country=id:country
...             input_zipcode=id:zipcode 
...             input_city=id:city 
...             select_occupation=id:occupation
...             click_bungeejumping=document.getElementById('bungeejumping').click()
...             input_website=id:website
...             click_nextproductdata=name=Next (Enter Product Data)

##formulário Enter Product Data
...             input_startdate=id:startdate 
...             select_insurancesum=id:insurancesum
...             select_meritrating=id:meritrating
...             select_damageinsurance=id:damageinsurance
...             click_EuroProtection=document.getElementById('EuroProtection').click()
...             select_courtesycar=id:courtesycar
...             click_PriceOption=name=Next (Select Price Option)

##formulário Select Price Option
...             click_selectgold=document.getElementById('selectgold').click()
...             click_SendQuote=name=Next (Send Quote)


##formulário Send Quote
...             input_email=id:email
...             input_phone=id:phone
...             input_username=id:username
...             input_password=id:password
...             input_confirmpassword=id:confirmpassword
...             input_Comments=id:Comments
...             input_sendemail=id:sendemail

##visualizar a mensagem Sending e-mail success! na tela
...             text_messagem=xpath=//h2[text()="Sending e-mail success!"]
