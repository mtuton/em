.class Lcom/android/exchange/SyncManager$3;
.super Ljava/lang/Thread;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/SyncManager;->runAccountReconciler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;

.field final synthetic val$syncManager:Lcom/android/exchange/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager;Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/exchange/SyncManager$3;->this$0:Lcom/android/exchange/SyncManager;

    iput-object p2, p0, Lcom/android/exchange/SyncManager$3;->val$syncManager:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1376
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_0

    .line 1377
    const-string v1, "!!! EAS SyncManager  -----------  Quit thread : null INSTANCE(1)"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1400
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/SyncManager$3;->val$syncManager:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.android.exchange"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1383
    .local v0, accountMgrList:[Landroid/accounts/Account;
    sget-object v1, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v1

    .line 1387
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager$3;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1400(Lcom/android/exchange/SyncManager;)Lcom/android/exchange/SyncManager$AccountObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1388
    iget-object v2, p0, Lcom/android/exchange/SyncManager$3;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1400(Lcom/android/exchange/SyncManager;)Lcom/android/exchange/SyncManager$AccountObserver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager$AccountObserver;->access$900(Lcom/android/exchange/SyncManager$AccountObserver;)V

    .line 1391
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v2, :cond_1

    .line 1392
    const-string v2, "!!! EAS SyncManager  -----------  Quit thread : null INSTANCE(2)"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1393
    monitor-exit v1

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1396
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/SyncManager$3;->val$syncManager:Lcom/android/exchange/SyncManager;

    sget-object v3, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/SyncManager$3;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/exchange/SyncManager;->reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V

    .line 1399
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
