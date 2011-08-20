.class final Lcom/android/exchange/SyncManager$7;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/SyncManager;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/exchange/AbstractSyncService;

.field final synthetic val$syncManager:Lcom/android/exchange/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager;JLcom/android/exchange/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/android/exchange/SyncManager$7;->val$syncManager:Lcom/android/exchange/SyncManager;

    iput-wide p2, p0, Lcom/android/exchange/SyncManager$7;->val$id:J

    iput-object p4, p0, Lcom/android/exchange/SyncManager$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "mailboxKey=?"

    .line 2341
    iget-object v3, p0, Lcom/android/exchange/SyncManager$7;->val$syncManager:Lcom/android/exchange/SyncManager;

    iget-wide v4, p0, Lcom/android/exchange/SyncManager$7;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2342
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 2348
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2349
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2350
    .local v0, args:[Ljava/lang/String;
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 2351
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2353
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2373
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/SyncManager$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 2358
    iget-object v3, p0, Lcom/android/exchange/SyncManager$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    iput-object v1, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2360
    iget-object v3, p0, Lcom/android/exchange/SyncManager$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-virtual {v3}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2364
    const-string v3, "Alarm failed; releasing mailbox"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2365
    invoke-static {}, Lcom/android/exchange/SyncManager;->access$400()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2366
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/SyncManager$7;->val$syncManager:Lcom/android/exchange/SyncManager;

    iget-wide v5, p0, Lcom/android/exchange/SyncManager$7;->val$id:J

    invoke-static {v4, v5, v6}, Lcom/android/exchange/SyncManager;->access$2000(Lcom/android/exchange/SyncManager;J)V

    .line 2367
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    goto :goto_0

    .line 2367
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
