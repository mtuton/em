.class public Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasAccountsUpdatedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;->this$0:Lcom/android/exchange/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1517
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1518
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1519
    invoke-static {v0}, Lcom/android/exchange/SyncManager;->access$1300(Lcom/android/exchange/SyncManager;)V

    .line 1521
    :cond_0
    return-void
.end method
