.class public Lcom/android/exchange/adapter/OoOCommandParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "OoOCommandParser.java"


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mExtKnownMsgEnable:I

.field private mExtMsgKnown:Ljava/lang/String;

.field private mExtMsgUnKnown:Ljava/lang/String;

.field private mExtUnKnownMsgEnable:I

.field private mInternalMsg:Ljava/lang/String;

.field private mInternalMsgEnable:I

.field private mOofState:I

.field private mResult:Z

.field private mStartDate:Ljava/util/Date;

.field oodl:Lcom/android/exchange/OoODataList;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 36
    return-void
.end method

.method private checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 42
    .local v0, arr:[C
    const/4 v1, 0x0

    .line 44
    .local v1, badCharsFound:Z
    array-length v4, v0

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 45
    aget-char v4, v0, v2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    aget-char v4, v0, v2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    aget-char v4, v0, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 46
    :cond_0
    const/16 v4, 0x20

    aput-char v4, v0, v2

    .line 47
    const/4 v1, 0x1

    .line 44
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 54
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 58
    .end local v3           #result:Ljava/lang/String;
    :goto_1
    return-object v4

    :cond_2
    move-object v4, p1

    .line 57
    goto :goto_1
.end method

.method private convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .parameter "utc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v3, 0x0

    .line 73
    .local v3, offsetCal:J
    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v5, ".000Z"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 83
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, cal:Ljava/util/Calendar;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v3, v5

    .line 85
    const/16 v5, 0x9

    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/OoOCommandParser;->getUTCAMPM(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 87
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 88
    .local v1, convertedDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 89
    return-object v1
.end method

.method private getUTCAMPM(Ljava/lang/String;)I
    .locals 8
    .parameter "utc"

    .prologue
    const/16 v5, 0x30

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, dateTime:[Ljava/lang/String;
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 64
    .local v3, utcTime:[B
    aget-byte v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v2, v4, v5

    .line 65
    .local v2, hHH:I
    aget-byte v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v1, v4, v5

    .line 66
    .local v1, hH:I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v1

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    move v4, v7

    .line 68
    :goto_0
    return v4

    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method private parseGetTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 151
    :cond_0
    :goto_0
    const/16 v0, 0x487

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 152
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48a

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 154
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 158
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48b

    if-ne v0, v1, :cond_2

    .line 159
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    .line 166
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48c

    if-ne v0, v1, :cond_3

    .line 167
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_5

    .line 169
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    .line 174
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48d

    if-ne v0, v1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseOoOMessageTag()V

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_2

    .line 178
    :cond_6
    return-void
.end method

.method private parseOoOMessageTag()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, internal:Z
    const/4 v1, 0x0

    .line 95
    .local v1, extKnown:Z
    const/4 v2, 0x0

    .line 96
    .local v2, extUnKnown:Z
    const/4 v0, 0x0

    .line 98
    .local v0, enabled:Z
    :cond_0
    :goto_0
    const/16 v5, 0x48d

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    .line 100
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x48e

    if-ne v5, v6, :cond_1

    .line 101
    const/4 v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x48f

    if-ne v5, v6, :cond_2

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x490

    if-ne v5, v6, :cond_3

    .line 105
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :cond_3
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x491

    if-ne v5, v6, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v4

    .line 108
    .local v4, value:I
    if-ne v4, v7, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    .end local v4           #value:I
    :cond_4
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x492

    if-ne v5, v6, :cond_a

    .line 112
    if-eqz v3, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 114
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_5

    .line 116
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    .line 119
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 118
    :cond_5
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    goto :goto_1

    .line 121
    :cond_6
    if-eqz v1, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 123
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 124
    if-eqz v0, :cond_7

    .line 125
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    .line 128
    :goto_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 127
    :cond_7
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    goto :goto_2

    .line 131
    :cond_8
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 133
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 134
    if-eqz v0, :cond_9

    .line 135
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    .line 138
    :goto_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 137
    :cond_9
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    goto :goto_3

    .line 143
    :cond_a
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x493

    if-ne v5, v6, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :cond_b
    return-void
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
    .line 335
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
    .line 341
    return-void
.end method

.method public getParsedData()Lcom/android/exchange/OoODataList;
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v10, 0x0

    .line 183
    .local v10, settingsStatus:Z
    const/4 v9, 0x0

    .line 184
    .local v9, oofStatus:Z
    const/4 v7, 0x0

    .line 186
    .local v7, devInfoStatus:Z
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x485

    if-eq v0, v1, :cond_0

    .line 189
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 190
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 192
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v11

    .line 194
    .local v11, value:I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    .line 195
    const/4 v10, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_0

    .line 201
    .end local v11           #value:I
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x496

    if-ne v0, v1, :cond_8

    .line 202
    const-string v0, "OoOCommandParser"

    const-string v1, "Hurray! DeviceInformation was set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_1
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 205
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_5

    .line 206
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v11

    .line 207
    .restart local v11       #value:I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_3

    .line 208
    const-string v0, "OoOCommandParser"

    const-string v1, "SETTINGS_DEVICE_INFORMATION status =1 !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v7, 0x1

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/OoOCommandParser;->isProvisioningStatus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 216
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_1

    .line 221
    .end local v11           #value:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->skipTag()V

    goto :goto_1

    .line 224
    :cond_6
    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 328
    :goto_3
    return v0

    .line 224
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 227
    :cond_8
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x489

    if-ne v0, v1, :cond_18

    .line 228
    :goto_4
    const/16 v0, 0x489

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 229
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_b

    .line 230
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v11

    .line 231
    .restart local v11       #value:I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_9

    .line 232
    const/4 v9, 0x1

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_4

    .line 237
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/OoOCommandParser;->isProvisioningStatus(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 239
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_4

    .line 242
    .end local v11           #value:I
    :cond_b
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x487

    if-ne v0, v1, :cond_17

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseGetTag()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_f

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 251
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 252
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 257
    :goto_5
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 263
    :goto_6
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 264
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_4

    .line 245
    :catch_0
    move-exception v8

    .line 246
    .local v8, e:Ljava/text/ParseException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "date_parse"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    .end local v8           #e:Ljava/text/ParseException;
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_5

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_6

    .line 267
    :cond_e
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_4

    .line 271
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 272
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 274
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 275
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 282
    :goto_7
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 283
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 290
    :goto_8
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 291
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_4

    .line 279
    :cond_10
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_7

    .line 287
    :cond_11
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_8

    .line 295
    :cond_12
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_4

    .line 300
    :cond_13
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 301
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 306
    :goto_9
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 307
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 312
    :goto_a
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 313
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_4

    .line 304
    :cond_14
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_9

    .line 310
    :cond_15
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_a

    .line 316
    :cond_16
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_4

    .line 321
    :cond_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->skipTag()V

    goto/16 :goto_4

    .line 325
    :cond_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->skipTag()V

    goto/16 :goto_0

    .line 328
    :cond_19
    if-eqz v10, :cond_1a

    if-eqz v9, :cond_1a

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto/16 :goto_3

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
