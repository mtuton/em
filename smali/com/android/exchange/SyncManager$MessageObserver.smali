.class Lcom/android/exchange/SyncManager$MessageObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/exchange/SyncManager$MessageObserver;->this$0:Lcom/android/exchange/SyncManager;

    .line 1192
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1193
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1199
    if-nez p1, :cond_0

    .line 1200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1202
    :cond_0
    return-void
.end method
