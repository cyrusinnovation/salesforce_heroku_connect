README
==================
This is the very bare bones beginnings of a Saleforce Heroku Connect app.
The things that you will need to remember for this work.

* In order to test and develop locally, you will need to create migrations that mimic the tables generated by Heroku 
Connect. Remember to test if they exist before creating them in your migrations.

    ```
    t.datetime :systemmodstamp
    t.datetime :createddate
    t.string :active__c
    t.string :sfid
    t.string :_hc_err
    t.string :_hc_lastop
    ```

* Model table names need to be overwritten to be singular as that is what Heroku Connect needs from it's tables

* Any salesforce models need to include sales_force_model concern
 
* Any foreign key relationships need to be done against :sfid instead of default :id column

    
    > Contact
    >  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
    > Account
    >  has_many :contacts, :primary_key => "sfid", :foreign_key => "accountid"
    
    