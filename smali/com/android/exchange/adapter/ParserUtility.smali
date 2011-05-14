.class public Lcom/android/exchange/adapter/ParserUtility;
.super Ljava/lang/Object;
.source "ParserUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public static addMessageData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 10
    .parameter "parser"
    .parameter "msg"
    .parameter "loopTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v7, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 27
    iget v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 30
    :sswitch_0
    invoke-static {p0, v7, p1}, Lcom/android/exchange/adapter/ParserUtility;->attachmentsParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 33
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 36
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 37
    .local v0, froms:[Lcom/android/email/mail/Address;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 38
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 40
    :cond_1
    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #froms:[Lcom/android/email/mail/Address;
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 43
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 46
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_0

    .line 49
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, date:Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 52
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v8, 0x10

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x11

    const/16 v9, 0x13

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .end local v6           #date:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 57
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 58
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_0

    .line 62
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :sswitch_8
    invoke-static {p0, p1}, Lcom/android/exchange/adapter/ParserUtility;->bodyParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 78
    :sswitch_9
    const-string v0, "ParserUtility"

    const-string v1, "EMAIL_BODY_TRUNCATED1"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-byte v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 83
    const-string v0, "ParserUtility"

    const-string v1, "EMAIL_BODY_TRUNCATED2"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_0

    .line 98
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0
    if-lez p0, :cond_4

    .line 99
    iput-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 101
    :cond_4
    return-void

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8e -> :sswitch_9
        0x8f -> :sswitch_5
        0x92 -> :sswitch_a
        0x94 -> :sswitch_6
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_2
        0x99 -> :sswitch_4
        0x44a -> :sswitch_8
        0x44e -> :sswitch_0
    .end sparse-switch
.end method

.method private static attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 6
    .parameter "parser"
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/AbstractSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/email/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    const/4 v1, 0x0

    .line 188
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, length:Ljava/lang/String;
    const/4 v3, 0x0

    .line 191
    .local v3, location:Ljava/lang/String;
    :goto_0
    const/16 v4, 0x85

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 192
    iget v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 207
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 196
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 197
    goto :goto_0

    .line 200
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 201
    goto :goto_0

    .line 204
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 205
    goto :goto_0

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 212
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 213
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v4, "base64"

    iput-object v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 214
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 215
    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 216
    iput-object v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 217
    invoke-static {v1}, Lcom/android/exchange/adapter/ParserUtility;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 221
    .end local v0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_1
    return-void

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
    .end sparse-switch
.end method

.method private static attachmentsParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter "parser"
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/AbstractSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/email/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 175
    iget v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 181
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 178
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/exchange/adapter/ParserUtility;->attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 184
    :cond_0
    return-void

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private static bodyParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 6
    .parameter "parser"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "ParserUtility"

    .line 104
    const-string v1, "1"

    .line 105
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 106
    .local v0, body:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 107
    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 126
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 110
    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 117
    :sswitch_2
    const-string v2, "ParserUtility"

    const-string v2, "BASE_TRUNCATED1"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 120
    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 121
    const-string v2, "ParserUtility"

    const-string v2, "BASE_TRUNCATED2"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 147
    :goto_1
    return-void

    .line 143
    :cond_2
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
        0x44d -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 234
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 235
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 236
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 237
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    if-nez v0, :cond_2

    .line 241
    const-string v2, "application/octet-stream"

    .line 248
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 243
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
