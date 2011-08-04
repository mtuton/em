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
    .line 2755
    iput-object p1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$12;->val$newMessage:Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
