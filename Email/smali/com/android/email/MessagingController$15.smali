.class Lcom/android/email/MessagingController$15;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J

.field final synthetic val$prune:Z


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3618
    iput-object p1, p0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$15;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$15;->val$messageId:J

    iput-wide p8, p0, Lcom/android/email/MessagingController$15;->val$mailboxId:J

    iput-boolean p10, p0, Lcom/android/email/MessagingController$15;->val$prune:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 3622
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v8, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v24

    .line 3624
    .local v24, saveToFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v14

    .line 3626
    .local v14, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    if-nez v14, :cond_1

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    const-string v12, "Attachment is null"

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    .line 3748
    .end local v14           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v24           #saveToFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 3631
    .restart local v14       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v24       #saveToFile:Ljava/io/File;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 3632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    iget-object v12, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3737
    .end local v14           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v24           #saveToFile:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 3739
    .local v18, me:Lcom/android/email/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    goto :goto_0

    .line 3632
    .end local v18           #me:Lcom/android/email/mail/MessagingException;
    .restart local v14       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v24       #saveToFile:Ljava/io/File;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 3638
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v13

    .line 3640
    .local v13, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$mailboxId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v17

    .line 3642
    .local v17, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v19

    .line 3645
    .local v19, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v13, :cond_4

    if-eqz v17, :cond_4

    if-nez v19, :cond_5

    .line 3646
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    const-string v12, "Account, mailbox, message or attachment are null"

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 3741
    .end local v13           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v14           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v17           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v19           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v24           #saveToFile:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .line 3742
    .local v16, ioe:Ljava/io/IOException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while storing attachment."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    const-string v12, "IOException on loadAttachment"

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 3654
    .end local v16           #ioe:Ljava/io/IOException;
    .restart local v13       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v14       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v17       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v19       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local v24       #saveToFile:Ljava/io/File;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController$15;->val$prune:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 3655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/email/MessagingController;->pruneCachedAttachments(J)V

    .line 3657
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v22

    .line 3659
    .local v22, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v21

    .line 3660
    .local v21, remoteFolder:Lcom/android/email/mail/Folder;
    if-eqz v21, :cond_0

    .line 3667
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3671
    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attach || "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3672
    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attach || size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v14, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v25

    .line 3676
    .local v25, storeMessage:Lcom/android/email/mail/Message;
    new-instance v26, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct/range {v26 .. v26}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 3677
    .local v26, storePart:Lcom/android/email/mail/internet/MimeBodyPart;
    iget-wide v5, v14, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->setSize(I)V

    .line 3678
    const-string v5, "X-Android-Attachment-StoreData"

    iget-object v6, v14, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    const-string v5, "Content-Type"

    const-string v6, "%s;\n name=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v14, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v14, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    new-instance v20, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 3689
    .local v20, multipart:Lcom/android/email/mail/internet/MimeMultipart;
    const-string v5, "mixed"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 3690
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 3692
    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed"

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setBody(Lcom/android/email/mail/Body;)V

    .line 3696
    new-instance v15, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v15}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3697
    .local v15, fp:Lcom/android/email/mail/FetchProfile;
    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3698
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v15

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 3715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v14

    move-wide v3, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/email/mail/Part;Lcom/android/email/provider/EmailContent$Attachment;J)V

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    iget-object v12, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V

    .line 3735
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3744
    .end local v13           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v14           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v15           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v17           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v19           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v20           #multipart:Lcom/android/email/mail/internet/MimeMultipart;
    .end local v21           #remoteFolder:Lcom/android/email/mail/Folder;
    .end local v22           #remoteStore:Lcom/android/email/mail/Store;
    .end local v24           #saveToFile:Ljava/io/File;
    .end local v25           #storeMessage:Lcom/android/email/mail/Message;
    .end local v26           #storePart:Lcom/android/email/mail/internet/MimeBodyPart;
    :catch_2
    move-exception v5

    move-object/from16 v23, v5

    .line 3745
    .local v23, rune:Ljava/lang/RuntimeException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while storing attachment."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$attachmentId:J

    move-wide v10, v0

    const-string v12, "RuntimeException on loadAttachment"

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 3734
    .end local v23           #rune:Ljava/lang/RuntimeException;
    .restart local v13       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v14       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v15       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v17       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v19       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local v20       #multipart:Lcom/android/email/mail/internet/MimeMultipart;
    .restart local v21       #remoteFolder:Lcom/android/email/mail/Folder;
    .restart local v22       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v24       #saveToFile:Ljava/io/File;
    .restart local v25       #storeMessage:Lcom/android/email/mail/Message;
    .restart local v26       #storePart:Lcom/android/email/mail/internet/MimeBodyPart;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2
.end method
