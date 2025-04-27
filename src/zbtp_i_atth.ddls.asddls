@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for attachment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity zbtp_i_atth
  as select from zbtp_db_atth
  association to parent zbtp_i_student_5000 as _Student on $projection.Id = _Student.Id
{
  key attach_id            as AttachId,
      id                   as Id,
      @EndUserText.label: 'Comments'
      comments             as Comments,
      @EndUserText.label: 'Attachment'
      @Semantics.largeObject: {
      mimeType: 'Mimetype',
      fileName: 'Filename',
      contentDispositionPreference: #INLINE
      }
      attachment           as Attachment,
      @EndUserText.label: 'File Type'
      mimetype             as Mimetype,
      @EndUserText.label: 'File Name'
      filename             as Filename,
      _Student

}
