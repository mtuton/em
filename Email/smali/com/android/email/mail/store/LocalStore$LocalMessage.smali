.class public Lcom/android/email/mail/store/LocalStore$LocalMessage;
.super Lcom/android/email/mail/internet/MimeMessage;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalMessage"
.end annotation


# instance fields
.field private mAttachmentCount:I

.field private mId:J

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V
    .locals 0
    .parameter
    .parameter "uid"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 1668
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mUid:Ljava/lang/String;

    .line 1669
    iput-object p3, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/android/email/mail/Folder;

    .line 1670
    return-void
.end method

.method static synthetic access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1663
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/email/mail/store/LocalStore$LocalMessage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1663
    iput-wide p1, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/email/mail/store/LocalStore$LocalMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1663
    iput p1, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I

    return p1
.end method


# virtual methods
.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 1673
    iget v0, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1685
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    return-wide v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-super {p0, p1}, Lcom/android/email/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1678
    return-void
.end method

.method public setFlag(Lcom/android/email/mail/Flag;Z)V
    .locals 9
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1690
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 1700
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE messages SET subject = NULL, sender_list = NULL, date = NULL, to_list = NULL, cc_list = NULL, bcc_list = NULL, html_content = NULL, text_content = NULL, reply_to_list = NULL WHERE id = ?"

    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/android/email/mail/Folder;

    check-cast v2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->access$1000(Lcom/android/email/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    .line 1721
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM attachments WHERE id = ?"

    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    :cond_0
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/email/mail/Flag;->X_DESTROYED:Lcom/android/email/mail/Flag;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    if-ne p1, v2, :cond_2

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/android/email/mail/Folder;

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    .line 1738
    .local v0, folder:Lcom/android/email/mail/store/LocalStore$LocalFolder;
    if-eqz p2, :cond_4

    sget-object v2, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1739
    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    .end local v0           #folder:Lcom/android/email/mail/store/LocalStore$LocalFolder;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1756
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE messages SET flags = ?, store_flag_1 = ?, store_flag_2 = ?, flag_downloaded_full = ?, flag_downloaded_partial = ?, flag_deleted = ? WHERE id = ?"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-virtual {v5, p0}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    invoke-virtual {v5, p0, v6}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v7, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    invoke-virtual {v6, p0, v7}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v7, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    invoke-virtual {v6, p0, v7}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v7, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    invoke-virtual {v6, p0, v7}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v7, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    invoke-virtual {v6, p0, v7}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    return-void

    .line 1726
    :cond_3
    sget-object v2, Lcom/android/email/mail/Flag;->X_DESTROYED:Lcom/android/email/mail/Flag;

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 1727
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/android/email/mail/Folder;

    check-cast v2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->access$1000(Lcom/android/email/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    .line 1728
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM messages WHERE id = ?"

    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1741
    .restart local v0       #folder:Lcom/android/email/mail/store/LocalStore$LocalFolder;
    :cond_4
    if-nez p2, :cond_2

    :try_start_1
    sget-object v2, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1742
    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1746
    .end local v0           #folder:Lcom/android/email/mail/store/LocalStore$LocalFolder;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1747
    .local v1, me:Lcom/android/email/mail/MessagingException;
    const-string v2, "Email"

    const-string v3, "Unable to update LocalStore unread message count"

    invoke-static {v2, v3, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1749
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    .locals 0
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1681
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1682
    return-void
.end method
