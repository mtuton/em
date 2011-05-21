.class Lcom/android/email/Controller$15;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$final_orig_boxkey:J

.field final synthetic val$final_serverIds:Ljava/util/HashSet;

.field final synthetic val$syncAccountId:J

.field final synthetic val$target_boxkey:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/util/HashSet;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$15;->val$final_serverIds:Ljava/util/HashSet;

    iput-wide p3, p0, Lcom/android/email/Controller$15;->val$syncAccountId:J

    iput-wide p5, p0, Lcom/android/email/Controller$15;->val$target_boxkey:J

    iput-wide p7, p0, Lcom/android/email/Controller$15;->val$final_orig_boxkey:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$15;->val$final_serverIds:Ljava/util/HashSet;

    iget-wide v2, p0, Lcom/android/email/Controller$15;->val$syncAccountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$15;->val$target_boxkey:J

    iget-wide v6, p0, Lcom/android/email/Controller$15;->val$final_orig_boxkey:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveActions(Ljava/util/HashSet;JJJ)V

    .line 1372
    return-void
.end method
