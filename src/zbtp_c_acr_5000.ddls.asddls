@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for acr 5000'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zbtp_c_acr_5000
  as projection on zbtp_i_acr_5000
{
  key Id,
  key AcrId,
      Course,
      Coursedesc,
      Semester,
      Semesterdesc,
      Semresult,
      Semresdesc,
      /* Associations */
      _student: redirected to parent zbtp_c_student_5000
}
