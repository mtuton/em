.class public Lcom/android/email/mail/transport/SmtpSender;
.super Lcom/android/email/mail/Sender;
.source "SmtpSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmtpSender >>"


# instance fields
.field mContext:Landroid/content/Context;

.field mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/email/mail/Transport;

.field mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 68
    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 72
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "smtp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 79
    :cond_0
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 73
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 74
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Invalid SmtpTransport URI"

    invoke-direct {v7, v8, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 82
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 83
    .local v0, connectionSecurity:I
    const/16 v1, 0x24b

    .line 85
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const/4 v0, 0x1

    .line 87
    const/16 v1, 0x1d1

    .line 91
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 93
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "SMTP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 94
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 95
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 97
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 99
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    .line 100
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 101
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    .line 104
    :cond_3
    return-void

    .line 88
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_4
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, line:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, result:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 282
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 288
    .local v0, c:C
    const/16 v3, 0x34

    if-eq v0, v3, :cond_2

    const/16 v3, 0x35

    if-ne v0, v3, :cond_3

    .line 289
    :cond_2
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/email/mail/transport/SmtpSender;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Lcom/android/email/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 317
    :try_start_0
    const-string v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/username redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/password redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 327
    new-instance v1, Lcom/android/email/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    throw v0
.end method

.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Lcom/android/email/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "\u0000"

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 336
    .local v0, data:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 338
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH PLAIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTH PLAIN /redacted/"

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-void

    .line 340
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 341
    .local v1, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 342
    new-instance v2, Lcom/android/email/mail/AuthenticationFailedException;

    invoke-virtual {v1}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_0
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 247
    return-void
.end method

.method public open()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v7, "EHLO "

    const-string v9, "Email"

    .line 118
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->open()V

    .line 121
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    const-string v5, "localhost"
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    .local v5, localHost:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    .line 126
    .local v4, localAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 133
    .end local v4           #localAddress:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EHLO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, result:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    const-string v7, "-STARTTLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, " STARTTLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    :cond_1
    const-string v7, "STARTTLS"

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EHLO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    :cond_2
    const-string v7, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 164
    .local v0, authLoginSupported:Z
    const-string v7, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 166
    .local v1, authPlainSupported:Z
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 168
    if-eqz v1, :cond_8

    .line 169
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_3
    :goto_1
    return-void

    .line 127
    .end local v0           #authLoginSupported:Z
    .end local v1           #authPlainSupported:Z
    .end local v6           #result:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 128
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 129
    const-string v7, "Email"

    const-string v8, "Unable to look up localhost"

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 181
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #localHost:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 182
    .local v2, e:Ljavax/net/ssl/SSLException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 183
    const-string v7, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_4
    new-instance v7, Lcom/android/email/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/android/email/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 153
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_5
    :try_start_3
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 154
    const-string v7, "Email"

    const-string v8, "TLS not supported but required"

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_6
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v7
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    .end local v5           #localHost:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 187
    .local v3, ioe:Ljava/io/IOException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 188
    const-string v7, "Email"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_7
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 171
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #authLoginSupported:Z
    .restart local v1       #authPlainSupported:Z
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_9

    .line 172
    :try_start_4
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_9
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 176
    const-string v7, "Email"

    const-string v8, "No valid authentication mechanism found."

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_a
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v7
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
.end method

.method public sendMessage(J)V
    .locals 22
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->close()V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v19

    .line 200
    .local v19, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v19, :cond_0

    .line 201
    new-instance v3, Lcom/android/email/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to send non-existent message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :cond_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v15

    .line 205
    .local v15, from:Lcom/android/email/mail/Address;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v21

    .line 206
    .local v21, to:[Lcom/android/email/mail/Address;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v14

    .line 207
    .local v14, cc:[Lcom/android/email/mail/Address;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v12

    .line 210
    .local v12, bcc:[Lcom/android/email/mail/Address;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAIL FROM: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-object/from16 v10, v21

    .local v10, arr$:[Lcom/android/email/mail/Address;
    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v16

    .line 213
    .local v9, address:Lcom/android/email/mail/Address;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v20, tbuf:Ljava/lang/StringBuffer;
    const-string v3, "RCPT TO: "

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 216
    .end local v9           #address:Lcom/android/email/mail/Address;
    .end local v20           #tbuf:Ljava/lang/StringBuffer;
    :cond_1
    move-object v10, v14

    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v9, v10, v16

    .line 218
    .restart local v9       #address:Lcom/android/email/mail/Address;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    .local v13, cbuf:Ljava/lang/StringBuffer;
    const-string v3, "RCPT TO: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 221
    .end local v9           #address:Lcom/android/email/mail/Address;
    .end local v13           #cbuf:Ljava/lang/StringBuffer;
    :cond_2
    move-object v10, v12

    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v9, v10, v16

    .line 223
    .restart local v9       #address:Lcom/android/email/mail/Address;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v11, bbuf:Ljava/lang/StringBuffer;
    const-string v3, "RCPT TO: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 226
    .end local v9           #address:Lcom/android/email/mail/Address;
    .end local v11           #bbuf:Ljava/lang/StringBuffer;
    :cond_3
    const-string v3, "DATA"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/email/mail/transport/Rfc822Output;->setIsExchangeAccount(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v6, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 231
    const-string v3, "\r\n."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    const-string v3, "SmtpSender >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open :: smtp Send OK !!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 234
    .end local v10           #arr$:[Lcom/android/email/mail/Address;
    .end local v16           #i$:I
    .end local v18           #len$:I
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 235
    .local v17, ioe:Ljava/lang/Exception;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Unable to send message"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 113
    return-void
.end method
