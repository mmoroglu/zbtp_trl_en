@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Entity view for student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity zbtp_i_student_5000
  as select from zbtp_db_student
  association to zbtp_i_gender_5000     as _gender on $projection.Gender = _gender.Value
  composition [0..*] of zbtp_i_acr_5000 as _academicres
  composition [1..*] of zbtp_i_atth     as _atth
  //composition of target_data_source_name as _association_name
{
      @EndUserText.label: 'Student ID'
  key id                   as Id,
      @EndUserText.label: 'First Name'
      firstname            as Firstname,
      @EndUserText.label: 'Last Name'
      lastname             as Lastname,
      @EndUserText.label: 'Age'
      age                  as Age,
      @EndUserText.label: 'Course'
      course               as Course,
      @EndUserText.label: 'Course Duration'
      courseduration       as Courseduration,
      @EndUserText.label: 'Status'
      status               as Status,
      @EndUserText.label: 'Gender'
      gender               as Gender,
      _gender.Description  as Genderdesc,
      @EndUserText.label: 'Dob'
      dob                  as Dob,
      @Semantics.user.createdBy: true
      created_by           as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at           as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by      as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at      as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locl_last_changed_at as LoclLastChangedAt,
      _academicres,
      _atth
      //    _association_name // Make association public
}
