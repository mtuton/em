.class public Lcom/android/exchange/EmailSyncAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailSyncAlarmReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final MAILBOX_DATA_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "EmailSyncAlarm"

    sput-object v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V

    return-void
.end method

.method private handleReceive(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 63
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v10, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 68
    .local v11, messageCount:I
    invoke-static {}, Lcom/android/exchange/SyncManager;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, selector:Ljava/lang/String;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    add-int/lit8 v11, v11, 0x1

    .line 77
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 78
    .local v8, mailboxId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v8           #mailboxId:J
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    add-int/lit8 v11, v11, 0x1

    .line 93
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 94
    .restart local v8       #mailboxId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 99
    .end local v8           #mailboxId:J
    :catchall_1
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 104
    .local v8, mailboxId:Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v12}, Lcom/android/exchange/SyncManager;->serviceRequest(JI)V

    goto :goto_2

    .line 106
    .end local v8           #mailboxId:Ljava/lang/Long;
    :cond_4
    sget-object v1, Lcom/android/exchange/EmailSyncAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changed/Deleted messages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mailboxes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    sget-object v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/EmailSyncAlarmReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver$1;-><init>(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method
