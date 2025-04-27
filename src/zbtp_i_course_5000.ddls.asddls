@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Domain read course'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity zbtp_i_course_5000
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZBTP_DO_COURSE_5000' )
{
  key domain_name,
  key value_position,
      @Semantics.language: true
  key language,
      @ObjectModel.text.element: [ 'Description' ]
      value_low as Value,
      @Semantics.text: true
      text      as Description
}
