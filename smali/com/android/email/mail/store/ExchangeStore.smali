.class public Lcom/android/email/mail/store/ExchangeStore;
.super Lcom/android/email/mail/Store;
.source "ExchangeStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ExchangeStore"


# instance fields
.field private final mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

.field private mUri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V
    .locals 3
    .parameter "_uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 72
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-static {v1, p2}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->getInstance(Ljava/net/URI;Landroid/content/Context;)Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Invalid uri for ExchangeStore"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addSystemAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;ZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .parameter "context"
    .parameter "acct"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/email/provider/EmailContent$Account;",
            "ZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 88
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "password"

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    move-object v3, v2

    move-object v5, v2

    move-object v6, p4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/android/email/mail/store/ExchangeStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/mail/store/ExchangeStore;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)V

    return-object v0
.end method

.method public static removeSystemAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 4
    .parameter "context"
    .parameter "acct"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/email/provider/EmailContent$Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 111
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, systemAccount:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/email/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    .line 286
    goto :goto_0
.end method

.method public checkSettings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    iget-object v1, p0, Lcom/android/email/mail/store/ExchangeStore;->mUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->checkSettings(Ljava/net/URI;)V

    .line 83
    return-void
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-super {p0}, Lcom/android/email/mail/Store;->delete()V

    .line 270
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore;->mTransport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    invoke-static {v0}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->access$000(Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://calendar/exch_busybits/clear"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    .locals 1
    .parameter "name"

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalNamespaces()[Lcom/android/email/mail/Folder;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    return-object v0
.end method

.method public requireCopyMessageToSentFolder()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public requireStructurePrefetch()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method
