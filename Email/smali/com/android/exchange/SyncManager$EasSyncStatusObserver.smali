.class public Lcom/android/exchange/SyncManager$EasSyncStatusObserver;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasSyncStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1346
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;->this$0:Lcom/android/exchange/SyncManager;

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$1200(Lcom/android/exchange/SyncManager;)V

    .line 1349
    :cond_0
    return-void
.end method
