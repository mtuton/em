.class Lcom/android/email/activity/MailboxList$3;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->enterFolderName(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;

.field final synthetic val$action:I

.field final synthetic val$mailboxId:J

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    iput-object p2, p0, Lcom/android/email/activity/MailboxList$3;->val$text:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/email/activity/MailboxList$3;->val$action:I

    iput-wide p4, p0, Lcom/android/email/activity/MailboxList$3;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$3;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, folderName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 446
    .local v0, controller:Lcom/android/email/Controller;
    iget v2, p0, Lcom/android/email/activity/MailboxList$3;->val$action:I

    const v3, 0x7f070190

    if-ne v2, v3, :cond_1

    .line 447
    iget-wide v2, p0, Lcom/android/email/activity/MailboxList$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->createFolder(Ljava/lang/String;J)V

    .line 454
    .end local v0           #controller:Lcom/android/email/Controller;
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v0       #controller:Lcom/android/email/Controller;
    :cond_1
    iget v2, p0, Lcom/android/email/activity/MailboxList$3;->val$action:I

    const v3, 0x7f070191

    if-ne v2, v3, :cond_0

    .line 449
    iget-wide v2, p0, Lcom/android/email/activity/MailboxList$3;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->renameFolder(Ljava/lang/String;J)V

    goto :goto_0

    .line 452
    .end local v0           #controller:Lcom/android/email/Controller;
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxList$3;->this$0:Lcom/android/email/activity/MailboxList;

    const v4, 0x7f080246

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
