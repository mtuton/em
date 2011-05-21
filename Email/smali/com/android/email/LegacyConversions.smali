.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTACHMENT_META_COLUMNS_SIZE:I = 0x1

.field static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"

.field private static final DEBUG_ATTACHMENTS:Z

.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/LegacyConversions;->ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Part;Z)V
    .locals 13
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .parameter "upgrading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v8, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v8}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 331
    .local v8, localAttachment:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, contentType:Ljava/lang/String;
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 334
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, contentDisposition:Ljava/lang/String;
    const-string v1, "filename"

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    move-object v7, v0

    .line 346
    .end local v0           #name:Ljava/lang/String;
    .local v7, name:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 347
    .local v1, contentUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 348
    .local v2, contentUriString:Ljava/lang/String;
    if-eqz p3, :cond_f

    .line 349
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v0

    .line 350
    .local v0, body:Lcom/android/email/mail/Body;
    instance-of v3, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    if-eqz v3, :cond_f

    .line 351
    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    .line 352
    .local v0, localBody:Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;
    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_f

    .line 354
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2           #contentUriString:Ljava/lang/String;
    .local v0, contentUriString:Ljava/lang/String;
    move-object v6, v0

    .line 360
    .end local v0           #contentUriString:Ljava/lang/String;
    .local v6, contentUriString:Ljava/lang/String;
    :goto_1
    const-wide/16 v9, 0x0

    .line 361
    .local v9, size:J
    if-eqz p3, :cond_8

    .line 363
    if-eqz v1, :cond_e

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/LegacyConversions;->ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 366
    .local v0, metadataCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_d

    .line 368
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .end local v1           #contentUri:Landroid/net/Uri;
    if-eqz v1, :cond_c

    .line 369
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v1, v1

    .line 372
    .end local v9           #size:J
    .local v1, size:J
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .end local v1           #size:J
    .local v0, size:J
    :goto_3
    move-wide v2, v0

    .end local v0           #size:J
    .local v2, size:J
    move-object v0, v7

    .line 393
    .end local v7           #name:Ljava/lang/String;
    .local v0, name:Ljava/lang/String;
    :goto_4
    const-string v1, "X-Android-Attachment-StoreData"

    invoke-interface {p2, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, partIds:[Ljava/lang/String;
    if-eqz v1, :cond_9

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 396
    .local v1, partId:Ljava/lang/String;
    :goto_5
    iput-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 397
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    iput-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 398
    iput-wide v2, v8, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 399
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 400
    iput-object v6, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 401
    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .end local v2           #size:J
    iput-wide v2, v8, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    .line 402
    iput-object v1, v8, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 403
    const-string v0, "B"

    iput-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 405
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v1, "message/rfc822"

    .end local v1           #partId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 409
    const-string v0, "Noname.eml"

    iput-object v0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 422
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 423
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6           #contentUriString:Ljava/lang/String;
    move-result-object v1

    .line 426
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 428
    .end local v3           #uri:Landroid/net/Uri;
    .local v0, attachmentFoundInDb:Z
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    new-instance v2, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/email/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 434
    .local v2, dbAttachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 435
    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    const/4 v0, 0x1

    .line 440
    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .end local v2           #dbAttachment:Lcom/android/email/provider/EmailContent$Attachment;
    iput-wide v2, v8, Lcom/android/email/provider/EmailContent$Attachment;->mId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 453
    if-nez v0, :cond_3

    .line 454
    invoke-virtual {v8, p0}, Lcom/android/email/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 458
    :cond_3
    if-nez p3, :cond_4

    .line 459
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .end local v0           #attachmentFoundInDb:Z
    invoke-static {p0, p2, v8, v0, v1}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/email/mail/Part;Lcom/android/email/provider/EmailContent$Attachment;J)V

    .line 462
    :cond_4
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .end local p0
    if-nez p0, :cond_5

    .line 463
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 466
    :cond_5
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object p0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz p0, :cond_6

    iget-object p0, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string p2, "@namo.co.kr"

    .end local p2
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 469
    :cond_6
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 470
    :cond_7
    return-void

    .line 372
    .end local v1           #cursor:Landroid/database/Cursor;
    .local v0, metadataCursor:Landroid/database/Cursor;
    .restart local v6       #contentUriString:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #size:J
    .restart local p0
    .restart local p2
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .line 379
    .end local v0           #metadataCursor:Landroid/database/Cursor;
    .local v1, contentUri:Landroid/net/Uri;
    .restart local p0
    :cond_8
    invoke-interface {p2}, Lcom/android/email/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, disposition:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 381
    const-string v1, "size"

    .end local v1           #contentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 383
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 386
    .end local v9           #size:J
    .local v1, size:J
    :goto_6
    if-nez v7, :cond_a

    .line 387
    const-string v3, "filename"

    invoke-static {v0, v3}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v7           #name:Ljava/lang/String;
    .local v0, name:Ljava/lang/String;
    move-wide v2, v1

    .end local v1           #size:J
    .local v2, size:J
    goto/16 :goto_4

    .line 394
    .local v1, partIds:[Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 449
    .end local v2           #size:J
    .end local v6           #contentUriString:Ljava/lang/String;
    .local v0, attachmentFoundInDb:Z
    .local v1, cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move p0, v0

    .end local v0           #attachmentFoundInDb:Z
    .end local p1
    .local p0, attachmentFoundInDb:Z
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    .local v0, disposition:Ljava/lang/String;
    .local v1, size:J
    .restart local v6       #contentUriString:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_a
    move-object v0, v7

    .end local v7           #name:Ljava/lang/String;
    .local v0, name:Ljava/lang/String;
    move-wide v11, v1

    .end local v1           #size:J
    .local v11, size:J
    move-wide v2, v11

    .end local v11           #size:J
    .restart local v2       #size:J
    goto/16 :goto_4

    .end local v2           #size:J
    .local v0, disposition:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #size:J
    :cond_b
    move-wide v1, v9

    .end local v9           #size:J
    .restart local v1       #size:J
    goto :goto_6

    .end local v1           #size:J
    .local v0, metadataCursor:Landroid/database/Cursor;
    .restart local v9       #size:J
    :cond_c
    move-wide v1, v9

    .end local v9           #size:J
    .restart local v1       #size:J
    goto/16 :goto_2

    .local v1, contentUri:Landroid/net/Uri;
    .restart local v9       #size:J
    :cond_d
    move-wide v0, v9

    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v9           #size:J
    .local v0, size:J
    goto/16 :goto_3

    .end local v0           #size:J
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v9       #size:J
    :cond_e
    move-wide v2, v9

    .end local v9           #size:J
    .restart local v2       #size:J
    move-object v0, v7

    .end local v7           #name:Ljava/lang/String;
    .local v0, name:Ljava/lang/String;
    goto/16 :goto_4

    .end local v0           #name:Ljava/lang/String;
    .end local v6           #contentUriString:Ljava/lang/String;
    .local v2, contentUriString:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    :cond_f
    move-object v6, v2

    .end local v2           #contentUriString:Ljava/lang/String;
    .restart local v6       #contentUriString:Ljava/lang/String;
    goto/16 :goto_1

    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v6           #contentUriString:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .restart local v0       #name:Ljava/lang/String;
    :cond_10
    move-object v7, v0

    .end local v0           #name:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mp"
    .parameter "contentType"
    .parameter "quotedPartTag"
    .parameter "partText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 624
    if-nez p3, :cond_0

    .line 633
    :goto_0
    return-void

    .line 627
    :cond_0
    new-instance v0, Lcom/android/email/mail/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/email/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, body:Lcom/android/email/mail/internet/TextBody;
    new-instance v1, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 629
    .local v1, bp:Lcom/android/email/mail/internet/MimeBodyPart;
    if-eqz p2, :cond_1

    .line 630
    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/email/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    goto :goto_0
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-object p0

    .line 278
    :cond_0
    if-nez p0, :cond_1

    .line 279
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 282
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "mailboxName"

    .prologue
    const/4 v6, 0x1

    .line 766
    const-class v2, Lcom/android/email/LegacyConversions;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 768
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f080038

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f080039

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08003a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08003b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v6

    .line 795
    :goto_0
    monitor-exit v2

    return v3

    .line 790
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, lowerCaseName:Ljava/lang/String;
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 792
    .local v1, type:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 793
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v6

    .line 795
    goto :goto_0

    .line 766
    .end local v0           #lowerCaseName:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/email/provider/EmailContent$Account;
    .locals 4
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v3, 0x0

    .line 697
    new-instance v1, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    .line 699
    .local v1, result:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 701
    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 702
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 703
    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, flags:I
    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 708
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 709
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    or-int/lit8 v0, v0, 0x40

    .line 711
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/email/provider/EmailContent$Account;->setFlags(I)V

    .line 712
    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 714
    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 715
    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Lcom/android/email/Account;->getRingtone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 717
    iget-object v2, p1, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 718
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    .line 719
    iget v2, p1, Lcom/android/email/Account;->mSecurityFlags:I

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    .line 720
    iput-object v3, v1, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 721
    iget-object v2, p1, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 723
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 726
    return-object v1
.end method

.method static makeLegacyAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/Account;
    .locals 4
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    new-instance v0, Lcom/android/email/Account;

    invoke-direct {v0, p0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 648
    .local v0, result:Lcom/android/email/Account;
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncWindow(I)V

    .line 652
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 663
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 665
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 667
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 669
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDeletePolicy(I)V

    .line 671
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/Account;->mUuid:Ljava/lang/String;

    .line 672
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 673
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setRingtone(Ljava/lang/String;)V

    .line 674
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    .line 676
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    iput v1, v0, Lcom/android/email/Account;->mSecurityFlags:I

    .line 677
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    .line 680
    invoke-virtual {p1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 683
    return-object v0

    :cond_0
    move v1, v2

    .line 663
    goto :goto_0

    :cond_1
    move v1, v2

    .line 665
    goto :goto_1

    :cond_2
    move v1, v2

    .line 667
    goto :goto_2
.end method

.method public static makeMailbox(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/mail/Folder;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 3
    .parameter "context"
    .parameter "toAccount"
    .parameter "fromFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 742
    .local v0, result:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-virtual {p2}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 745
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 746
    invoke-virtual {p2}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 751
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncTime:J

    .line 752
    invoke-virtual {p2}, Lcom/android/email/mail/Folder;->getUnreadMessageCount()I

    move-result v1

    iput v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mUnreadCount:I

    .line 753
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 754
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlags:I

    .line 755
    const/16 v1, 0x19

    iput v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 758
    return-object v0
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;
    .locals 14
    .parameter "context"
    .parameter "localMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v7, "text/plain"

    const-string v11, "Email"

    .line 527
    new-instance v3, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 530
    .local v3, message:Lcom/android/email/mail/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 531
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 532
    .local v0, from:[Lcom/android/email/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 533
    aget-object v7, v0, v12

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setFrom(Lcom/android/email/mail/Address;)V

    .line 535
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 536
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 537
    sget-object v7, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    iget v8, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v8, v13

    :goto_1
    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 539
    sget-object v7, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    iget-boolean v8, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 540
    sget-object v7, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    iget-boolean v8, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 542
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 543
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 544
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    iget-object v8, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 545
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setReplyTo([Lcom/android/email/mail/Address;)V

    .line 546
    new-instance v7, Ljava/util/Date;

    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 547
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/email/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 548
    iget-wide v7, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setMessageId_original(J)V

    .line 551
    const-string v7, "Content-Type"

    const-string v8, "multipart/mixed"

    invoke-virtual {v3, v7, v8}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v4, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 553
    .local v4, mp:Lcom/android/email/mail/internet/MimeMultipart;
    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v3, v4}, Lcom/android/email/mail/internet/MimeMessage;->setBody(Lcom/android/email/mail/Body;)V

    .line 557
    :try_start_0
    const-string v7, "text/html"

    const/4 v8, 0x0

    iget-wide v9, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_2
    :try_start_1
    const-string v7, "text/plain"

    const/4 v8, 0x0

    iget-wide v9, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    :goto_3
    iget v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v13

    .line 571
    .local v2, isReply:Z
    :goto_4
    iget v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v13

    .line 576
    .local v1, isForward:Z
    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 578
    :cond_1
    :try_start_2
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 584
    :goto_6
    if-eqz v2, :cond_7

    const-string v7, "quoted-reply"

    move-object v5, v7

    .line 586
    .local v5, replyTag:Ljava/lang/String;
    :goto_7
    :try_start_3
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    :goto_8
    :try_start_4
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/email/mail/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 611
    .end local v5           #replyTag:Ljava/lang/String;
    :cond_2
    :goto_9
    return-object v3

    .line 530
    .end local v0           #from:[Lcom/android/email/mail/Address;
    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    .end local v4           #mp:Lcom/android/email/mail/internet/MimeMultipart;
    :cond_3
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0       #from:[Lcom/android/email/mail/Address;
    :cond_4
    move v8, v12

    .line 537
    goto/16 :goto_1

    .line 559
    .restart local v4       #mp:Lcom/android/email/mail/internet/MimeMultipart;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 560
    .local v6, rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while reading html body "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 566
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 567
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while reading text body "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_5
    move v2, v12

    .line 570
    goto :goto_4

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v12

    .line 571
    goto :goto_5

    .line 580
    .restart local v1       #isForward:Z
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 581
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while reading text reply "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 584
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_7
    const-string v7, "quoted-forward"

    move-object v5, v7

    goto/16 :goto_7

    .line 588
    .restart local v5       #replyTag:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 589
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while reading html reply "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 595
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    move-object v6, v7

    .line 596
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while reading text reply "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/email/mail/Part;Lcom/android/email/provider/EmailContent$Attachment;J)V
    .locals 5
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-interface {p1}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 491
    .local v0, attachmentId:J
    invoke-interface {p1}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object p1

    .end local p1
    invoke-interface {p1}, Lcom/android/email/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 493
    .local p1, in:Ljava/io/InputStream;
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v2

    .line 494
    .local v2, saveIn:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 497
    :cond_0
    invoke-static {p0, p3, p4, v0, v1}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v2

    .line 499
    .local v2, saveAs:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 500
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 501
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-static {p1, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    .end local v2           #saveAs:Ljava/io/File;
    int-to-long v2, v2

    .line 502
    .local v2, copySize:J
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 503
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 506
    invoke-static {p3, p4, v0, v1}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object p1

    .end local p1           #in:Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 509
    .local p1, contentUriString:Ljava/lang/String;
    iput-wide v2, p2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 510
    iput-object p1, p2, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 513
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local p2, cv:Landroid/content/ContentValues;
    const-string p3, "size"

    .end local p3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 515
    const-string p3, "contentUri"

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object p1, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .end local p1           #contentUriString:Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 517
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    .end local v0           #attachmentId:J
    .end local v2           #copySize:J
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local p1           #uri:Landroid/net/Uri;
    .end local p2           #cv:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 477
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v0, v1

    .line 480
    :goto_0
    return v0

    .line 478
    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    .line 479
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 480
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .parameter "upgrading"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/email/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Part;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Part;

    .line 302
    .local v0, attachmentPart:Lcom/android/email/mail/Part;
    invoke-static {p0, p1, v0, p3}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Part;Z)V

    goto :goto_0

    .line 304
    .end local v0           #attachmentPart:Lcom/android/email/mail/Part;
    :cond_0
    return-void
.end method

.method public static updateBodyFields(Lcom/android/email/provider/EmailContent$Body;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/provider/EmailContent$Body;",
            "Lcom/android/email/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 200
    .local p2, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Body;->mMessageKey:J

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 204
    .local v3, sbText:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 205
    .local v1, sbHtmlReply:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 206
    .local v4, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 208
    .local v2, sbIntroText:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .local p2, i$:Ljava/util/Iterator;
    move-object v6, v2

    .end local v2           #sbIntroText:Ljava/lang/StringBuffer;
    .local v6, sbIntroText:Ljava/lang/StringBuffer;
    move-object v8, v4

    .end local v4           #sbTextReply:Ljava/lang/StringBuffer;
    .local v8, sbTextReply:Ljava/lang/StringBuffer;
    move-object v5, v1

    .end local v1           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v5, sbHtmlReply:Ljava/lang/StringBuffer;
    move-object v7, v3

    .end local v3           #sbText:Ljava/lang/StringBuffer;
    .local v7, sbText:Ljava/lang/StringBuffer;
    move-object v4, v0

    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .local v4, sbHtml:Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/Part;

    .line 209
    .local v3, viewable:Lcom/android/email/mail/Part;
    invoke-static {v3}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, text:Ljava/lang/String;
    const-string v0, "X-Android-Body-Quoted-Part"

    invoke-interface {v3, v0}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, replyTags:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 212
    .local v0, replyTag:Ljava/lang/String;
    if-eqz v1, :cond_c

    array-length v2, v1

    if-lez v2, :cond_c

    .line 213
    const/4 v0, 0x0

    aget-object v0, v1, v0

    move-object v2, v0

    .line 216
    .end local v0           #replyTag:Ljava/lang/String;
    .local v2, replyTag:Ljava/lang/String;
    :goto_1
    const-string v0, "text/html"

    invoke-interface {v3}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .end local v1           #replyTags:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 218
    .local v0, isHtml:Z
    if-eqz v2, :cond_4

    .line 219
    const-string v1, "quoted-reply"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 220
    .local v3, isQuotedReply:Z
    const-string v1, "quoted-forward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 221
    .local v1, isQuotedForward:Z
    const-string v10, "quoted-intro"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 223
    .local v2, isQuotedIntro:Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    .line 225
    invoke-static {v5, v9}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v5           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v0, sbHtmlReply:Ljava/lang/StringBuffer;
    move-object v1, v8

    .line 230
    .end local v8           #sbTextReply:Ljava/lang/StringBuffer;
    .local v1, sbTextReply:Ljava/lang/StringBuffer;
    :goto_2
    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .end local v2           #isQuotedIntro:Z
    and-int/lit8 v2, v2, -0x4

    iput v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 231
    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .end local v3           #isQuotedReply:Z
    :goto_3
    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    move-object v8, v1

    .end local v1           #sbTextReply:Ljava/lang/StringBuffer;
    .restart local v8       #sbTextReply:Ljava/lang/StringBuffer;
    move-object v5, v0

    .line 234
    .end local v0           #sbHtmlReply:Ljava/lang/StringBuffer;
    .restart local v5       #sbHtmlReply:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 227
    .local v0, isHtml:Z
    .local v1, isQuotedForward:Z
    .restart local v2       #isQuotedIntro:Z
    .restart local v3       #isQuotedReply:Z
    :cond_1
    invoke-static {v8, v9}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v8           #sbTextReply:Ljava/lang/StringBuffer;
    .local v0, sbTextReply:Ljava/lang/StringBuffer;
    move-object v1, v0

    .end local v0           #sbTextReply:Ljava/lang/StringBuffer;
    .local v1, sbTextReply:Ljava/lang/StringBuffer;
    move-object v0, v5

    .end local v5           #sbHtmlReply:Ljava/lang/StringBuffer;
    .local v0, sbHtmlReply:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 231
    .end local v2           #isQuotedIntro:Z
    :cond_2
    const/4 v3, 0x2

    goto :goto_3

    .line 236
    .local v0, isHtml:Z
    .local v1, isQuotedForward:Z
    .restart local v2       #isQuotedIntro:Z
    .restart local v5       #sbHtmlReply:Ljava/lang/StringBuffer;
    .restart local v8       #sbTextReply:Ljava/lang/StringBuffer;
    :cond_3
    if-eqz v2, :cond_4

    .line 237
    invoke-static {v6, v9}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v6           #sbIntroText:Ljava/lang/StringBuffer;
    .local v0, sbIntroText:Ljava/lang/StringBuffer;
    move-object v6, v0

    .line 238
    .end local v0           #sbIntroText:Ljava/lang/StringBuffer;
    .restart local v6       #sbIntroText:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 243
    .end local v1           #isQuotedForward:Z
    .end local v2           #isQuotedIntro:Z
    .end local v3           #isQuotedReply:Z
    .local v0, isHtml:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 244
    invoke-static {v4, v9}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v4           #sbHtml:Ljava/lang/StringBuffer;
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    move-object v1, v7

    .end local v7           #sbText:Ljava/lang/StringBuffer;
    .local v1, sbText:Ljava/lang/StringBuffer;
    :goto_4
    move-object v7, v1

    .end local v1           #sbText:Ljava/lang/StringBuffer;
    .restart local v7       #sbText:Ljava/lang/StringBuffer;
    move-object v4, v0

    .line 248
    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .restart local v4       #sbHtml:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 246
    .local v0, isHtml:Z
    :cond_5
    invoke-static {v7, v9}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v7           #sbText:Ljava/lang/StringBuffer;
    .local v0, sbText:Ljava/lang/StringBuffer;
    move-object v1, v0

    .end local v0           #sbText:Ljava/lang/StringBuffer;
    .restart local v1       #sbText:Ljava/lang/StringBuffer;
    move-object v0, v4

    .end local v4           #sbHtml:Ljava/lang/StringBuffer;
    .local v0, sbHtml:Ljava/lang/StringBuffer;
    goto :goto_4

    .line 251
    .end local v0           #sbHtml:Ljava/lang/StringBuffer;
    .end local v1           #sbText:Ljava/lang/StringBuffer;
    .end local v9           #text:Ljava/lang/String;
    .restart local v4       #sbHtml:Ljava/lang/StringBuffer;
    .restart local v7       #sbText:Ljava/lang/StringBuffer;
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .end local p1
    if-eqz p1, :cond_7

    .line 252
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 254
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_8

    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 257
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 260
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_a

    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 263
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_b

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 266
    :cond_b
    const/4 p0, 0x1

    .end local p0
    return p0

    .local v0, replyTag:Ljava/lang/String;
    .local v1, replyTags:[Ljava/lang/String;
    .local v3, viewable:Lcom/android/email/mail/Part;
    .restart local v9       #text:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_c
    move-object v2, v0

    .end local v0           #replyTag:Ljava/lang/String;
    .local v2, replyTag:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static updateMessageFields(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Message;JJ)Z
    .locals 10
    .parameter "localMessage"
    .parameter "message"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v2

    .line 94
    .local v2, from:[Lcom/android/email/mail/Address;
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v7

    .line 95
    .local v7, to:[Lcom/android/email/mail/Address;
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v1

    .line 96
    .local v1, cc:[Lcom/android/email/mail/Address;
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 97
    .local v0, bcc:[Lcom/android/email/mail/Address;
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getReplyTo()[Lcom/android/email/mail/Address;

    move-result-object v4

    .line 98
    .local v4, replyTo:[Lcom/android/email/mail/Address;
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, subject:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v5

    .line 100
    .local v5, sentDate:Ljava/util/Date;
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    .line 102
    .local v3, internalDate:Ljava/util/Date;
    if-eqz v2, :cond_0

    array-length v8, v2

    if-lez v8, :cond_0

    .line 103
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v8}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 105
    :cond_0
    if-eqz v5, :cond_1

    .line 106
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 108
    :cond_1
    if-eqz v6, :cond_2

    .line 109
    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 111
    :cond_2
    sget-object v5, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    .end local v5           #sentDate:Ljava/util/Date;
    invoke-virtual {p1, v5}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 116
    iget v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 118
    .end local v6           #subject:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 119
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 124
    :cond_4
    :goto_0
    sget-object v5, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 128
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 129
    if-eqz v3, :cond_5

    .line 130
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 136
    :cond_5
    check-cast p1, Lcom/android/email/mail/internet/MimeMessage;

    .end local p1
    invoke-virtual {p1}, Lcom/android/email/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    .line 137
    .local p1, messageId:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 138
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 142
    :cond_6
    iput-wide p4, p0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 143
    iput-wide p2, p0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 145
    if-eqz v2, :cond_7

    array-length p1, v2

    .end local p1           #messageId:Ljava/lang/String;
    if-lez p1, :cond_7

    .line 146
    invoke-static {v2}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 149
    :cond_7
    invoke-static {v7}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 150
    invoke-static {v1}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 152
    invoke-static {v4}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 161
    iget-object p2, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 162
    .local p2, subjectStr:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 163
    const-string p1, ""

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 190
    :goto_1
    const/4 p0, 0x1

    .end local p0
    return p0

    .line 121
    .restart local p0
    .local p1, message:Lcom/android/email/mail/Message;
    .local p2, accountId:J
    :cond_8
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    goto :goto_0

    .line 166
    .end local p1           #message:Lcom/android/email/mail/Message;
    .local p2, subjectStr:Ljava/lang/String;
    :cond_9
    const/16 p1, 0x3a

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 167
    .local p1, iStartStr:I
    if-gez p1, :cond_a

    .line 169
    iput-object p2, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    .end local p1           #iStartStr:I
    :catch_0
    move-exception p1

    .line 176
    .local p1, e:Ljava/lang/Exception;
    const-string p1, ""

    .end local p1           #e:Ljava/lang/Exception;
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    goto :goto_1

    .line 173
    .local p1, iStartStr:I
    :cond_a
    add-int/lit8 p1, p1, 0x1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .end local p1           #iStartStr:I
    move-result p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
