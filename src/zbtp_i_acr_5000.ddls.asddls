@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Academis result for view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define view entity zbtp_i_acr_5000
  as select from zbtp_db_acr_5000
  association to parent zbtp_i_student_5000 as _student  on $projection.Id = _student.Id
  association to zbtp_i_course_5000         as _course   on $projection.Course = _course.Value
  association to zbtp_i_sem_5000            as _semester on $projection.Semester = _semester.Value
  association to zbtp_i_semres_5000         as _semres   on $projection.Semresult = _semres.Value
{
  key id                    as Id,
  key acrid                 as AcrId,
      course                as Course,
      _course.Description   as Coursedesc,
      semester              as Semester,
      _semester.Description as Semesterdesc,
      semresult             as Semresult,
      _semres.Description   as Semresdesc,
      _student
}
