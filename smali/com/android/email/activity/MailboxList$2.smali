.class Lcom/android/email/activity/MailboxList$2;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->onMoveMailbox(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;JLandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$2;->val$mailboxId:J

    iput-object p4, p0, Lcom/android/email/activity/MailboxList$2;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$2;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 414
    .local v0, controller:Lcom/android/email/Controller;
    iget-wide v1, p0, Lcom/android/email/activity/MailboxList$2;->val$mailboxId:J

    iget-object v3, p0, Lcom/android/email/activity/MailboxList$2;->val$c:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveFolder(JJ)V

    .line 415
    return-void
.end method
