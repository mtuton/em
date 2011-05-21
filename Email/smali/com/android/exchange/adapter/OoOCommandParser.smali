.class public Lcom/android/exchange/adapter/OoOCommandParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "OoOCommandParser.java"


# static fields
.field public static final DATE_PARSE_EXCEPTION:Ljava/lang/String; = "date_parse"


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
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 34
    return-void
.end method

.method private checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 40
    .local v0, arr:[C
    const/4 v1, 0x0

    .line 42
    .local v1, badCharsFound:Z
    array-length v4, v0

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 43
    aget-char v4, v0, v2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    aget-char v4, v0, v2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    aget-char v4, v0, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 44
    :cond_0
    const/16 v4, 0x20

    aput-char v4, v0, v2

    .line 45
    const/4 v1, 0x1

    .line 42
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    .line 51
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 52
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 56
    .end local v3           #result:Ljava/lang/String;
    :goto_1
    return-object v4

    :cond_2
    move-object v4, p1

    .line 55
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
    .line 70
    const-wide/16 v3, 0x0

    .line 71
    .local v3, offsetCal:J
    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string v5, ".000Z"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 81
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, cal:Ljava/util/Calendar;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v3, v5

    .line 83
    const/16 v5, 0x9

    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/OoOCommandParser;->getUTCAMPM(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 85
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 86
    .local v1, convertedDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 87
    return-object v1
.end method

.method private getUTCAMPM(Ljava/lang/String;)I
    .locals 8
    .parameter "utc"

    .prologue
    const/16 v5, 0x30

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 60
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, dateTime:[Ljava/lang/String;
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 62
    .local v3, utcTime:[B
    aget-byte v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v2, v4, v5

    .line 63
    .local v2, hHH:I
    aget-byte v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v1, v4, v5

    .line 64
    .local v1, hH:I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v1

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    move v4, v7

    .line 66
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

    .line 149
    :cond_0
    :goto_0
    const/16 v0, 0x487

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 150
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48a

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 152
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_1

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 156
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48b

    if-ne v0, v1, :cond_2

    .line 157
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    .line 164
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48c

    if-ne v0, v1, :cond_3

    .line 165
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_5

    .line 167
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    .line 172
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x48d

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseOoOMessageTag()V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_2

    .line 176
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

    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, internal:Z
    const/4 v1, 0x0

    .line 93
    .local v1, extKnown:Z
    const/4 v2, 0x0

    .line 94
    .local v2, extUnKnown:Z
    const/4 v0, 0x0

    .line 96
    .local v0, enabled:Z
    :cond_0
    :goto_0
    const/16 v5, 0x48d

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    .line 98
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x48e

    if-ne v5, v6, :cond_1

    .line 99
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x48f

    if-ne v5, v6, :cond_2

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x490

    if-ne v5, v6, :cond_3

    .line 103
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    :cond_3
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x491

    if-ne v5, v6, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v4

    .line 106
    .local v4, value:I
    if-ne v4, v7, :cond_0

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    .end local v4           #value:I
    :cond_4
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x492

    if-ne v5, v6, :cond_a

    .line 110
    if-eqz v3, :cond_6

    .line 111
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 113
    if-eqz v0, :cond_5

    .line 114
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    .line 117
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 116
    :cond_5
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    goto :goto_1

    .line 119
    :cond_6
    if-eqz v1, :cond_8

    .line 120
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_7

    .line 123
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    .line 126
    :goto_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 125
    :cond_7
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    goto :goto_2

    .line 129
    :cond_8
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 132
    if-eqz v0, :cond_9

    .line 133
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    .line 136
    :goto_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 135
    :cond_9
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    goto :goto_3

    .line 141
    :cond_a
    iget v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v6, 0x493

    if-ne v5, v6, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto/16 :goto_0

    .line 145
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
    .line 290
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
    .line 296
    return-void
.end method

.method public getParsedData()Lcom/android/exchange/OoODataList;
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v9, 0x0

    .line 181
    .local v9, settingsStatus:Z
    const/4 v8, 0x0

    .line 183
    .local v8, oofStatus:Z
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x485

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 187
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 189
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v10

    .line 191
    .local v10, value:I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    .line 192
    if-nez v9, :cond_2

    if-nez v8, :cond_2

    .line 193
    const/4 v9, 0x1

    .line 203
    .end local v10           #value:I
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->tag:I

    const/16 v1, 0x487

    if-ne v0, v1, :cond_0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseGetTag()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_7

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 212
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 224
    :goto_3
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_0

    .line 194
    .restart local v10       #value:I
    :cond_2
    if-eqz v9, :cond_1

    if-nez v8, :cond_1

    .line 195
    const/4 v8, 0x1

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_1

    .line 200
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_1

    .line 206
    .end local v10           #value:I
    :catch_0
    move-exception v7

    .line 207
    .local v7, e:Ljava/text/ParseException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "date_parse"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    .end local v7           #e:Ljava/text/ParseException;
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_3

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_0

    .line 232
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 233
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 235
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 243
    :goto_4
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 251
    :goto_5
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_0

    .line 240
    :cond_8
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_4

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_5

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_0

    .line 261
    :cond_b
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 267
    :goto_6
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 268
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 273
    :goto_7
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 274
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_6

    .line 271
    :cond_d
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_7

    .line 277
    :cond_e
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/exchange/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_0

    .line 283
    :cond_f
    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method
