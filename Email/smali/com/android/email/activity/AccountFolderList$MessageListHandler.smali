.class Lcom/android/email/activity/AccountFolderList$MessageListHandler;
.super Landroid/os/Handler;
.source "AccountFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListHandler"
.end annotation


# static fields
.field private static final MSG_PROGRESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1008
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1018
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1020
    :goto_0
    return-void

    .line 1010
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1011
    .local v0, showProgress:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1200(Lcom/android/email/activity/AccountFolderList;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v0           #showProgress:Z
    :cond_0
    move v0, v2

    .line 1010
    goto :goto_1

    .line 1014
    .restart local v0       #showProgress:Z
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1200(Lcom/android/email/activity/AccountFolderList;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 1027
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1028
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1029
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1030
    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    return-void

    .line 1029
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
