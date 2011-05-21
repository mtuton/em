.class Lcom/android/email/Controller$8;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->sendPendingMessages(JLcom/android/email/Controller$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$outboxId:J

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$8;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/Controller$8;->val$sentboxId:J

    iput-wide p5, p0, Lcom/android/email/Controller$8;->val$outboxId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$8;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/Controller$8;->val$sentboxId:J

    iget-wide v4, p0, Lcom/android/email/Controller$8;->val$outboxId:J

    iget-object v6, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JJLcom/android/email/MessagingListener;)V

    .line 798
    return-void
.end method
