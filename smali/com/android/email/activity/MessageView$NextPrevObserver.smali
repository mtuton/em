.class Lcom/android/email/activity/MessageView$NextPrevObserver;
.super Landroid/database/ContentObserver;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextPrevObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 3667
    iput-object p1, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    .line 3668
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3669
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3100(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3676
    iget-object v0, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    new-instance v1, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v3}, Lcom/android/email/activity/MessageView;->access$3200(Lcom/android/email/activity/MessageView;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->access$3002(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 3677
    iget-object v0, p0, Lcom/android/email/activity/MessageView$NextPrevObserver;->this$0:Lcom/android/email/activity/MessageView;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->access$3000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3679
    :cond_0
    return-void
.end method
