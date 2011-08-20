.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ItemOperationsParser.java"


# instance fields
.field private isSigned:Z

.field private mBindArguments:[Ljava/lang/String;

.field private mMailboxIdAsString:Ljava/lang/String;

.field private mObserver:Ljava/util/Observer;

.field private mOs:Ljava/io/OutputStream;

.field private mResult:Z

.field mServerId:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 3
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 56
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    .line 62
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    .line 63
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    .line 65
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 25
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/16 v16, 0x0

    .line 294
    .local v16, msgData:Ljava/lang/String;
    const/16 v17, -0x1

    .line 295
    .local v17, msgType:I
    :cond_0
    :goto_0
    const/16 v22, 0x44a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 298
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v17

    .line 299
    goto :goto_0

    .line 301
    :sswitch_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    move-object v4, v0

    check-cast v4, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object v0, v4

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 309
    :cond_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 310
    const-string v22, "EmailSyncAdapter2"

    const-string v23, "EasEmailSyncParser result  "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v8, "tempFile"

    .line 312
    .local v8, file:Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    .line 314
    .local v13, mimeDataOs:Z
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/tempFile"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 317
    .local v10, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 319
    .local v14, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :try_start_0
    new-instance v15, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v15, v10}, Lcom/android/email/mail/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v14           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .local v15, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    move-object v14, v15

    .line 326
    .end local v15           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .restart local v14       #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getBody()Lcom/android/email/mail/Body;

    move-result-object v19

    .line 327
    .local v19, tempBody2:Lcom/android/email/mail/Body;
    new-instance v12, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 329
    .local v12, mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    const/4 v11, 0x0

    .line 330
    .local v11, mimBodyStringTest:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/html"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 331
    const-string v22, "EmailSyncAdapter.....2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "1. mimeMsg.getContentType() "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v21, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v5, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 335
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/mail/Part;

    .line 336
    .local v20, viewable:Lcom/android/email/mail/Part;
    const-string v22, "EMAILSYNCADAPTER"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "text/html: VIEWABLE = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 338
    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/html"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 339
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 341
    :cond_3
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 460
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #mimBodyStringTest:Ljava/lang/String;
    .end local v12           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v19           #tempBody2:Lcom/android/email/mail/Body;
    .end local v20           #viewable:Lcom/android/email/mail/Part;
    .end local v21           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_0
    move-exception v22

    move-object/from16 v18, v22

    .line 461
    .local v18, npe:Ljava/lang/NullPointerException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 320
    .end local v18           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v22

    move-object/from16 v7, v22

    .line 322
    .local v7, e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v7}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_1

    .line 344
    .end local v7           #e:Lcom/android/email/mail/MessagingException;
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #mimBodyStringTest:Ljava/lang/String;
    .restart local v12       #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .restart local v19       #tempBody2:Lcom/android/email/mail/Body;
    .restart local v20       #viewable:Lcom/android/email/mail/Part;
    .restart local v21       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 346
    :cond_5
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 462
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #mimBodyStringTest:Ljava/lang/String;
    .end local v12           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v19           #tempBody2:Lcom/android/email/mail/Body;
    .end local v20           #viewable:Lcom/android/email/mail/Part;
    .end local v21           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_2
    move-exception v22

    move-object/from16 v7, v22

    .line 464
    .restart local v7       #e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v7}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_0

    .line 352
    .end local v7           #e:Lcom/android/email/mail/MessagingException;
    .restart local v11       #mimBodyStringTest:Ljava/lang/String;
    .restart local v12       #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .restart local v19       #tempBody2:Lcom/android/email/mail/Body;
    :cond_6
    :try_start_3
    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/alternative"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/mixed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/report"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 353
    :cond_7
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .restart local v21       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 357
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/mail/Part;

    .line 360
    .restart local v20       #viewable:Lcom/android/email/mail/Part;
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/html"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 362
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 364
    :cond_9
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_3

    .line 365
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 367
    :cond_b
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_3

    .line 371
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v20           #viewable:Lcom/android/email/mail/Part;
    .end local v21           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_c
    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/related"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 373
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .restart local v21       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 376
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/mail/Part;

    .line 377
    .restart local v20       #viewable:Lcom/android/email/mail/Part;
    const-string v22, "EMAILSYNCADAPTER2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multipart/related: VIEWABLE = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 382
    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/html"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 387
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 402
    :cond_d
    :goto_5
    const-string v22, "EMAILSYNCADAPTER2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multipart/related: VIEWABLE to textfrompart = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 393
    :cond_e
    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/plain"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 397
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_5

    .line 405
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v20           #viewable:Lcom/android/email/mail/Part;
    .end local v21           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_f
    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/signed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 408
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    .line 410
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .restart local v21       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 415
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/mail/Part;

    .line 418
    .restart local v20       #viewable:Lcom/android/email/mail/Part;
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 419
    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "text/html"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 420
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 422
    :cond_11
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_6

    .line 423
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 425
    :cond_13
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_6

    .line 428
    .end local v20           #viewable:Lcom/android/email/mail/Part;
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v6, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    new-instance v4, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 432
    .local v4, attach:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v22, "cmdj_signed"

    move-object/from16 v0, v22

    move-object v1, v4

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    .line 440
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 443
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 445
    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 449
    .end local v4           #attach:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v6           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v21           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_15
    const-string v22, "EmailSyncAdapter.....2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "2. mimeMsg.getContentType() "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v12}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v11

    .line 451
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 453
    :cond_16
    move-object v0, v11

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 455
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 478
    .end local v8           #file:Ljava/lang/String;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #mimBodyStringTest:Ljava/lang/String;
    .end local v12           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v13           #mimeDataOs:Z
    .end local v14           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .end local v19           #tempBody2:Lcom/android/email/mail/Body;
    :cond_17
    packed-switch v17, :pswitch_data_0

    .line 491
    :goto_7
    return-void

    .line 481
    :pswitch_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_7

    .line 485
    :pswitch_1
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_7

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
    .end sparse-switch

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fetchPropertiesParser()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, msg:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 226
    .local v0, body:Lcom/android/email/provider/EmailContent$Body;
    const/4 v6, 0x0

    .line 227
    .local v6, range:Ljava/lang/String;
    const/4 v7, 0x0

    .line 229
    .local v7, total:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v8, 0x50b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 230
    iget v8, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v8, :sswitch_data_0

    .line 283
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 232
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 233
    goto :goto_0

    .line 236
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 237
    goto :goto_0

    .line 241
    :sswitch_2
    iget-object v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    iget-object v9, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    invoke-virtual {p0, v8, v9}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue(Ljava/io/OutputStream;Ljava/util/Observer;)I

    move-result v2

    .line 242
    .local v2, length:I
    goto :goto_0

    .line 245
    .end local v2           #length:I
    :sswitch_3
    const/4 v5, 0x0

    .line 247
    .local v5, parsed:Z
    iget-object v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 249
    iget-object v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    sget-object v9, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/adapter/ItemOperationsParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 251
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    new-instance v4, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v4}, Lcom/android/email/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .local v4, msg:Lcom/android/email/provider/EmailContent$Message;
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 256
    .end local v4           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 260
    if-eqz v3, :cond_2

    .line 261
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_2

    .line 263
    invoke-direct {p0, v3, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    .line 264
    const/4 v5, 0x1

    .line 269
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v5, :cond_3

    .line 271
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 272
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v3, v0}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    .line 273
    iget-boolean v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    if-eqz v8, :cond_0

    .line 274
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateAttachment(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 256
    .restart local v1       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v8

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .line 278
    .end local v1           #c:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 288
    .end local v5           #parsed:Z
    :cond_4
    return-void

    .line 256
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v4       #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v5       #parsed:Z
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_1

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x44a -> :sswitch_3
        0x509 -> :sswitch_0
        0x50a -> :sswitch_1
        0x50c -> :sswitch_2
    .end sparse-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private itemOperationsEmptyFolderContentsParser()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, collectionId:Ljava/lang/String;
    const/4 v1, -0x1

    .line 497
    .local v1, status:I
    :cond_0
    :goto_0
    const/16 v2, 0x512

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 498
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 510
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 501
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 502
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemOperations failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 515
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 517
    if-ne v1, v5, :cond_2

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 521
    :goto_2
    return-void

    :cond_2
    move v2, v6

    .line 517
    goto :goto_1

    .line 519
    :cond_3
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_2

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsFetchParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 177
    const/4 v0, 0x0

    .line 180
    .local v0, fileReference:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v2, 0x506

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 181
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 210
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 186
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    .local v1, status:I
    if-eq v1, v5, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemOperations failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v1           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 203
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 204
    goto :goto_0

    .line 206
    :sswitch_3
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesParser()V

    goto :goto_0

    .line 217
    :cond_1
    iput-boolean v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 219
    return-void

    .line 181
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x3d8 -> :sswitch_1
        0x451 -> :sswitch_2
        0x50b -> :sswitch_3
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsMoveParser()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 524
    const/4 v1, -0x1

    .line 525
    .local v1, status:I
    const/4 v0, 0x0

    .line 526
    .local v0, convId:[B
    :cond_0
    :goto_0
    const/16 v2, 0x516

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 527
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x50d

    if-ne v2, v3, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    .line 531
    if-eq v1, v5, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemOperation:Move  failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 533
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_0

    .line 536
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x518

    if-ne v2, v3, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueOpaque()[B

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_2
    if-ne v1, v5, :cond_3

    if-eqz v0, :cond_3

    .line 543
    iput-boolean v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 548
    :goto_1
    return-void

    .line 546
    :cond_3
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_1
.end method

.method private itemOperationsResponsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 169
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 158
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsFetchParser()V

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsEmptyFolderContentsParser()V

    goto :goto_0

    .line 165
    :sswitch_2
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsMoveParser()V

    goto :goto_0

    .line 173
    :cond_0
    return-void

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x506 -> :sswitch_0
        0x512 -> :sswitch_1
        0x516 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x505

    if-eq v1, v2, :cond_0

    .line 101
    new-instance v1, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 104
    :cond_0
    const/4 v0, -0x1

    .line 105
    .local v0, status:I
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 106
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    if-eq v1, v5, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemOperations failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 115
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->isProvisioningStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iput-boolean v5, v1, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 117
    iput-boolean v4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 122
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->isDeviceAccessDenied(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Lcom/android/email/mail/DeviceAccessException;

    const v2, 0x40001

    const v3, 0x7f0802cb

    invoke-direct {v1, v2, v3}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v1

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsResponsesParser()V

    goto :goto_0

    .line 137
    :cond_3
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    return v1

    .line 106
    :pswitch_data_0
    .packed-switch 0x50d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public setObserver(Ljava/util/Observer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    .line 94
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "os"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    .line 90
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
