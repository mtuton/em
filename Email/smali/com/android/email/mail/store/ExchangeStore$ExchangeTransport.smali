.class public Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
.super Ljava/lang/Object;
.source "ExchangeStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ExchangeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeTransport"
.end annotation


# static fields
.field private static sUriToInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDomain:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Landroid/content/Context;)V
    .locals 0
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->setUri(Ljava/net/URI;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/net/URI;Landroid/content/Context;)Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    .locals 5
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 190
    const-class v2, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas+ssl+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eas+ssl+trustallcerts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Invalid scheme"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 195
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, key:Ljava/lang/String;
    sget-object v3, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .line 197
    .local v1, transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    if-nez v1, :cond_1

    .line 198
    new-instance v1, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .end local v1           #transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    invoke-direct {v1, p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;-><init>(Ljava/net/URI;Landroid/content/Context;)V

    .line 199
    .restart local v1       #transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    sget-object v3, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_1
    monitor-exit v2

    return-object v1
.end method

.method private setUri(Ljava/net/URI;)V
    .locals 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 218
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 220
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "host not specified"

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    .line 224
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, userInfo:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 230
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "user information not specifed"

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_2
    const-string v2, ":"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, uinfo:[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v4, :cond_3

    .line 234
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "user name and password not specified"

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mUsername:Ljava/lang/String;

    .line 237
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mPassword:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public checkSettings(Ljava/net/URI;)V
    .locals 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const v11, 0x40001

    .line 246
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->setUri(Ljava/net/URI;)V

    .line 247
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+ssl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 248
    .local v7, ssl:Z
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+trustallcerts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 250
    .local v8, tssl:Z
    if-eqz v7, :cond_1

    const/16 v2, 0x1bb

    move v6, v2

    .line 252
    .local v6, port:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    .line 255
    .local v1, svc:Lcom/android/email/service/IEmailService;
    instance-of v2, v1, Lcom/android/email/service/EmailServiceProxy;

    if-eqz v2, :cond_0

    .line 256
    move-object v0, v1

    check-cast v0, Lcom/android/email/service/EmailServiceProxy;

    move-object v2, v0

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/android/email/service/EmailServiceProxy;->setTimeout(I)Lcom/android/email/service/EmailServiceProxy;

    .line 258
    :cond_0
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mPassword:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/android/email/service/IEmailService;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v10

    .line 259
    .local v10, result:I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_4

    .line 260
    const/4 v2, 0x5

    if-ne v10, v2, :cond_2

    .line 261
    new-instance v2, Lcom/android/email/mail/AuthenticationFailedException;

    const-string v3, "Authentication failed."

    invoke-direct {v2, v3}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1           #svc:Lcom/android/email/service/IEmailService;
    .end local v10           #result:I
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 275
    .local v9, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "Call to validate generated an exception"

    invoke-direct {v2, v3, v9}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v6           #port:I
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v2, 0x50

    move v6, v2

    goto :goto_0

    .line 264
    .restart local v1       #svc:Lcom/android/email/service/IEmailService;
    .restart local v6       #port:I
    .restart local v10       #result:I
    :cond_2
    if-ne v10, v11, :cond_3

    .line 266
    :try_start_1
    const-string v2, "ExchangeStore"

    const-string v3, "ExchangeStore::checkSetting - caught exception to Block device "

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Lcom/android/email/mail/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f0802cb

    invoke-direct {v2, v3, v4}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v2

    .line 271
    :cond_3
    new-instance v2, Lcom/android/email/mail/MessagingException;

    invoke-direct {v2, v10}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_4
    return-void
.end method
