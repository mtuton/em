.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ItemOperationsParser.java"


# static fields
.field private static final WHERE_SERVER_ID_AND_MAILBOX_KEY:Ljava/lang/String; = "syncServerId=? and mailboxKey=?"


# instance fields
.field private mBindArguments:[Ljava/lang/String;

.field private mMailboxIdAsString:Ljava/lang/String;

.field private mResult:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 2
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 22
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v14, 0x0

    .line 204
    .local v14, msgData:Ljava/lang/String;
    const/4 v15, -0x1

    .line 205
    .local v15, msgType:I
    :cond_0
    :goto_0
    const/16 v19, 0x44a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 208
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v15

    .line 209
    goto :goto_0

    .line 211
    :sswitch_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    move-object v4, v0

    check-cast v4, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object v0, v4

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 219
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 220
    const-string v19, "EmailSyncAdapter2"

    const-string v20, "EasEmailSyncParser result  "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v6, "tempFile"

    .line 222
    .local v6, file:Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 224
    .local v11, mimeDataOs:Z
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/tempFile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 229
    .local v12, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :try_start_0
    new-instance v13, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v13, v8}, Lcom/android/email/mail/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .local v13, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    move-object v12, v13

    .line 235
    .end local v13           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .restart local v12       #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getBody()Lcom/android/email/mail/Body;

    move-result-object v16

    .line 236
    .local v16, tempBody2:Lcom/android/email/mail/Body;
    new-instance v10, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 238
    .local v10, mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    const/4 v9, 0x0

    .line 239
    .local v9, mimBodyStringTest:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/html"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 240
    const-string v19, "EmailSyncAdapter.....2"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "1. mimeMsg.getContentType() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v18, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 244
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/email/mail/Part;

    .line 245
    .local v17, viewable:Lcom/android/email/mail/Part;
    const-string v19, "EMAILSYNCADAPTER"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "text/html: VIEWABLE = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static/range {v17 .. v17}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/html"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 248
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 250
    :cond_3
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 318
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mimBodyStringTest:Ljava/lang/String;
    .end local v10           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v16           #tempBody2:Lcom/android/email/mail/Body;
    .end local v17           #viewable:Lcom/android/email/mail/Part;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 320
    .local v5, e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v5}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v5           #e:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v19

    move-object/from16 v5, v19

    .line 232
    .restart local v5       #e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v5}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_1

    .line 253
    .end local v5           #e:Lcom/android/email/mail/MessagingException;
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #mimBodyStringTest:Ljava/lang/String;
    .restart local v10       #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .restart local v16       #tempBody2:Lcom/android/email/mail/Body;
    .restart local v17       #viewable:Lcom/android/email/mail/Part;
    .restart local v18       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 255
    :cond_5
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_2

    .line 260
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v17           #viewable:Lcom/android/email/mail/Part;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_6
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "multipart/alternative"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "multipart/mixed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "multipart/report"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 261
    :cond_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v18       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 265
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/email/mail/Part;

    .line 267
    .restart local v17       #viewable:Lcom/android/email/mail/Part;
    invoke-static/range {v17 .. v17}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 268
    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/html"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 271
    :cond_9
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_3

    .line 272
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 274
    :cond_b
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_3

    .line 278
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v17           #viewable:Lcom/android/email/mail/Part;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_c
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "multipart/related"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 280
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .restart local v18       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 283
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/email/mail/Part;

    .line 284
    .restart local v17       #viewable:Lcom/android/email/mail/Part;
    const-string v19, "EMAILSYNCADAPTER2"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "multipart/related: VIEWABLE = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static/range {v17 .. v17}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/html"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 293
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 308
    :cond_d
    :goto_5
    const-string v19, "EMAILSYNCADAPTER2"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "multipart/related: VIEWABLE to textfrompart = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 299
    :cond_e
    invoke-interface/range {v17 .. v17}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/plain"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 303
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_5

    .line 312
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v17           #viewable:Lcom/android/email/mail/Part;
    .end local v18           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_f
    const-string v19, "EmailSyncAdapter.....2"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "2. mimeMsg.getContentType() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v10}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 314
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 316
    :cond_10
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 334
    .end local v6           #file:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #mimBodyStringTest:Ljava/lang/String;
    .end local v10           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v11           #mimeDataOs:Z
    .end local v12           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .end local v16           #tempBody2:Lcom/android/email/mail/Body;
    :cond_11
    packed-switch v15, :pswitch_data_0

    .line 347
    :goto_6
    return-void

    .line 337
    :pswitch_0
    move-object v0, v14

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_6

    .line 341
    :pswitch_1
    move-object v0, v14

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_6

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
    .end sparse-switch

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fetchPropertiesParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 2
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    :goto_0
    const/16 v0, 0x50b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesBodyParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    goto :goto_0

    .line 200
    :cond_0
    return-void

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x44a
        :pswitch_0
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, collectionId:Ljava/lang/String;
    const/4 v1, -0x1

    .line 353
    .local v1, status:I
    :cond_0
    :goto_0
    const/16 v2, 0x512

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 354
    iget v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 366
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 357
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

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

    .line 363
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 364
    goto :goto_0

    .line 371
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 373
    if-ne v1, v5, :cond_2

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 377
    :goto_2
    return-void

    :cond_2
    move v2, v6

    .line 373
    goto :goto_1

    .line 375
    :cond_3
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_2

    .line 354
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsFetchParser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 125
    .local v0, body:Lcom/android/email/provider/EmailContent$Body;
    :cond_0
    :goto_0
    const/16 v6, 0x506

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 126
    iget v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 170
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 131
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v5

    .local v5, status:I
    if-eq v5, v9, :cond_0

    .line 132
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ItemOperations failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v5           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 145
    goto :goto_0

    .line 148
    :sswitch_2
    if-eqz v4, :cond_0

    .line 150
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 152
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    new-instance v3, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .local v3, msg:Lcom/android/email/provider/EmailContent$Message;
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 157
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    if-eqz v2, :cond_0

    .line 162
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, v2, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 178
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 179
    iget-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v2, v0}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    .line 180
    iput-boolean v9, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 182
    :cond_3
    return-void

    .line 157
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #msg:Lcom/android/email/provider/EmailContent$Message;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_1

    .line 126
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x3d8 -> :sswitch_1
        0x50b -> :sswitch_2
        0x50d -> :sswitch_0
    .end sparse-switch
.end method

.method private itemOperationsResponsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 106
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 108
    :sswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsFetchParser()V

    goto :goto_0

    .line 111
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsEmptyFolderContentsParser()V

    goto :goto_0

    .line 118
    :cond_0
    return-void

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x506 -> :sswitch_0
        0x512 -> :sswitch_1
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
    .line 91
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
    .line 94
    return-void
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x505

    if-eq v1, v2, :cond_0

    .line 65
    new-instance v1, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 68
    :cond_0
    const/4 v0, -0x1

    .line 69
    .local v0, status:I
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 70
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 82
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemOperations failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsResponsesParser()V

    goto :goto_0

    .line 87
    :cond_2
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    return v1

    .line 70
    nop

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
    .line 97
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
