.class Lcom/android/email/MessagingController$16;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JJLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$outFolderId:J

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/android/email/MessagingController$16;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$16;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$16;->val$sentboxId:J

    iput-wide p5, p0, Lcom/android/email/MessagingController$16;->val$outFolderId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/email/MessagingController$16;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$16;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/MessagingController$16;->val$sentboxId:J

    iget-wide v4, p0, Lcom/android/email/MessagingController$16;->val$outFolderId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;JJ)V

    .line 3714
    return-void
.end method
