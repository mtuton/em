.class public Lcom/android/email/mail/internet/MimeBodyPart;
.super Lcom/android/email/mail/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/android/email/mail/Body;

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
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeaderAndBody(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private setHeaderAndBody(Lcom/android/email/mail/Body;Ljava/lang/String;)V
    .locals 1
    .parameter "body"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/internet/MimeBodyPart;->setBody(Lcom/android/email/mail/Body;)V

    .line 61
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
    .line 68
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
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
    .line 84
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
    .line 128
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 133
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
    .line 110
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    const-string v1, "text/plain"

    .line 114
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
    .line 119
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

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
    .line 64
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
    .line 76
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
    .line 138
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
    .line 150
    iget v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mSize:I

    return v0
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

    .line 88
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    .line 89
    instance-of v4, p1, Lcom/android/email/mail/Multipart;

    if-eqz v4, :cond_1

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/Multipart;

    move-object v2, v0

    .line 91
    .local v2, multipart:Lcom/android/email/mail/Multipart;
    invoke-virtual {v2, p0}, Lcom/android/email/mail/Multipart;->setParent(Lcom/android/email/mail/Part;)V

    .line 92
    const-string v4, "Content-Type"

    invoke-virtual {v2}, Lcom/android/email/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v2           #multipart:Lcom/android/email/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    instance-of v4, p1, Lcom/android/email/mail/internet/TextBody;

    if-eqz v4, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v1, contentType:Ljava/lang/StringBuffer;
    const-string v4, "%s;\n charset=utf-8"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 101
    const-string v4, ";\n name=\"%s\""

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_2
    const-string v4, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v4, "Content-Transfer-Encoding"

    const-string v5, "base64"

    invoke-virtual {p0, v4, v5}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 72
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mSize:I

    .line 147
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
    .line 192
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 193
    .local v0, writer:Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mHeader:Lcom/android/email/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/android/email/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 194
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 196
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeBodyPart;->mBody:Lcom/android/email/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/email/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 199
    :cond_0
    return-void
.end method
