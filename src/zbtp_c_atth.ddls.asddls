@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for attachments'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zbtp_c_atth
  as projection on zbtp_i_atth
{
  key AttachId,
      Id,
      Comments,
      Attachment,
      Mimetype,
      Filename,
      /* Associations */
      _Student: redirected to parent zbtp_c_student_5000
}
