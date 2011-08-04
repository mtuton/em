.class public Lcom/android/exchange/TasksSyncAdapterService;
.super Landroid/app/Service;
.source "TasksSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
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
    .line 45
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/TasksSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 14
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
    .line 122
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p3
    const-string p4, "Inside TaskSyncADapterService"

    .end local p4
    invoke-virtual/range {p3 .. p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 126
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v6, "emailAddress=?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    move-object v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 p3, v0

    aput-object p3, v7, p0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 131
    .local p3, accountCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 132
    const/4 p0, 0x0

    move-object/from16 v0, p3

    move v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 135
    .end local p5
    .local p4, accountId:J
    const/4 p0, 0x1

    move-object/from16 v0, p3

    move v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 136
    .local p4, syncInterval:J
    const-wide/16 v4, -0x1

    cmp-long p0, p4, v4

    if-nez p0, :cond_1

    .line 137
    const-string p0, "force"

    move-object/from16 v0, p2

    move-object v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ignore_settings"

    move-object/from16 v0, p2

    move-object v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 139
    sget-boolean p0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz p0, :cond_0

    .line 140
    const-string p0, "EAS TasksSyncAdapterService"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Account "

    .end local p4           #syncInterval:J
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p2

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is in manual mode, not performing task sync"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 258
    .end local v3           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 261
    return-void

    .line 154
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .restart local p4       #syncInterval:J
    :cond_1
    const/4 p0, 0x1

    :try_start_1
    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p2, "accountKey"

    .end local p2
    aput-object p2, v5, p0

    .line 155
    .local v5, TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/16 p2, 0x0

    const-string p4, "_id"

    .end local p4           #syncInterval:J
    aput-object p4, p0, p2

    .line 156
    .local p0, MAILBOX_ID_PROJECTION:[Ljava/lang/String;
    const-string p0, "accountKey="

    .line 157
    .local p0, TASK_ACCOUNT_KEY_SELECTION:Ljava/lang/String;
    const-string v6, "_sync_dirty=1"

    .line 158
    .local v6, sync_dirty:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v13, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object p0

    .line 167
    .end local v6           #sync_dirty:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 168
    const/16 p2, 0x0

    move-object v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 174
    .local p4, accountKey:J
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v10, "accountKey=? AND type=67"

    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    .end local p4           #accountKey:J
    aput-object p4, v11, p2

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p2

    .line 177
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 178
    const/16 p4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 180
    .local p4, mailboxId:J
    const-string v4, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The mailbox id for newly inserted tasks to sync is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4           #mailboxId:J
    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 186
    :catchall_0
    move-exception p1

    .end local p1
    :try_start_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v5           #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    .end local v13           #mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local p0           #c:Landroid/database/Cursor;
    :catchall_2
    move-exception p0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw p0

    .line 190
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v5       #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    .restart local v13       #mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p1
    :cond_3
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 195
    sget-object v8, Landroid/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object p0

    .line 199
    :goto_3
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 200
    const/16 p2, 0x0

    move-object v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 201
    .local p4, accountKey:J
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v10, "accountKey=? AND type=67"

    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    .end local p4           #accountKey:J
    aput-object p4, v11, p2

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object p2

    .line 204
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :cond_4
    :goto_4
    :try_start_8
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 205
    const/16 p4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 206
    .local p4, mailboxId:J
    const-string v4, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The mailbox id for newly deleted tasks to sync is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 208
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4           #mailboxId:J
    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 212
    :catchall_3
    move-exception p1

    .end local p1
    :try_start_9
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 216
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_4
    move-exception p1

    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 222
    sget-object v8, Landroid/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object p0

    .line 226
    .end local v5           #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    :goto_5
    :try_start_b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 227
    const/16 p2, 0x0

    move-object v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 228
    .local p4, accountKey:J
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v10, "accountKey=? AND type=67"

    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    .end local p4           #accountKey:J
    aput-object p4, v11, p2

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-result-object p2

    .line 231
    .restart local p2       #mailboxCursor:Landroid/database/Cursor;
    :cond_6
    :goto_6
    :try_start_c
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 232
    const/16 p4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p4

    .line 233
    .local p4, mailboxId:J
    const-string v4, "EAS TasksSyncAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " The mailbox id for newly updated tasks to sync is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 235
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4           #mailboxId:J
    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    .line 239
    :catchall_5
    move-exception p1

    .end local p1
    :try_start_d
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 243
    .end local p2           #mailboxCursor:Landroid/database/Cursor;
    :catchall_6
    move-exception p1

    :try_start_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local v3           #cr:Landroid/content/ContentResolver;
    .local p0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 249
    .local p2, mailboxId:Ljava/lang/Long;
    const-string p4, "EAS TasksSyncAdapterService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tasks sync requested for "

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string p4, "EAS TasksSyncAdapterService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goign to notifify tasks mailboxes "

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    const/16 p2, 0x0

    move-wide/from16 v0, p4

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    goto :goto_7

    .line 253
    .end local p2           #mailboxId:Ljava/lang/Long;
    :cond_8
    const-string p0, "EAS TasksSyncAdapterService"

    .end local p0           #i$:Ljava/util/Iterator;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " Tasks Changed/Deleted messages: , mailboxes: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 186
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v5       #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .restart local p1
    .local p2, mailboxCursor:Landroid/database/Cursor;
    :cond_9
    :try_start_f
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 212
    :cond_a
    :try_start_10
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_3

    .line 239
    .end local v5           #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    :cond_b
    :try_start_11
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 89
    sget-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    sget-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/TasksSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    .line 84
    :cond_0
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
