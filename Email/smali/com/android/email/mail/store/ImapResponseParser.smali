.class public Lcom/android/email/mail/store/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;,
        Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    }
.end annotation


# static fields
.field private static final DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static DEBUG_LOG_RAW_STREAM:Z = false

.field private static final TAG:Ljava/lang/String; = "ImapResponseParser >>"


# instance fields
.field private mActiveLiteral:Ljava/io/InputStream;

.field private final mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

.field private final mIn:Lcom/android/email/PeekableInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/mail/store/ImapResponseParser;->DEBUG_LOG_RAW_STREAM:Z

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/store/ImapResponseParser;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V
    .locals 2
    .parameter "in"
    .parameter "discourseLogger"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-boolean v1, Lcom/android/email/mail/store/ImapResponseParser;->DEBUG_LOG_RAW_STREAM:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/android/email/mail/transport/LoggingInputStream;

    invoke-direct {v0, p1}, Lcom/android/email/mail/transport/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v0, in:Ljava/io/InputStream;
    move-object p1, v0

    .line 61
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p1
    :cond_0
    new-instance v1, Lcom/android/email/PeekableInputStream;

    invoke-direct {v1, p1}, Lcom/android/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    .line 62
    iput-object p2, p0, Lcom/android/email/mail/store/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 63
    return-void
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/email/mail/store/ImapResponseParser;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/ImapResponseParser;Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser;->readTokens(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V

    return-void
.end method

.method private expect(C)I
    .locals 6
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->readByte()I

    move-result v0

    .local v0, d:I
    if-eq v0, p1, :cond_1

    .line 334
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "Email"

    const-string v2, "expect(): end of stream reached"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_1
    return v0
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->readByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 135
    .end local v0           #b:I
    :cond_0
    :goto_1
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/android/email/mail/store/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 137
    return-void

    .line 127
    .restart local v0       #b:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0           #b:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseAtom()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "parseAtom(): end of stream reached"

    .line 256
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v2}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 260
    .local v0, ch:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 261
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 262
    const-string v2, "Email"

    const-string v3, "parseAtom(): end of stream reached"

    invoke-static {v2, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseAtom(): end of stream reached"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1
    const/16 v2, 0x28

    if-eq v0, v2, :cond_3

    const/16 v2, 0x29

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x25

    if-eq v0, v2, :cond_3

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3

    if-ltz v0, :cond_2

    const/16 v2, 0x1f

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_5

    .line 277
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 278
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseAtom(): (%04x %c)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 282
    :cond_5
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->readByte()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private parseCommandContinuationRequest()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 213
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method private parseList(CLjava/lang/String;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .locals 3
    .parameter "opener"
    .parameter "closer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 237
    new-instance v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/android/email/mail/store/ImapResponseParser;)V

    .line 240
    .local v0, list:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseToken()Ljava/lang/Object;

    move-result-object v1

    .line 241
    .local v1, token:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 252
    :cond_0
    :goto_1
    return-object v0

    .line 243
    :cond_1
    instance-of v2, v1, Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseLiteral()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/16 v2, 0x7b

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 296
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, size:I
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 298
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 299
    new-instance v0, Lcom/android/email/FixedLengthInputStream;

    iget-object v2, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, v2, v1}, Lcom/android/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 300
    .local v0, fixed:Lcom/android/email/FixedLengthInputStream;
    return-object v0
.end method

.method private parseQuoted()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x22

    .line 311
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 312
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseTaggedResponse()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, tag:Ljava/lang/String;
    return-object v0
.end method

.method private parseToken()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x28

    const/16 v6, 0x20

    const/16 v5, 0xd

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 174
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 177
    iput-object v4, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    .line 180
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 181
    .local v0, ch:I
    if-ne v0, v7, :cond_2

    .line 182
    const-string v1, ")"

    invoke-direct {p0, v7, v1}, Lcom/android/email/mail/store/ImapResponseParser;->parseList(CLjava/lang/String;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v1

    .line 206
    :goto_1
    return-object v1

    .line 183
    :cond_2
    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    .line 184
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 185
    const-string v1, ")"

    goto :goto_1

    .line 186
    :cond_3
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 187
    const/16 v1, 0x5b

    const-string v2, "]"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/ImapResponseParser;->parseList(CLjava/lang/String;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v1

    goto :goto_1

    .line 188
    :cond_4
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 189
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 190
    const-string v1, "]"

    goto :goto_1

    .line 191
    :cond_5
    const/16 v1, 0x22

    if-ne v0, v1, :cond_6

    .line 192
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseQuoted()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 193
    :cond_6
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_7

    .line 194
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseLiteral()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    .line 195
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    goto :goto_1

    .line 196
    :cond_7
    if-ne v0, v6, :cond_8

    .line 197
    invoke-direct {p0, v6}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    goto :goto_0

    .line 198
    :cond_8
    if-ne v0, v5, :cond_9

    .line 199
    invoke-direct {p0, v5}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 200
    invoke-direct {p0, v3}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    move-object v1, v4

    .line 201
    goto :goto_1

    .line 202
    :cond_9
    if-ne v0, v3, :cond_a

    .line 203
    invoke-direct {p0, v3}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    move-object v1, v4

    .line 204
    goto :goto_1

    .line 206
    :cond_a
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseAtom()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private parseUntaggedResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 220
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapResponseParser;->expect(C)I

    .line 221
    return-void
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    .line 71
    .local v0, ret:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    .line 74
    :cond_0
    return v0
.end method

.method private readStringUntil(C)Ljava/lang/String;
    .locals 5
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "readQuotedString(): end of stream reached"

    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->readByte()I

    move-result v0

    .local v0, ch:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 319
    if-ne v0, p1, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 322
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 325
    :cond_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "Email"

    const-string v3, "readQuotedString(): end of stream reached"

    invoke-static {v2, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "readQuotedString(): end of stream reached"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readTokens(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->clear()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser;->readToken()Ljava/lang/Object;

    move-result-object v0

    .local v0, token:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 150
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;Z)Z

    .line 151
    return-void

    .line 150
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    new-instance v2, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;-><init>(Lcom/android/email/mail/store/ImapResponseParser;)V

    .line 85
    .local v2, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/mail/store/ImapResponseParser;->mActiveLiteral:Ljava/io/InputStream;

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/email/mail/store/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v3}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    .line 91
    .local v0, ch:I
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseUntaggedResponse()V

    .line 93
    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->readTokens(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V

    .line 103
    :goto_0
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 104
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    return-object v2

    .line 94
    :cond_3
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseCommandContinuationRequest()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    .line 97
    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->readTokens(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v0           #ch:I
    .end local v2           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 110
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 111
    throw v1

    .line 99
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #ch:I
    .restart local v2       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseTaggedResponse()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 100
    invoke-direct {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser;->readTokens(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    .end local v0           #ch:I
    .end local v2           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 114
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 115
    throw v1
.end method

.method public readToken()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapResponseParser;->parseToken()Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, token:Ljava/lang/Object;
    if-eqz v0, :cond_1

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :cond_1
    return-object v0
.end method
