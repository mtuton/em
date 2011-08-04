.class public Lcom/android/email/mail/transport/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .parameter "handShakeTimeOutInMillies"
    .parameter "insecure"

    .prologue
    .line 41
    const-class v0, Lcom/android/email/mail/transport/SSLUtils;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/email/mail/transport/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/exchange/EmailKeyManager;

    invoke-direct {v3}, Lcom/android/exchange/EmailKeyManager;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/SSLCertificateSocketFactory;->getInsecure([Ljavax/net/ssl/KeyManager;ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/android/email/mail/transport/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 47
    :cond_0
    sget-object v1, Lcom/android/email/mail/transport/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    return-object v1

    .line 49
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/email/mail/transport/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_2

    .line 51
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/exchange/EmailKeyManager;

    invoke-direct {v3}, Lcom/android/exchange/EmailKeyManager;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/SSLCertificateSocketFactory;->getDefault([Ljavax/net/ssl/KeyManager;ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/android/email/mail/transport/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 54
    :cond_2
    sget-object v1, Lcom/android/email/mail/transport/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
