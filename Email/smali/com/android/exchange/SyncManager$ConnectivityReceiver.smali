.class public Lcom/android/exchange/SyncManager$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2705
    iput-object p1, p0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2708
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2709
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2710
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2711
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2712
    .local v0, a:Landroid/net/NetworkInfo;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "Connectivity alert for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2713
    .local v5, info:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2714
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 2715
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 2716
    const-string v7, " CONNECTED"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2717
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2718
    sget-object v7, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2719
    :try_start_0
    sget-object v8, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 2720
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    const-string v7, "connected"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2746
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v5           #info:Ljava/lang/StringBuffer;
    .end local v6           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return-void

    .line 2720
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v5       #info:Ljava/lang/StringBuffer;
    .restart local v6       #state:Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2722
    :cond_1
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_0

    .line 2723
    const-string v7, " DISCONNECTED"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2724
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2725
    const-string v7, "disconnected"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v5           #info:Ljava/lang/StringBuffer;
    .end local v6           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2730
    iget-object v7, p0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;->this$0:Lcom/android/exchange/SyncManager;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 2732
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->access$2102(Lcom/android/exchange/SyncManager;Z)Z

    .line 2734
    iget-object v7, p0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->access$2100(Lcom/android/exchange/SyncManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2735
    const-string v7, "background data on"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2736
    const-string v7, "Background data on; restart syncs"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2739
    :cond_3
    const-string v7, "Background data off: stop all syncs"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2740
    sget-object v7, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v7

    .line 2741
    :try_start_2
    sget-object v8, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v8}, Lcom/android/exchange/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/EmailContent$Account;

    .line 2742
    .local v1, account:Lcom/android/email/provider/EmailContent$Account;
    iget-wide v8, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V

    goto :goto_1

    .line 2743
    .end local v1           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method
