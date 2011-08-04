.class Lcom/android/email/Controller$16;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$final_messageId:Ljava/util/HashSet;

.field final synthetic val$final_source_accountId:J

.field final synthetic val$final_source_boxkey:J

.field final synthetic val$final_target_accountId:J

.field final synthetic val$final_target_boxkey:J

.field final synthetic val$source_server_type:I

.field final synthetic val$sync_source_trashMailboxId:J

.field final synthetic val$target_server_type:I


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/util/HashSet;JJJJJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/android/email/Controller$16;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$16;->val$final_messageId:Ljava/util/HashSet;

    iput-wide p3, p0, Lcom/android/email/Controller$16;->val$final_source_accountId:J

    iput-wide p5, p0, Lcom/android/email/Controller$16;->val$final_source_boxkey:J

    iput-wide p7, p0, Lcom/android/email/Controller$16;->val$final_target_accountId:J

    iput-wide p9, p0, Lcom/android/email/Controller$16;->val$final_target_boxkey:J

    iput-wide p11, p0, Lcom/android/email/Controller$16;->val$sync_source_trashMailboxId:J

    iput p13, p0, Lcom/android/email/Controller$16;->val$target_server_type:I

    iput p14, p0, Lcom/android/email/Controller$16;->val$source_server_type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/email/Controller$16;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$16;->val$final_messageId:Ljava/util/HashSet;

    iget-wide v2, p0, Lcom/android/email/Controller$16;->val$final_source_accountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$16;->val$final_source_boxkey:J

    iget-wide v6, p0, Lcom/android/email/Controller$16;->val$final_target_accountId:J

    iget-wide v8, p0, Lcom/android/email/Controller$16;->val$final_target_boxkey:J

    iget-wide v10, p0, Lcom/android/email/Controller$16;->val$sync_source_trashMailboxId:J

    iget v12, p0, Lcom/android/email/Controller$16;->val$target_server_type:I

    iget v13, p0, Lcom/android/email/Controller$16;->val$source_server_type:I

    invoke-virtual/range {v0 .. v13}, Lcom/android/email/MessagingController;->processPendingAccountMoveActions(Ljava/util/HashSet;JJJJJII)V

    .line 1702
    return-void
.end method
