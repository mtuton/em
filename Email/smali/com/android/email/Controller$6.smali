.class Lcom/android/email/Controller$6;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->sendMessage(JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$account:Lcom/android/email/provider/EmailContent$Account;

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$6;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/Controller$6;->val$sentboxId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$6;->val$account:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/Controller$6;->val$sentboxId:J

    iget-object v4, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V

    .line 565
    return-void
.end method
