.class Lcom/android/exchange/SyncManager$MailboxObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/exchange/SyncManager$MailboxObserver;->this$0:Lcom/android/exchange/SyncManager;

    .line 1171
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1172
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1177
    if-nez p1, :cond_0

    .line 1178
    const-string v0, "mailbox changed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1180
    :cond_0
    return-void
.end method