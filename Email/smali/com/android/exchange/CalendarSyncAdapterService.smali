.class public Lcom/android/exchange/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
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
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6
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
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean p5, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 107
    .local p5, logging:Z
    const-string p0, "upload"

    .end local p0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 108
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p3, "_id"

    .end local p3
    aput-object p3, v2, p0

    const-string v3, "_sync_dirty=1 AND _sync_account=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p3, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 111
    .local p0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_1

    .line 112
    if-eqz p5, :cond_0

    .line 113
    const-string p2, "EAS CalendarSyncAdapterService"

    .end local p2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No changes for "

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p0           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 118
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1
    .restart local p2
    .restart local p4
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 123
    .end local p0           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p3, v4, p0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 129
    .local p0, accountCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 130
    const/4 p3, 0x0

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 133
    .end local p4
    .local p3, accountId:J
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 134
    .local v1, syncInterval:J
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 135
    .end local v1           #syncInterval:J
    const-string v1, "force"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ignore_settings"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .end local p2
    if-nez p2, :cond_4

    .line 137
    if-eqz p5, :cond_3

    .line 138
    const-string p2, "EAS CalendarSyncAdapterService"

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

    const-string p3, " is in manual mode, not performing Calendar sync"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p3       #accountId:J
    :cond_4
    :try_start_2
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=65"

    const/4 p2, 0x1

    new-array v4, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #accountId:J
    aput-object p3, v4, p2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p2

    .line 149
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 150
    if-eqz p5, :cond_5

    .line 151
    const-string p3, "EAS CalendarSyncAdapterService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upload sync requested for "

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_5
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object p4

    .line 155
    .local p4, syncKey:Ljava/lang/String;
    const/4 p1, -0x2

    .line 157
    .local p1, mSyncInterval:I
    const/4 p3, 0x2

    :try_start_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    move-result p1

    .line 162
    :goto_2
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performSync() for Calendar: mSyncInterval :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 163
    const/4 p3, -0x1

    if-eq p1, p3, :cond_6

    if-eqz p4, :cond_7

    const-string p3, "0"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    :cond_6
    const/4 p3, -0x1

    if-ne p1, p3, :cond_9

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    .end local p1           #mSyncInterval:I
    move-result-wide p3

    invoke-static {p3, p4}, Lcom/android/exchange/SyncManager;->checkServiceExist(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 166
    :cond_7
    if-eqz p5, :cond_8

    .line 167
    const-string p1, "EAS CalendarSyncAdapterService"

    const-string p3, "Can\'t sync; mailbox in initial state, or manual sync already active"

    invoke-static {p1, p3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 177
    :cond_8
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 181
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    .end local p4           #syncKey:Ljava/lang/String;
    :catchall_1
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 159
    .restart local p1       #mSyncInterval:I
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    .restart local p4       #syncKey:Ljava/lang/String;
    :catch_0
    move-exception p3

    .line 160
    .local p3, ne:Ljava/lang/NullPointerException;
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 177
    .end local p1           #mSyncInterval:I
    .end local p3           #ne:Ljava/lang/NullPointerException;
    .end local p4           #syncKey:Ljava/lang/String;
    :catchall_2
    move-exception p1

    :try_start_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 173
    .restart local p4       #syncKey:Ljava/lang/String;
    :cond_9
    const/4 p1, 0x0

    :try_start_9
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const/4 p1, 0x0

    invoke-static {p3, p4, p1}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 177
    .end local p4           #syncKey:Ljava/lang/String;
    :cond_a
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 93
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 84
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
