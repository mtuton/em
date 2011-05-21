.class public abstract Lcom/android/email/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/Store$PersistentDataCallbacks;,
        Lcom/android/email/mail/Store$StoreInfo;
    }
.end annotation


# static fields
.field public static final FETCH_BODY_SANE_SUGGESTED_SIZE:I = 0xc800

.field public static final STORE_SCHEME_EAS:Ljava/lang/String; = "eas"

.field public static final STORE_SCHEME_IMAP:Ljava/lang/String; = "imap"

.field public static final STORE_SCHEME_LOCAL:Ljava/lang/String; = "local"

.field public static final STORE_SCHEME_POP3:Ljava/lang/String; = "pop3"

.field public static final STORE_SECURITY_SSL:Ljava/lang/String; = "+ssl"

.field public static final STORE_SECURITY_TLS:Ljava/lang/String; = "+tls"

.field public static final STORE_SECURITY_TRUST_CERTIFICATES:Ljava/lang/String; = "+trustallcerts"

.field private static mStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/Store;->mStores:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 6
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 205
    const-class v2, Lcom/android/email/mail/Store;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/email/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/Store;

    .line 206
    .local v1, store:Lcom/android/email/mail/Store;
    if-nez v1, :cond_2

    .line 207
    invoke-static {p0, p1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 208
    .local v0, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v0, :cond_0

    .line 209
    iget-object v3, v0, Lcom/android/email/mail/Store$StoreInfo;->mClassName:Ljava/lang/String;

    invoke-static {v3, p0, p1, p2}, Lcom/android/email/mail/Store;->instantiateStore(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 212
    :cond_0
    if-eqz v1, :cond_1

    .line 213
    sget-object v3, Lcom/android/email/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v0           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 221
    new-instance v3, Lcom/android/email/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to locate an applicable Store for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v1           #store:Lcom/android/email/mail/Store;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 217
    .restart local v1       #store:Lcom/android/email/mail/Store;
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/email/mail/Store;->setPersistentDataCallbacks(Lcom/android/email/mail/Store$PersistentDataCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :cond_3
    monitor-exit v2

    return-object v1
.end method

.method private static instantiateStore(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 12
    .parameter "className"
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    const/4 v3, 0x0

    .line 76
    .local v3, o:Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "newInstance"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Lcom/android/email/mail/Store$PersistentDataCallbacks;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 81
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 88
    instance-of v4, v3, Lcom/android/email/mail/Store;

    if-nez v4, :cond_0

    .line 89
    new-instance v4, Lcom/android/email/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create incompatible object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 83
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "exception %s invoking %s.newInstance.(String, Context) method for %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p0, v6, v9

    aput-object p1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v4, Lcom/android/email/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not instantiate Store object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #m:Ljava/lang/reflect/Method;
    :cond_0
    check-cast v3, Lcom/android/email/mail/Store;

    .end local v3           #o:Ljava/lang/Object;
    return-object v3
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 3
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/android/email/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store.newInstance: Unknown scheme in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized removeInstance(Ljava/lang/String;)V
    .locals 2
    .parameter "storeUri"

    .prologue
    .line 235
    const-class v0, Lcom/android/email/mail/Store;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v0

    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "context"
    .parameter "emailAddress"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract checkSettings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public delete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public abstract getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPersonalNamespaces()[Lcom/android/email/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
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
    .line 244
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    return-object v0
.end method

.method public requireCopyMessageToSentFolder()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public requireStructurePrefetch()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method protected setPersistentDataCallbacks(Lcom/android/email/mail/Store$PersistentDataCallbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 297
    return-void
.end method
