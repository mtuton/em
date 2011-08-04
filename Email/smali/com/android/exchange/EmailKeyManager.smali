.class public Lcom/android/exchange/EmailKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "EmailKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EmailKeyManager$EmailKeyStore;
    }
.end annotation


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEntry:Ljava/security/KeyStore$PrivateKeyEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mAlias:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 98
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 9
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    const-string v5, "emailcert"

    const-string v5, "emailalias"

    const-string v8, "EmailKeyManager"

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->getAccountId(J)J

    move-result-wide v0

    .line 43
    .local v0, accid:J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".p12"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 49
    .local v3, fin:Ljava/io/FileInputStream;
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 51
    .local v4, keystore:Ljava/security/KeyStore;
    const-string v5, "emailcert"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 55
    const-string v5, "emailalias"

    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    const-string v7, "emailcert"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$PrivateKeyEntry;

    iput-object v5, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 57
    const-string v5, "emailalias"

    iput-object v5, p0, Lcom/android/exchange/EmailKeyManager;->mAlias:Ljava/lang/String;

    .line 58
    const-string v5, "EmailKeyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found Certificate for account id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v4           #keystore:Ljava/security/KeyStore;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/exchange/EmailKeyManager;->mAlias:Ljava/lang/String;

    return-object v5

    .line 59
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 60
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "EmailKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Certificate found for account id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "alias"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    move-object v0, p0

    .line 76
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 3
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EmailKeyManager;->mAlias:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "alias"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/exchange/EmailKeyManager;->mEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
