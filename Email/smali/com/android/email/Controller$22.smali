.class Lcom/android/email/Controller$22;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J

.field final synthetic val$prune:Z


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/email/Controller$22;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$22;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/Controller$22;->val$messageId:J

    iput-wide p6, p0, Lcom/android/email/Controller$22;->val$mailboxId:J

    iput-wide p8, p0, Lcom/android/email/Controller$22;->val$attachmentId:J

    iput-boolean p10, p0, Lcom/android/email/Controller$22;->val$prune:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/email/Controller$22;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$22;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/Controller$22;->val$messageId:J

    iget-wide v5, p0, Lcom/android/email/Controller$22;->val$mailboxId:J

    iget-wide v7, p0, Lcom/android/email/Controller$22;->val$attachmentId:J

    iget-object v9, p0, Lcom/android/email/Controller$22;->this$0:Lcom/android/email/Controller;

    invoke-static {v9}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/email/Controller$22;->val$prune:Z

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V

    .line 2539
    return-void
.end method
