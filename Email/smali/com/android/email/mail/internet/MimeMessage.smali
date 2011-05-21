.class public Lcom/android/email/mail/internet/MimeMessage;
.super Lcom/android/email/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final END_OF_LINE:Ljava/util/regex/Pattern; = null

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "MimeMessage >>>"

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/email/mail/Address;

.field private mBody:Lcom/android/email/mail/Body;

.field private mCc:[Lcom/android/email/mail/Address;

.field private mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

.field private mFrom:[Lcom/android/email/mail/Address;

.field private mHeader:Lcom/android/email/mail/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/email/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field private mTo:[Lcom/android/email/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/email/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 92
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/email/mail/Message;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/mail/Message;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/email/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 131
    return-void
.end method

.method private generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x3c

    .line 107
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    .line 112
    sget-object v4, Lcom/android/email/mail/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    .line 113
    .local v3, value:I
    const-string v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, c:C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #c:C
    .end local v3           #value:I
    :cond_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/email/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public getBody()Lcom/android/email/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 209
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 214
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/email/mail/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 193
    const-string v1, "text/plain"

    .line 195
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/android/email/mail/internet/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/android/email/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    if-nez v1, :cond_2

    .line 298
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, list:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_1
    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    .line 304
    .end local v0           #list:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 355
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, messageId:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-nez v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    .line 245
    :goto_0
    return-object v0

    .line 236
    :cond_1
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    if-nez v0, :cond_2

    .line 238
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 241
    :cond_3
    sget-object v0, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    if-nez v0, :cond_4

    .line 243
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 247
    :cond_5
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/android/email/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    if-nez v0, :cond_0

    .line 321
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 169
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 171
    .local v0, field:Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 174
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0           #field:Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/internet/MimeHeader;->clear()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 138
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    .line 139
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    .line 140
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    .line 141
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    .line 142
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    .line 143
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 144
    iput-object v2, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    .line 146
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 147
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/email/mail/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 148
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 149
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 404
    const-string v0, "Message-ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 407
    :cond_0
    return-void
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "saveChanges not yet implemented"

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lcom/android/email/mail/Body;)V
    .locals 7
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v6, "Content-Type"

    .line 372
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    .line 373
    instance-of v2, p1, Lcom/android/email/mail/Multipart;

    if-eqz v2, :cond_1

    .line 374
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/Multipart;

    move-object v1, v0

    .line 375
    .local v1, multipart:Lcom/android/email/mail/Multipart;
    invoke-virtual {v1, p0}, Lcom/android/email/mail/Multipart;->setParent(Lcom/android/email/mail/Part;)V

    .line 376
    const-string v2, "Content-Type"

    invoke-virtual {v1}, Lcom/android/email/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v1           #multipart:Lcom/android/email/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    instance-of v2, p1, Lcom/android/email/mail/internet/TextBody;

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 418
    if-nez p2, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Lcom/android/email/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    sget-object v1, Lcom/android/email/mail/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 10
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 453
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 466
    :cond_0
    return-void

    .line 455
    :cond_1
    new-instance v6, Lcom/android/email/mail/internet/MimeHeader;

    invoke-direct {v6}, Lcom/android/email/mail/internet/MimeHeader;-><init>()V

    iput-object v6, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 456
    sget-object v6, Lcom/android/email/mail/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 457
    .local v1, header:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, tokens:[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v9, :cond_2

    .line 460
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v4, sbuf:Ljava/lang/StringBuffer;
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Illegal extended headers: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_2
    iget-object v6, p0, Lcom/android/email/mail/internet/MimeMessage;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/android/email/mail/Address;)V
    .locals 4
    .parameter "from"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x6

    .line 309
    .local v0, FROM_LENGTH:I
    if-eqz p1, :cond_0

    .line 310
    const-string v1, "From"

    invoke-virtual {p1}, Lcom/android/email/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/email/mail/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mFrom:[Lcom/android/email/mail/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V
    .locals 9
    .parameter "type"
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v8, "To"

    const-string v7, "CC"

    const-string v6, "BCC"

    .line 252
    const/4 v2, 0x4

    .line 253
    .local v2, TO_LENGTH:I
    const/4 v1, 0x4

    .line 254
    .local v1, CC_LENGTH:I
    const/4 v0, 0x5

    .line 255
    .local v0, BCC_LENGTH:I
    sget-object v3, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v3, :cond_2

    .line 256
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 257
    :cond_0
    const-string v3, "To"

    invoke-virtual {p0, v8}, Lcom/android/email/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 258
    iput-object v4, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    .line 282
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v3, "To"

    invoke-static {p2}, Lcom/android/email/mail/Address;->toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-object p2, p0, Lcom/android/email/mail/internet/MimeMessage;->mTo:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 263
    :cond_2
    sget-object v3, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v3, :cond_5

    .line 264
    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    .line 265
    :cond_3
    const-string v3, "CC"

    invoke-virtual {p0, v7}, Lcom/android/email/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 266
    iput-object v4, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 268
    :cond_4
    const-string v3, "CC"

    invoke-static {p2}, Lcom/android/email/mail/Address;->toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object p2, p0, Lcom/android/email/mail/internet/MimeMessage;->mCc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 271
    :cond_5
    sget-object v3, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    if-ne p1, v3, :cond_8

    .line 272
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 273
    :cond_6
    const-string v3, "BCC"

    invoke-virtual {p0, v6}, Lcom/android/email/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 274
    iput-object v4, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 276
    :cond_7
    const-string v3, "BCC"

    invoke-static {p2}, Lcom/android/email/mail/Address;->toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object p2, p0, Lcom/android/email/mail/internet/MimeMessage;->mBcc:[Lcom/android/email/mail/Address;

    goto :goto_0

    .line 280
    :cond_8
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/android/email/mail/Address;)V
    .locals 4
    .parameter "replyTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v3, "Reply-to"

    .line 327
    const/16 v0, 0xa

    .line 328
    .local v0, REPLY_TO_LENGTH:I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    const-string v1, "Reply-to"

    invoke-virtual {p0, v3}, Lcom/android/email/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v1, "Reply-to"

    invoke-static {p1}, Lcom/android/email/mail/Address;->toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMessage;->mReplyTo:[Lcom/android/email/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .parameter "sentDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "Date"

    sget-object v1, Lcom/android/email/mail/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 188
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 292
    const/16 v0, 0x9

    .line 293
    .local v0, HEADER_NAME_LENGTH:I
    const-string v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/android/email/mail/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/email/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 3
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 503
    .local v0, writer:Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/email/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 507
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 509
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/mail/Body;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    .line 512
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 488
    .local v0, writer:Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;->getMimeHeaders()Lcom/android/email/mail/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 492
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 494
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage;->mBody:Lcom/android/email/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/email/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 497
    :cond_0
    return-void
.end method
