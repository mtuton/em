.class Lcom/android/email/MessagingController$5;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/email/provider/EmailContent$Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/email/MessagingController$5;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$5;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$5;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/email/MessagingController$5;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$5;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$5;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 774
    return-void
.end method
