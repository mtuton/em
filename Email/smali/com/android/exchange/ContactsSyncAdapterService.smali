.class public Lcom/android/exchange/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, cr:Landroid/content/ContentResolver;
    const-string p0, "EAS ContactsSyncAdapterService"

    .end local p0
    const-string p3, "performSync"

    .end local p3
    invoke-static {p0, p3}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string p0, "upload"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 100
    sget-object p0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p3, "account_name"

    iget-object p4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p3, "account_type"

    const-string p4, "com.android.exchange"

    invoke-virtual {p0, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, uri:Landroid/net/Uri;
    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p3, "_id"

    aput-object p3, v2, p0

    const-string v3, "dirty=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 107
    .local p0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_0

    .line 108
    const-string p1, "EAS ContactsSyncAdapterService"

    .end local p1
    const-string p2, "Upload sync; no changes"

    .end local p2
    invoke-static {p1, p2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v1           #uri:Landroid/net/Uri;
    .end local p0           #c:Landroid/database/Cursor;
    .end local p5
    :goto_0
    return-void

    .line 112
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p5
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1
    .restart local p2
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v1           #uri:Landroid/net/Uri;
    .end local p0           #c:Landroid/database/Cursor;
    :cond_1
    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v5, "emailAddress=?"

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p3, v6, p0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 121
    .local p0, accountCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 122
    const/4 p3, 0x0

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 125
    .local p3, accountId:J
    const/4 p5, 0x1

    invoke-interface {p0, p5}, Landroid/database/Cursor;->getLong(I)J

    .end local p5
    move-result-wide v1

    .line 126
    .local v1, syncInterval:J
    const-wide/16 v3, -0x1

    cmp-long p5, v1, v3

    if-nez p5, :cond_3

    .line 127
    const-string p5, "force"

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_3

    const-string p5, "ignore_settings"

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .end local p2
    if-nez p2, :cond_3

    .line 129
    sget-boolean p2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz p2, :cond_2

    .line 130
    const-string p2, "EAS ContactsSyncAdapterService"

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3           #accountId:J
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Account "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is in manual mode, not performing Contact sync"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .end local v1           #syncInterval:J
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    .restart local v1       #syncInterval:J
    .restart local p1
    .restart local p3       #accountId:J
    :cond_3
    :try_start_2
    sget-object v3, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? AND type=66"

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #accountId:J
    aput-object p3, v6, p2

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p2

    .line 141
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 142
    const-string p3, "EAS ContactsSyncAdapterService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Contact sync requested for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const/4 p1, 0x0

    invoke-static {p3, p4, p1}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    :cond_4
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 152
    .end local v1           #syncInterval:J
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 148
    .restart local v1       #syncInterval:J
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception p1

    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 85
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
