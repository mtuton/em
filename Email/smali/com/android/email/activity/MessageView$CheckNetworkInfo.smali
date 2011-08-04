.class public Lcom/android/email/activity/MessageView$CheckNetworkInfo;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckNetworkInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWirelessAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const-string v6, "View >>"

    .line 3615
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3618
    .local v2, mNetConMgr:Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 3620
    :try_start_0
    const-string v4, "View >>"

    const-string v5, "Get ConnectivityManager is failed"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    .line 3640
    :goto_0
    return v4

    .line 3623
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3624
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3626
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 3627
    .local v3, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 3629
    const-string v4, "View >>"

    const-string v5, "Network is connected"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3630
    const/4 v4, 0x1

    goto :goto_0

    .line 3634
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$DetailedState;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3636
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "View >>"

    const-string v4, "Get ConnectivityManager Exception"

    invoke-static {v6, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "View >>"

    const-string v4, "Network is not connected"

    invoke-static {v6, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    .line 3640
    goto :goto_0
.end method
