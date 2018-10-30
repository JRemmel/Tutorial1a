@AbapCatalog.sqlViewName: 'ZRE7_V_CITY'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View on City Table for TechEd CNA'

@Search.searchable: true 
@UI: { headerInfo: { typeName: 'City', typeNamePlural: 'Cities' } }
                     
define view ZRE7_CDS_CITY as select from ZRE4TCITY {
    @UI.hidden: true
    key city_id, 
    @Search.defaultSearchElement: true
    @UI: { lineItem: [ { position: 10 } ] , identification: [ { position: 10 } ] , selectionField: [ { position: 10 } ] } 
    name, 
    @Search.defaultSearchElement: true
    @UI: { lineItem: [ { position: 20 } ] , identification: [ { position: 30 } ] , selectionField: [ { position: 20 } ] }
    country, 
    @UI: { lineItem: [ { position: 30 } ] , identification: [ { position: 20 } ] } 
    population
    
}
