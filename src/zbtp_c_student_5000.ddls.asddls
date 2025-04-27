@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for student 5000'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zbtp_c_student_5000
  provider contract transactional_query
  as projection on zbtp_i_student_5000
{
  key Id,
      Firstname,
      Lastname,
      Age,
      Course,
      Courseduration,
      Status,
      Gender,
      Genderdesc,
      Dob,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LoclLastChangedAt,//Etag changes
      /* Associations */
      _academicres : redirected to composition child zbtp_c_acr_5000,
      _atth        : redirected to composition child zbtp_c_atth
}
