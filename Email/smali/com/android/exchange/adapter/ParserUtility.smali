.class public Lcom/android/exchange/adapter/ParserUtility;
.super Ljava/lang/Object;
.source "ParserUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method public static addMessageData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 11
    .parameter "parser"
    .parameter "msg"
    .parameter "loopTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v7, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    const/4 v0, 0x0

    .local v0, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    move-object v8, v0

    .line 30
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .local v8, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 31
    iget v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    :cond_0
    move-object v0, v8

    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :goto_1
    move-object v8, v0

    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_0

    .line 34
    :sswitch_0
    invoke-static {p0, v7, p1}, Lcom/android/exchange/adapter/ParserUtility;->attachmentsParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    move-object v0, v8

    .line 35
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_1

    .line 37
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v0, v8

    .line 38
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_1

    .line 40
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 41
    .local v0, froms:[Lcom/android/email/mail/Address;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 42
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 44
    :cond_1
    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #froms:[Lcom/android/email/mail/Address;
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object v0, v8

    .line 45
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .local v0, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_1

    .line 47
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object v0, v8

    .line 48
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_1

    .line 50
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    move-object v0, v8

    .line 51
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto :goto_1

    .line 53
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, date:Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 56
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

    const/16 v9, 0x10

    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v9, 0x11

    const/16 v10, 0x13

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .end local v6           #date:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 61
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    move-object v0, v8

    .line 64
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .local v0, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 66
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v0, v8

    .line 67
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 69
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    move-object v0, v8

    .line 70
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 69
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 72
    :sswitch_8
    invoke-static {p0, p1}, Lcom/android/exchange/adapter/ParserUtility;->bodyParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$Message;)V

    move-object v0, v8

    .line 73
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 76
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    move-object v0, v8

    .line 77
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 79
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    move-object v0, v8

    .line 80
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 93
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_b
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    .line 95
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-static {p0, v0}, Lcom/android/exchange/adapter/ParserUtility;->flagParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    .line 96
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 97
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 98
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    goto/16 :goto_1

    .line 104
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_c
    const-string v0, "ParserUtility"

    const-string v1, "EMAIL_BODY_TRUNCATED1"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-byte v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 109
    const-string v0, "ParserUtility"

    const-string v1, "EMAIL_BODY_TRUNCATED2"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 118
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueOpaque()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->crypt([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    move-object v0, v8

    .line 120
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 123
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueOpaque()[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationIndex:[B

    move-object v0, v8

    .line 125
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 129
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    move-object v0, v8

    .line 130
    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v0       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 134
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/ParserUtility;->decodeMsgClass(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, msgClass:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .end local v0           #msgClass:I
    move-object v0, v8

    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .local v0, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 139
    .local v0, msgClass:I
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .end local v0           #msgClass:I
    move-object v0, v8

    .end local v8           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .local v0, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    goto/16 :goto_1

    .line 150
    .end local v0           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    .restart local v8       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0
    if-lez p0, :cond_5

    .line 151
    iput-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 153
    :cond_5
    return-void

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8e -> :sswitch_c
        0x8f -> :sswitch_5
        0x92 -> :sswitch_f
        0x93 -> :sswitch_10
        0x94 -> :sswitch_6
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_2
        0x99 -> :sswitch_4
        0xba -> :sswitch_b
        0x44a -> :sswitch_8
        0x44e -> :sswitch_0
        0x585 -> :sswitch_9
        0x586 -> :sswitch_a
        0x589 -> :sswitch_d
        0x58a -> :sswitch_e
    .end sparse-switch
.end method

.method private static attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 8
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
    .line 340
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    const/4 v1, 0x0

    .line 341
    .local v1, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 342
    .local v2, length:Ljava/lang/String;
    const/4 v3, 0x0

    .line 345
    .local v3, location:Ljava/lang/String;
    const/4 v5, 0x0

    .line 346
    .local v5, umAttOrder:I
    const/4 v4, 0x0

    .line 349
    .local v4, umAttDuration:I
    :goto_0
    const/16 v6, 0x85

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 350
    iget v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 373
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 354
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 355
    goto :goto_0

    .line 358
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 359
    goto :goto_0

    .line 362
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 363
    goto :goto_0

    .line 366
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v5

    .line 367
    goto :goto_0

    .line 369
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v4

    .line 370
    goto :goto_0

    .line 377
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 378
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 379
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v6, "base64"

    iput-object v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 380
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 381
    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 382
    iput-object v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 383
    invoke-static {v1}, Lcom/android/exchange/adapter/ParserUtility;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 384
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const/4 v6, 0x1

    iput-boolean v6, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 387
    .end local v0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_1
    return-void

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x587 -> :sswitch_4
        0x588 -> :sswitch_3
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
    .line 327
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 328
    iget v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 334
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 331
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/exchange/adapter/ParserUtility;->attachmentParser(Lcom/android/exchange/adapter/AbstractSyncParser;Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 337
    :cond_0
    return-void

    .line 328
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

    .line 172
    const-string v1, "1"

    .line 173
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 174
    .local v0, body:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 175
    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 194
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 177
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    goto :goto_0

    .line 180
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 181
    goto :goto_0

    .line 185
    :sswitch_2
    const-string v2, "ParserUtility"

    const-string v2, "BASE_TRUNCATED1"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 188
    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 189
    const-string v2, "ParserUtility"

    const-string v2, "BASE_TRUNCATED2"

    invoke-static {v5, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 215
    :goto_1
    return-void

    .line 211
    :cond_2
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
        0x44d -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodeMsgClass(Ljava/lang/String;)I
    .locals 3
    .parameter "cl"

    .prologue
    const/4 v1, 0x0

    const-string v2, "IPM.Note.SMIME"

    .line 157
    if-nez p0, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 159
    :cond_0
    const-string v0, "IPM.Note.SMIME"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "IPM.Note.SMIME"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "IPM.Note.SMIME.MultipartSigned"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method private static flagParser(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;
    .locals 6
    .parameter "parser"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 225
    .local v0, state:Ljava/lang/Boolean;
    :goto_0
    const/16 v2, 0xba

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 226
    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 284
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 229
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v1

    .line 230
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 231
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 232
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 233
    :cond_0
    if-ne v1, v4, :cond_1

    .line 234
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 235
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 242
    .end local v1           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    goto :goto_0

    .line 245
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    goto :goto_0

    .line 249
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 250
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    goto :goto_0

    .line 253
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    goto :goto_0

    .line 257
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    goto :goto_0

    .line 261
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    goto/16 :goto_0

    .line 265
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    goto/16 :goto_0

    .line 269
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 272
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 276
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    goto/16 :goto_0

    .line 280
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 287
    :cond_3
    return-object v0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb -> :sswitch_0
        0xbd -> :sswitch_1
        0xbe -> :sswitch_2
        0x24b -> :sswitch_3
        0x24c -> :sswitch_5
        0x24d -> :sswitch_6
        0x25b -> :sswitch_8
        0x25c -> :sswitch_9
        0x25e -> :sswitch_4
        0x25f -> :sswitch_7
        0x262 -> :sswitch_a
        0x263 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 400
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 401
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 402
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 403
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    if-nez v0, :cond_2

    .line 407
    const-string v2, "application/octet-stream"

    .line 414
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 409
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 411
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

.method public static getTimeInMillis(Ljava/lang/String;)J
    .locals 2
    .parameter "tstr"

    .prologue
    .line 291
    const-string v0, "GMT"

    invoke-static {p0, v0}, Lcom/android/exchange/adapter/ParserUtility;->getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "tstr"
    .parameter "timezone"

    .prologue
    .line 294
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 295
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 298
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 299
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method
