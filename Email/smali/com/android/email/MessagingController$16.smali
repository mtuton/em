.class Lcom/android/email/MessagingController$16;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$sentFolderId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3810
    iput-object p1, p0, Lcom/android/email/MessagingController$16;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$16;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$16;->val$sentFolderId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3812
    iget-object v0, p0, Lcom/android/email/MessagingController$16;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$16;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/MessagingController$16;->val$sentFolderId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;J)V

    .line 3813
    return-void
.end method
