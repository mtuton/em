.class Lcom/android/email/MessagingController$2;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->searchOnServerSync(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$2;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p4, p0, Lcom/android/email/MessagingController$2;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$2;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, p0, Lcom/android/email/MessagingController$2;->val$searchText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    .line 419
    return-void
.end method
