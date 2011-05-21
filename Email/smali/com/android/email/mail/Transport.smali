.class public interface abstract Lcom/android/email/mail/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final CONNECTION_SECURITY_NONE:I = 0x0

.field public static final CONNECTION_SECURITY_SSL:I = 0x1

.field public static final CONNECTION_SECURITY_TLS:I = 0x2


# virtual methods
.method public abstract canTrustAllCertificates()Z
.end method

.method public abstract canTrySslSecurity()Z
.end method

.method public abstract canTryTlsSecurity()Z
.end method

.method public abstract close()V
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getPort()I
.end method

.method public abstract getSecurity()I
.end method

.method public abstract getUserInfoParts()[Ljava/lang/String;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract newInstanceWithConfiguration()Lcom/android/email/mail/Transport;
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Lcom/android/email/mail/CertificateValidationException;
        }
    .end annotation
.end method

.method public abstract readLine()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reopenTls()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSecurity(IZ)V
.end method

.method public abstract setSoTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public abstract setUri(Ljava/net/URI;I)V
.end method

.method public abstract writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
