.class Lcom/android/exchange/SyncManager$AccountObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/SyncManager$AccountObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/SyncManager$AccountObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/SyncManager$AccountObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/android/exchange/SyncManager$AccountObserver$1;->this$1:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/exchange/SyncManager$AccountObserver$1;->this$1:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-static {v0}, Lcom/android/exchange/SyncManager$AccountObserver;->access$900(Lcom/android/exchange/SyncManager$AccountObserver;)V

    .line 1059
    return-void
.end method
