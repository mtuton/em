.class Lcom/android/exchange/SyncManager$4;
.super Landroid/telephony/PhoneStateListener;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/SyncManager;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1754
    const-string v2, "onServiceStateChanged"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1700(Lcom/android/exchange/SyncManager;)Z

    move-result v0

    .line 1756
    .local v0, oldRoamingType:Z
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1800(Lcom/android/exchange/SyncManager;)I

    move-result v1

    .line 1758
    .local v1, oldServiceState:I
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->access$1802(Lcom/android/exchange/SyncManager;I)I

    .line 1759
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1760
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->access$1702(Lcom/android/exchange/SyncManager;Z)Z

    .line 1762
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1800(Lcom/android/exchange/SyncManager;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1800(Lcom/android/exchange/SyncManager;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->access$1700(Lcom/android/exchange/SyncManager;)Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1765
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Roaming State changed: mIsNetworkRoaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->access$1700(Lcom/android/exchange/SyncManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1767
    iget-object v2, p0, Lcom/android/exchange/SyncManager$4;->this$0:Lcom/android/exchange/SyncManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->access$1900(Lcom/android/exchange/SyncManager;Z)V

    .line 1769
    :cond_2
    return-void
.end method
