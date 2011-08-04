.class public Lcom/android/exchange/NotesSyncAdapterService;
.super Landroid/app/Service;
.source "NotesSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/NotesSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
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
    .line 43
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/NotesSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

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
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 p0, 0x0

    .line 106
    .local p0, accountCursorNotes:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x2

    new-array v2, p3, [Ljava/lang/String;

    .end local p3
    const/4 p3, 0x0

    const-string p4, "_id"

    .end local p4
    aput-object p4, v2, p3

    const/4 p3, 0x1

    const-string p4, "mailBoxId"

    aput-object p4, v2, p3

    const-string v3, "emailAddress=?"

    const/4 p3, 0x1

    new-array v4, p3, [Ljava/lang/String;

    const/4 p3, 0x0

    iget-object p4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p4, v4, p3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object p3

    .line 110
    .end local p0           #accountCursorNotes:Landroid/database/Cursor;
    .local p3, accountCursorNotes:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    .line 111
    .end local p5
    .local p0, nextMailbox:Z
    :goto_0
    if-eqz p0, :cond_12

    .line 113
    const/4 p0, 0x0

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getLong(I)J

    .end local p0           #nextMailbox:Z
    move-result-wide p4

    .line 114
    .local p4, accountId:J
    const/4 p0, 0x1

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 116
    .local v6, mailboxId:J
    sget-object p0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, uri:Landroid/net/Uri;
    const/4 p0, 0x0

    .line 119
    .local p0, accountCursor:Landroid/database/Cursor;
    sget-object v2, Lcom/android/email/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    .line 121
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .end local v1           #uri:Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 122
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 123
    .local v1, syncInterval:J
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 124
    .end local v1           #syncInterval:J
    const-string v1, "force"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ignore_settings"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 126
    sget-boolean p2, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local p2
    if-eqz p2, :cond_0

    .line 127
    const-string p2, "NotesSyncAdapterService"

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #accountId:J
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Account "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " is in manual mode, not performing notes sync"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_0
    if-eqz p0, :cond_c

    const/4 p1, 0x1

    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x1

    :goto_2
    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 135
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :cond_1
    if-eqz p3, :cond_e

    const/4 p0, 0x1

    .end local p0           #accountCursor:Landroid/database/Cursor;
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    :goto_4
    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    .line 147
    .end local v6           #mailboxId:J
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_2
    return-void

    .line 134
    .restart local v6       #mailboxId:J
    .restart local p0       #accountCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_a

    const/4 p2, 0x1

    :goto_6
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p4

    if-nez p4, :cond_b

    const/4 p4, 0x1

    :goto_7
    and-int/2addr p2, p4

    if-eqz p2, :cond_3

    .line 135
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .end local v6           #mailboxId:J
    .end local p0           #accountCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p3

    .end local p3           #accountCursorNotes:Landroid/database/Cursor;
    .local p0, accountCursorNotes:Landroid/database/Cursor;
    :goto_8
    if-eqz p0, :cond_8

    const/4 p2, 0x1

    :goto_9
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p3

    if-nez p3, :cond_9

    const/4 p3, 0x1

    :goto_a
    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    .line 147
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_4
    throw p1

    .line 134
    .restart local v6       #mailboxId:J
    .local p0, accountCursor:Landroid/database/Cursor;
    .restart local p1
    .restart local p2
    .restart local p3       #accountCursorNotes:Landroid/database/Cursor;
    .restart local p4       #accountId:J
    :cond_5
    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :goto_b
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_c
    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 135
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_6
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_7

    .line 140
    const-string v1, "Notes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotesSyncAdapterService -  Account ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #accountId:J
    const-string p5, " MailboxId : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_7
    const/4 p4, 0x0

    invoke-static {v6, v7, p4}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    .line 143
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p0

    .line 144
    .local p0, nextMailbox:Z
    goto/16 :goto_0

    .line 146
    .end local v6           #mailboxId:J
    .end local p1
    .end local p2
    .end local p3           #accountCursorNotes:Landroid/database/Cursor;
    .local p0, accountCursorNotes:Landroid/database/Cursor;
    :cond_8
    const/4 p2, 0x0

    goto :goto_9

    :cond_9
    const/4 p3, 0x0

    goto :goto_a

    .line 134
    .restart local v6       #mailboxId:J
    .local p0, accountCursor:Landroid/database/Cursor;
    .restart local p3       #accountCursorNotes:Landroid/database/Cursor;
    :cond_a
    const/4 p2, 0x0

    goto :goto_6

    :cond_b
    const/4 p4, 0x0

    goto :goto_7

    :cond_c
    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 p2, 0x0

    goto/16 :goto_2

    .line 146
    :cond_e
    const/4 p0, 0x0

    goto/16 :goto_3

    .end local p0           #accountCursor:Landroid/database/Cursor;
    :cond_f
    const/4 p1, 0x0

    goto :goto_4

    .line 134
    .restart local p0       #accountCursor:Landroid/database/Cursor;
    .restart local p1
    .restart local p2
    .restart local p4       #accountId:J
    :cond_10
    const/4 v1, 0x0

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 146
    .end local v6           #mailboxId:J
    .end local p4           #accountId:J
    .local p0, nextMailbox:Z
    :cond_12
    if-eqz p3, :cond_13

    const/4 p0, 0x1

    .end local p0           #nextMailbox:Z
    :goto_d
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    .end local p1
    if-nez p1, :cond_14

    const/4 p1, 0x1

    :goto_e
    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto/16 :goto_5

    .restart local p0       #nextMailbox:Z
    .restart local p1
    :cond_13
    const/4 p0, 0x0

    goto :goto_d

    .end local p0           #nextMailbox:Z
    .end local p1
    :cond_14
    const/4 p1, 0x0

    goto :goto_e

    .end local p3           #accountCursorNotes:Landroid/database/Cursor;
    .local p0, accountCursorNotes:Landroid/database/Cursor;
    .restart local p1
    .restart local p5
    :catchall_2
    move-exception p1

    goto :goto_8
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 87
    sget-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    sget-object v0, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/NotesSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/NotesSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/NotesSyncAdapterService$SyncAdapterImpl;

    .line 82
    :cond_0
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
