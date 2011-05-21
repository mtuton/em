.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"

# interfaces
.implements Lcom/android/email/mail/Transport;


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier; = null

.field public static final SOCKET_CONNECT_TIMEOUT:I = 0x2710

.field public static final SOCKET_READ_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "MailTransport"


# instance fields
.field private mConnectionSecurity:I

.field private mDebugLabel:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mTrustCertificates:Z

.field private mUserInfoParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "debugLabel"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 6
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v2, v0

    .line 252
    .local v2, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 254
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 255
    .local v1, session:Ljavax/net/ssl/SSLSession;
    if-nez v1, :cond_0

    .line 256
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Cannot verify SSL socket without session"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    sget-object v3, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v3, p2, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate hostname not useable for server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return v0
.end method

.method public canTrySslSecurity()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 292
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 302
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 303
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 304
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    goto :goto_1

    .line 288
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    return v0
.end method

.method public getUserInfoParts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstanceWithConfiguration()Lcom/android/email/mail/Transport;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, newObject:Lcom/android/email/mail/transport/MailTransport;
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 91
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 92
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 95
    :cond_0
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 96
    iget-boolean v1, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    iput-boolean v1, v0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 97
    return-object v0
.end method

.method public open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Lcom/android/email/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string v7, "Email"

    .line 152
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 153
    const-string v4, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 159
    .local v2, socketAddress:Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const/16 v4, 0x2710

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 166
    :goto_0
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v5, 0x2710

    invoke-virtual {v4, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 171
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 172
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 173
    const-string v4, "MailTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open :: socket open"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logs(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 164
    :cond_2
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 175
    .end local v2           #socketAddress:Ljava/net/SocketAddress;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 176
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 177
    const-string v4, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_3
    new-instance v4, Lcom/android/email/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/email/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 180
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 181
    .local v3, toe:Ljava/net/SocketTimeoutException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 182
    const-string v4, "Email"

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    new-instance v4, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 185
    .end local v3           #toe:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 186
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 187
    const-string v4, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_5
    new-instance v4, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const-string v7, "Email"

    .line 338
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 341
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 342
    const/4 v4, 0x0

    .line 364
    :goto_0
    return-object v4

    .line 346
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v6, :cond_1

    .line 347
    int-to-char v4, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 349
    int-to-char v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 355
    :cond_1
    if-ne v0, v6, :cond_2

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 356
    const-string v4, "Email"

    const-string v4, "End of stream reached while trying to read line."

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, ret:Ljava/lang/String;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 361
    const-string v4, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v4, v2

    .line 364
    goto :goto_0

    .line 352
    .end local v2           #ret:Ljava/lang/String;
    :cond_4
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public reopenTls()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string v9, "Email"

    .line 206
    const/16 v3, 0x2710

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 208
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 210
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    return-void

    .line 212
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 213
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 214
    const-string v3, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    new-instance v3, Lcom/android/email/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/email/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 218
    .local v2, toe:Ljava/net/SocketTimeoutException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "Email"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 222
    .end local v2           #toe:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 223
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 224
    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public setSecurity(IZ)V
    .locals 0
    .parameter "connectionSecurity"
    .parameter "trustAllCertificates"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 128
    iput-boolean p2, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 129
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 275
    return-void
.end method

.method public setUri(Ljava/net/URI;I)V
    .locals 3
    .parameter "uri"
    .parameter "defaultPort"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 104
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 112
    :cond_1
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "Email"

    const-string v3, ">>> "

    .line 318
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 319
    if-eqz p2, :cond_1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_1

    .line 320
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 327
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 328
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 329
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 330
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 331
    return-void

    .line 322
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_1
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
