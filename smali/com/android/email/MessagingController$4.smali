.class Lcom/android/email/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/email/mail/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
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
    .line 646
    iput-object p1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageFinished(Lcom/android/email/mail/Message;II)V
    .locals 6
    .parameter "message"
    .parameter "number"
    .parameter "ofTotal"

    .prologue
    const/4 v4, 0x1

    .line 643
    iget-object v0, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/MessagingController$4;->val$folder:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MessagingController;->access$800(Lcom/android/email/MessagingController;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    .line 644
    return-void
.end method

.method public messageStarted(Ljava/lang/String;II)V
    .locals 0
    .parameter "uid"
    .parameter "number"
    .parameter "ofTotal"

    .prologue
    .line 647
    return-void
.end method
