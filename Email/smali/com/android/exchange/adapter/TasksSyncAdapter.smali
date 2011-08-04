.class public Lcom/android/exchange/adapter/TasksSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/TasksSyncAdapter$1;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

.field private static final TASKS_SYNC_STATE_URI:Landroid/net/Uri;

.field static count:I


# instance fields
.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailAddress:Ljava/lang/String;

.field mInsertedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksAccountId:J

.field private mTasksAccountIdArgument:[Ljava/lang/String;

.field private mTasksAccountIdString:Ljava/lang/String;

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 109
    sput v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->count:I

    .line 672
    const-string v0, "content://syncstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "state"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->TASKS_SYNC_STATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 8
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Task SyncAdapter for MailBOx Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Tasks$TasksAccounts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_sync_account_key"

    aput-object v3, v2, v7

    const-string v3, "_sync_account=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 137
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 130
    :goto_1
    iget-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdArgument:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    const-string v0, "ExchTasksSyncAdapter"

    const-string v1, "Created "

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->createTasksAccount(Lcom/android/exchange/EasSyncService;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createTasksAccount(Lcom/android/exchange/EasSyncService;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)J
    .locals 7
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x1

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "_sync_account"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "_sync_account_key"

    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v3, "_sync_account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "selected"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Tasks$TasksAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, stringId:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 154
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 156
    .end local v1           #stringId:Ljava/lang/String;
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private getClientId(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .parameter "column_name"

    .prologue
    .line 393
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, column_idx:I
    const/4 v1, 0x0

    .line 396
    .local v1, tasks_client_id:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_0
    return-object v1
.end method

.method private sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .locals 5
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, " tasks"

    .line 310
    const-string v0, "The sending task data  "

    const-string v1, " tasks"

    invoke-static {v0, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_base_body(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 321
    :cond_0
    const-string v0, "The sending task categories  "

    const-string v1, " tasks"

    invoke-static {v0, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_categories(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 324
    const-string v0, "subject"

    const/16 v1, 0x260

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 325
    const-string v0, "importance"

    const/16 v1, 0x24e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 326
    const-string v0, "utc_due_date"

    const/16 v1, 0x24d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 327
    const-string v0, "utc_start_date"

    const/16 v1, 0x25f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 328
    const-string v0, "start_date"

    const/16 v1, 0x25e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 329
    const-string v0, "complete"

    const/16 v1, 0x24a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 330
    const-string v0, "date_completed"

    const/16 v1, 0x24b

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 331
    const-string v0, "sensitivity"

    const/16 v1, 0x25d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 332
    const-string v0, "reminder_set"

    const/16 v1, 0x25b

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 335
    const-string v0, "reminder_time"

    const/16 v1, 0x25c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 336
    const-string v0, "due_date"

    const/16 v1, 0x24c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_recurrence(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 339
    return-void
.end method

.method private send_tasks_base_body(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .locals 6
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "body_size"

    .line 245
    const-string v1, "body_size"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, column_idx:I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 250
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 251
    const-string v1, "bodyType"

    const/16 v2, 0x446

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 252
    const-string v1, "body_size"

    const/16 v1, 0x44c

    invoke-direct {p0, p1, p2, v5, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 253
    const-string v1, "body_truncated"

    const/16 v2, 0x44d

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 258
    const-string v1, "body"

    const/16 v2, 0x44b

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 259
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 261
    :cond_0
    return-void
.end method

.method private send_tasks_categories(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .locals 2
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x249

    .line 264
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->tasks_has_category(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/16 v0, 0x248

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 267
    const-string v0, "category1"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 268
    const-string v0, "category2"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 269
    const-string v0, "category3"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 270
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 272
    :cond_0
    return-void
.end method

.method private send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 3
    .parameter "s"
    .parameter "c"
    .parameter "column_name"
    .parameter "tag_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, column_idx:I
    const/4 v1, 0x0

    .line 236
    .local v1, tasks_item_value:Ljava/lang/String;
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1, p4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 241
    :cond_0
    return-void
.end method

.method private send_tasks_recurrence(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .locals 3
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "recurrence_type"

    .line 275
    const-string v0, "recurrence_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 278
    :cond_0
    const/16 v0, 0x24f

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 280
    const-string v0, "recurrence_regenerate"

    const/16 v1, 0x259

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 281
    const-string v0, "recurrence_dead_occur"

    const/16 v1, 0x25a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 282
    const-string v0, "recurrence_type"

    const/16 v0, 0x250

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 283
    const-string v0, "recurrence_start"

    const/16 v1, 0x251

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 284
    const-string v0, "recurrence_until"

    const/16 v1, 0x252

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 287
    const-string v0, "recurrence_interval"

    const/16 v1, 0x254

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 288
    const-string v0, "recurrence_day_of_month"

    const/16 v1, 0x255

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 289
    const-string v0, "recurrence_day_of_week"

    const/16 v1, 0x256

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 290
    const-string v0, "recurrence_week_of_month"

    const/16 v1, 0x257

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 291
    const-string v0, "recurrence_month_of_year"

    const/16 v1, 0x258

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 292
    const-string v0, "recurrence_occurrences"

    const/16 v1, 0x253

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 4
    .parameter "s"
    .parameter "c"
    .parameter "column_name"
    .parameter "tag_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, column_idx:I
    const-wide/16 v1, 0x0

    .line 302
    .local v1, time_value:J
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 305
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->setTimeInMillis(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 307
    :cond_0
    return-void
.end method

.method private setTimeInMillis(J)Ljava/lang/String;
    .locals 3
    .parameter "millis"

    .prologue
    .line 175
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, calendar:Ljava/util/Calendar;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 180
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private syncDeletedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .locals 9
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 505
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 506
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 508
    .local v6, c:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 511
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    :cond_0
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 518
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Sending Tasks changes to the server"

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2, v8}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 521
    :cond_1
    const-string v1, "sourceid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, sourceId:Ljava/lang/String;
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 526
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 528
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    .end local v7           #sourceId:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_3
    return-void
.end method

.method private syncNewTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .locals 10
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 402
    sget-object v3, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 403
    .local v1, taskSyncUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 404
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 408
    .local v6, c:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_dirty= 1 AND accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 410
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v7, cidValues:Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    :cond_0
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 419
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Sending Tasks changes to the server"

    aput-object v3, v2, v9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2, v9}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 422
    :cond_1
    const-string v2, "clientId"

    invoke-direct {p0, v6, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->getClientId(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, clientId:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 424
    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 426
    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter;->sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 427
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 428
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    .end local v8           #clientId:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_3
    return-void
.end method

.method private syncUpdatedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .locals 12
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v5, " "

    const-string v1, "sourceid"

    .line 439
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 440
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 441
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 442
    .local v9, updatedcursor:Landroid/database/Cursor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncUpdatedTask: Mailbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account Key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    sget-object v1, Landroid/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 444
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Count of updated cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 448
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exiting from SYncupdatedTask since no records updated"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 501
    return-void

    .line 454
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Check if source id is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sourceid"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v11

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    const-string v1, "sourceid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 456
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 458
    .local v8, task_id:I
    sget-object v1, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Count of inside cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Serilaizing the data in SyncUpdatedTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "subject"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 469
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sending Tasks changes to the server"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 472
    :cond_1
    const-string v1, "sourceid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, sourceId:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 474
    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 476
    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter;->sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 477
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 479
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v7           #sourceId:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v8           #task_id:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_4
    move v3, v10

    .line 454
    goto/16 :goto_1

    .line 494
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private tasks_has_category(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 228
    const-string v0, "category1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "category2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "category3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 6

    .prologue
    .line 598
    new-instance v2, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    .line 609
    .local v2, ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 612
    .local v1, id:Ljava/lang/Long;
    sget-object v3, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_sync_dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 621
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 622
    .restart local v1       #id:Ljava/lang/Long;
    const-string v3, "ExchTasksSyncAdapter:CleanUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Going to  cleanup the mDeleted list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v3, Landroid/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 631
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 633
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v3, Landroid/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_2

    .line 643
    .end local v1           #id:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 644
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 649
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "Tasks"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    const-string v0, "0"

    .line 681
    .local v0, syncKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 683
    :cond_0
    const-string v1, "ExchTasksSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSyncKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-object v0
.end method

.method public isSyncable()Z
    .locals 5

    .prologue
    const-string v4, "tasks"

    .line 1809
    const-string v0, "ExchTasksSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncable for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v3, "tasks"

    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "tasks"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/TasksSyncAdapter;)V

    .line 655
    .local v0, p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->parse()Z

    move-result v1

    .line 659
    :goto_0
    return v1

    .line 658
    :cond_0
    const-string v1, "ExchTasksSyncAdapter"

    const-string v2, "parser is null!"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    const/4 v2, 0x0

    .line 574
    :goto_0
    return v2

    .line 555
    :cond_0
    new-instance v1, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V

    .line 561
    .local v1, retVal:Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncNewTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 563
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncUpdatedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 565
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncDeletedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 567
    invoke-virtual {v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 568
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 572
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 3
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 694
    const-string v0, "ExchTasksSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method
