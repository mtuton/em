.class Lcom/android/email/activity/MessageList$16;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x3

    const-string v3, "onSort >>>>>> "

    .line 3029
    iget-object v0, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3033
    const-string v0, "onSort >>>>>> "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMailboxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string v0, "onSort >>>>>> "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailbox.mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const-string v0, "onSort >>>>>> "

    const-string v0, "EmailContent.Mailbox.TYPE_INBOX = 0"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    iget-object v0, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_2

    .line 3038
    if-ne p2, v4, :cond_1

    .line 3039
    const/16 p2, 0x8

    .line 3051
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$16;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;I)V

    .line 3052
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3053
    return-void

    .line 3040
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3041
    const/16 p2, 0x9

    goto :goto_0

    .line 3045
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 3046
    const/16 p2, 0x8

    goto :goto_0

    .line 3047
    :cond_3
    if-ne p2, v4, :cond_0

    .line 3048
    const/16 p2, 0x9

    goto :goto_0
.end method
