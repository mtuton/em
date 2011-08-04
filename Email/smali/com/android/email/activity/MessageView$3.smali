.class Lcom/android/email/activity/MessageView$3;
.super Landroid/app/ProgressDialog;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageView;->initMessageHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/email/activity/MessageView$3;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    const-string v1, "Email"

    .line 1466
    const-string v0, "Email"

    const-string v0, "[jykim] onBackPressed()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-static {}, Lcom/android/exchange/SyncManager;->getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/EasLoadMoreSvc;->reset()V

    .line 1470
    invoke-static {}, Lcom/android/exchange/SyncManager;->getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/EasLoadMoreSvc;->userCancelled()V

    .line 1472
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/exchange/SyncManager;->getElmSvcMsg()J

    move-result-wide v1

    const/high16 v3, 0x10

    const/16 v4, 0x64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 1473
    const-string v0, "Email"

    const-string v1, "[jykim] LOADMORE_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView$3;->hide()V

    .line 1477
    return-void

    .line 1474
    :catch_0
    move-exception v0

    goto :goto_0
.end method
