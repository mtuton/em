.class public Lcom/android/email/mail/internet/MimeBodyPart;
.super Lcom/android/email/mail/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/android/email/mail/Body;

.field protected mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

.field protected mHeader:Lcom/android/email/mail/internet/MimeHeader;

.field protected mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/email/mail/Body;)V
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V
    .locals 1
    .parameter "body"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/mail/BodyPart;-><init>()V

    .line 34
    new-instance v0, Lcom/android/email/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/internet/MimeBodyPart;->setBody(Lcom/android/email/mail/Body;)V

    .line 57
    return-void
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
    .line 64
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
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
    .line 80
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

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
    .line 120
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/email/mail/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

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
    .line 102
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const-string v1, "text/plain"

    .line 106
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
    .line 111
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 115
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
    .line 174
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 60
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 72
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

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
    .line 130
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mSize:I

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 76
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setBody(Lcom/android/email/mail/Body;)V
    .locals 10
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Content-Type"

    .line 84
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    .line 85
    instance-of v4, p1, Lcom/android/email/mail/Multipart;

    if-eqz v4, :cond_1

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/Multipart;

    move-object v2, v0

    .line 87
    .local v2, multipart:Lcom/android/email/mail/Multipart;
    invoke-virtual {v2, p0}, Lcom/android/email/mail/Multipart;->setParent(Lcom/android/email/mail/Part;)V

    .line 88
    const-string v4, "Content-Type"

    invoke-virtual {v2}, Lcom/android/email/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v2           #multipart:Lcom/android/email/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    instance-of v4, p1, Lcom/android/email/mail/internet/TextBody;

    if-eqz v4, :cond_0

    .line 91
    const-string v4, "%s;\n charset=utf-8"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n name=\"%s\""

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_2
    const-string v4, "Content-Type"

    invoke-virtual {p0, v9, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v4, "Content-Transfer-Encoding"

    const-string v5, "base64"

    invoke-virtual {p0, v4, v5}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 154
    if-nez p2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/android/email/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mExtendedHeader:Lcom/android/email/mail/internet/MimeHeader;

    sget-object v1, Lcom/android/email/mail/internet/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 68
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mSize:I

    .line 139
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
    .line 184
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 185
    .local v0, writer:Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/android/email/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 186
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 188
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/email/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 191
    :cond_0
    return-void
.end method
