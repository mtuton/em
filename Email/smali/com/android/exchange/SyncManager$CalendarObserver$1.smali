.class Lcom/android/exchange/SyncManager$CalendarObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/SyncManager$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/SyncManager$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager$CalendarObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sync_events"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-wide v6, v6, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1096
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1099
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1101
    .local v11, newSyncEvents:J
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mSyncEvents:J

    cmp-long v0, v11, v0

    if-eqz v0, :cond_1

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_sync_events changed for calendar in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1103
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-wide v1, v1, Lcom/android/exchange/SyncManager$CalendarObserver;->mAccountId:J

    const/16 v3, 0x41

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1106
    .local v10, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v10, :cond_2

    .line 1150
    .end local v10           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v11           #newSyncEvents:J
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1107
    .restart local v10       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v11       #newSyncEvents:J
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-nez v0, :cond_3

    .line 1110
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting events and setting syncKey to 0 for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/android/exchange/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1113
    iget-wide v0, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->access$300(J)V

    .line 1115
    new-instance v13, Lcom/android/exchange/EasSyncService;

    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-direct {v13, v0, v10}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 1117
    .local v13, service:Lcom/android/exchange/EasSyncService;
    new-instance v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v6, v10, v13}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    .local v6, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    :try_start_2
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1125
    :goto_2
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "syncKey"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1131
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 1136
    .local v9, eventsAsSyncAdapter:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "calendar_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-wide v4, v4, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1146
    .end local v6           #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #eventsAsSyncAdapter:Landroid/net/Uri;
    .end local v13           #service:Lcom/android/exchange/EasSyncService;
    :goto_3
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iput-wide v11, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mSyncEvents:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1150
    .end local v10           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v11           #newSyncEvents:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1141
    .restart local v10       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v11       #newSyncEvents:J
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->this$0:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager$CalendarObserver$1;->this$1:Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-wide v1, v1, Lcom/android/exchange/SyncManager$CalendarObserver;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->access$1100(Lcom/android/exchange/SyncManager;J)V

    .line 1142
    const-string v0, "calendar sync changed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1121
    .restart local v6       #adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    .restart local v13       #service:Lcom/android/exchange/EasSyncService;
    :catch_0
    move-exception v0

    goto :goto_2
.end method
