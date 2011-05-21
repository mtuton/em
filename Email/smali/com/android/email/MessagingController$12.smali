.class Lcom/android/email/MessagingController$12;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/email/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingRestoreToInbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$newMessage:Lcom/android/email/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2719
    iput-object p1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$12;->val$newMessage:Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageNotFound(Lcom/android/email/mail/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 2720
    iget-object v0, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController$12;->val$newMessage:Lcom/android/email/provider/EmailContent$Message;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2721
    return-void
.end method

.method public onMessageUidChange(Lcom/android/email/mail/Message;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "newUid"

    .prologue
    const/4 v3, 0x0

    .line 2709
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2710
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$12;->val$newMessage:Lcom/android/email/provider/EmailContent$Message;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2712
    return-void
.end method
