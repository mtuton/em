.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$LocalMessageInfo;,
        Lcom/android/email/MessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag;

.field private static FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag;

.field private static PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static inst:Lcom/android/email/MessagingController;


# instance fields
.field private mBusy:Z

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field mSharedPref:Landroid/content/SharedPreferences;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v3, [Lcom/android/email/mail/Flag;

    sget-object v1, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag;

    .line 108
    new-array v0, v3, [Lcom/android/email/mail/Flag;

    sget-object v1, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    const-string v1, "contentId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 127
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 137
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 146
    iput-object p1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 149
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingMoveSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/MessagingController;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/email/MessagingController;JJLcom/android/email/provider/EmailContent$Account;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/email/provider/EmailContent$Account;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/email/provider/EmailContent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/MessagingController;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method private copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v9, "Email"

    .line 1570
    iget-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    if-nez v0, :cond_0

    .line 1663
    :goto_0
    return-void

    .line 1578
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1590
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1591
    const-class v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1594
    :goto_1
    if-eqz v1, :cond_1

    .line 1598
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_1
    if-nez v0, :cond_3

    .line 1602
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve message from db, UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while storing downloaded message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1594
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_2

    .line 1598
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1660
    :catch_1
    move-exception v0

    .line 1661
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while storing attachment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1607
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v1

    .line 1609
    if-nez v1, :cond_5

    .line 1610
    new-instance v1, Lcom/android/email/provider/EmailContent$Body;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Body;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v1

    .line 1614
    :goto_3
    :try_start_5
    iget-wide v2, p2, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v4, p3, Lcom/android/email/provider/EmailContent;->mId:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Message;JJ)Z

    .line 1618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    invoke-static {p1, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1622
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v1}, Lcom/android/email/LegacyConversions;->updateBodyFields(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Body;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1624
    const-string v1, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " b : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Body;->isSaved()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Body;->isSaved()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1627
    invoke-virtual {p0, p3, p1, v0, v6}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z

    .line 1632
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/email/provider/EmailContent;)V

    .line 1633
    invoke-direct {p0, v6}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/email/provider/EmailContent;)V

    .line 1636
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;Z)V

    .line 1640
    iput p4, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1642
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1643
    const-string v2, "flagAttachment"

    iget-boolean v3, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1647
    const-string v2, "flagLoaded"

    iget v3, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v4, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1650
    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1652
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1654
    :catch_2
    move-exception v0

    .line 1655
    :try_start_6
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1594
    :catchall_1
    move-exception v0

    goto/16 :goto_2

    :cond_5
    move-object v6, v1

    goto/16 :goto_3

    :cond_6
    move-object v0, v8

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;
    .locals 2
    .parameter "_context"

    .prologue
    .line 160
    const-class v0, Lcom/android/email/MessagingController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/android/email/MessagingController;

    invoke-direct {v1, p0}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    .line 163
    :cond_0
    sget-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter "mockController"

    .prologue
    .line 170
    sput-object p0, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    .line 171
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private loadMessageForViewSyncronous(J)Z
    .locals 13
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3507
    const/4 v10, 0x0

    .line 3508
    .local v10, remoteStore:Lcom/android/email/mail/Store;
    const/4 v9, 0x0

    .line 3509
    .local v9, remoteFolder:Lcom/android/email/mail/Folder;
    const/4 v12, 0x0

    .line 3513
    .local v12, storeUri:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 3515
    .local v8, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v8, :cond_2

    .line 3516
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_0

    throw v9

    move-result v1

    if-eqz v1, :cond_0

    .line 3589
    const/4 v1, 0x0

    throw v9

    .line 3591
    :cond_0
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    :goto_0
    return v0

    .line 3518
    .restart local v8       #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_2
    :try_start_1
    iget v0, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3519
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_3

    throw v9

    move-result v1

    if-eqz v1, :cond_3

    .line 3589
    const/4 v1, 0x0

    throw v9

    .line 3591
    :cond_3
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3525
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 3527
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 3529
    .local v3, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_5

    if-nez v3, :cond_7

    .line 3530
    :cond_5
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_6

    throw v9

    move-result v1

    if-eqz v1, :cond_6

    .line 3589
    const/4 v1, 0x0

    throw v9

    .line 3591
    :cond_6
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3532
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 3533
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v10

    .line 3534
    iget-object v0, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .line 3535
    if-nez v9, :cond_9

    .line 3540
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_8
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3542
    :cond_9
    :try_start_4
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3565
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 3566
    .local v1, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v1, :cond_b

    .line 3567
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    .end local v1           #remoteMessage:Lcom/android/email/mail/Message;
    if-eqz v1, :cond_a

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_a
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3570
    .restart local v1       #remoteMessage:Lcom/android/email/mail/Message;
    :cond_b
    :try_start_5
    new-instance v6, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3571
    .local v6, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v0, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3572
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v6, v4}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 3575
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    .line 3577
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3579
    const/4 v0, 0x1

    .line 3588
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    .end local v1           #remoteMessage:Lcom/android/email/mail/Message;
    if-eqz v1, :cond_c

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_c
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3581
    .end local v2           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v6           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3583
    .local v7, me:Lcom/android/email/mail/MessagingException;
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_d
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3584
    .end local v7           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 3585
    .local v11, rte:Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    .line 3588
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_e
    if-eqz v10, :cond_1

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3588
    .end local v11           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3589
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3591
    :cond_f
    if-eqz v10, :cond_10

    .line 3592
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_10
    throw v0
.end method

.method private processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v3, "Email"

    .line 2564
    const/4 v0, 0x0

    .line 2566
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p7, p8}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v6

    .line 2568
    if-nez v6, :cond_0

    .line 2569
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsync failed for null message, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :goto_0
    return v0

    .line 2570
    :cond_0
    iget v1, p6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2571
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2572
    :cond_1
    iget v1, p6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2573
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2575
    :cond_2
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upsyc triggered for message id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 2576
    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v0

    goto :goto_0
.end method

.method private processPendingAccountMoveActionsSynchronous(JJLcom/android/email/provider/EmailContent$Account;J)Z
    .locals 13
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1951
    const/4 v12, 0x0

    .line 1952
    .local v12, bret:Z
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1953
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .local v9, accountIdArgs:[Ljava/lang/String;
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v10, p6

    .line 1955
    invoke-direct/range {v2 .. v11}, Lcom/android/email/MessagingController;->processPendingAccountMoveUploadsSynchronous(JJLcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z

    move-result v12

    .line 1957
    return v12
.end method

.method private processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "processPendingAccountMoveAppend"

    .line 3209
    .line 3214
    :try_start_0
    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3215
    if-nez v0, :cond_1

    .line 3316
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_0
    move v0, v4

    :goto_0
    return v0

    .line 3222
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3223
    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->canCreate(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3226
    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "This Pop account do not allowed upload sync. So we will just local move."

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3316
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_2
    move v0, v5

    goto :goto_0

    .line 3238
    :cond_3
    :try_start_2
    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_5

    .line 3316
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_4

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_4
    move v0, v4

    goto :goto_0

    .line 3243
    :cond_5
    :try_start_3
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3244
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_7

    .line 3245
    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "remoteFolder.getMode() != OpenMode.READ_WRITE."

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3316
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_6

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_6
    move v0, v4

    goto :goto_0

    .line 3252
    :cond_7
    :try_start_4
    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 3253
    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    .line 3254
    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3274
    :cond_8
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p6}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 3277
    new-instance v2, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3278
    sget-object v3, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3280
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/email/mail/Message;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3282
    invoke-virtual {v1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3291
    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    .line 3293
    :cond_9
    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "message.mServerId is null. Sending is failed...."

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3316
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_a

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_a
    move v0, v4

    goto/16 :goto_0

    .line 3316
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_c

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_c
    move v0, v5

    goto/16 :goto_0

    .line 3309
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 3316
    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v5, :cond_d

    .line 3318
    invoke-virtual {v0, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_d
    move v0, v4

    goto/16 :goto_0

    .line 3316
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v2

    if-ne v2, v5, :cond_e

    .line 3318
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_e
    throw v0

    .line 3316
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 3309
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private processPendingAccountMoveUploadsSynchronous(JJLcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2228
    .line 2230
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mailboxKey"

    aput-object v5, v3, v4

    .line 2235
    const/4 v3, 0x0

    .line 2237
    const-wide/16 v4, 0x0

    cmp-long v4, p8, v4

    if-ltz v4, :cond_0

    .line 2239
    const/4 v4, 0x0

    .line 2243
    if-nez v3, :cond_2

    .line 2244
    :try_start_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    move-object v5, v3

    .line 2247
    :goto_0
    if-nez v4, :cond_1

    .line 2248
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, v3

    move-wide/from16 v1, p8

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    move-object v9, v3

    :goto_1
    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p5

    move-wide v7, p3

    move-wide v10, p1

    .line 2251
    invoke-direct/range {v3 .. v11}, Lcom/android/email/MessagingController;->processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2261
    :goto_2
    return v3

    .line 2253
    :catchall_0
    move-exception v3

    throw v3

    .line 2258
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    move-object v9, v4

    goto :goto_1

    :cond_2
    move-object v5, v3

    goto :goto_0
.end method

.method private processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 5
    .parameter "account"
    .parameter "ismovemail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1917
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1918
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1921
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingDeletesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1925
    if-nez p2, :cond_0

    .line 1926
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1929
    :cond_0
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V

    .line 1930
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "syncServerId"

    .line 3063
    .line 3070
    :try_start_0
    iget-object v0, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3071
    if-nez v0, :cond_1

    .line 3196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_0

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_0
    move v0, v7

    :goto_0
    return v0

    .line 3078
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3079
    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->canCreate(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3082
    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 3083
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3084
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3086
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3087
    const-string v3, "syncServerId"

    iget-object v4, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3196
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_4

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 3092
    :cond_5
    :try_start_2
    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_7

    .line 3196
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_6

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_6
    move v0, v7

    goto :goto_0

    .line 3097
    :cond_7
    :try_start_3
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3098
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_9

    .line 3099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3196
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_8

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_8
    move v0, v7

    goto/16 :goto_0

    .line 3105
    :cond_9
    :try_start_4
    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 3106
    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 3110
    :goto_1
    if-nez v1, :cond_e

    .line 3112
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 3115
    new-instance v2, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3116
    sget-object v3, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3117
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/email/mail/Message;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3120
    invoke-virtual {v1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v1, v7

    move v2, v8

    move v3, v8

    .line 3158
    :goto_2
    if-eqz v3, :cond_a

    iget-object v3, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 3160
    iget-object v3, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 3161
    if-eqz v3, :cond_a

    .line 3162
    new-instance v2, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3163
    sget-object v4, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v2, v4}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3164
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/email/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 3165
    invoke-virtual {v3}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p4, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    move v2, v8

    .line 3174
    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_c

    .line 3175
    :cond_b
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3176
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3177
    if-eqz v1, :cond_10

    .line 3178
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3186
    :cond_c
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3196
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_d

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_d
    move v0, v8

    goto/16 :goto_0

    .line 3125
    :cond_e
    :try_start_5
    new-instance v2, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3126
    sget-object v3, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3127
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 3128
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p4, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 3129
    invoke-virtual {v1}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    .line 3130
    invoke-virtual {v4, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_f

    move v1, v8

    move v2, v7

    move v3, v7

    .line 3134
    goto :goto_2

    .line 3139
    :cond_f
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 3142
    invoke-virtual {v2}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 3143
    new-instance v2, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3144
    sget-object v4, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v2, v4}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3145
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3148
    invoke-virtual {v3}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3153
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    move v1, v7

    move v2, v8

    move v3, v8

    goto/16 :goto_2

    .line 3179
    :cond_10
    if-eqz v2, :cond_c

    .line 3180
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3181
    const-string v2, "syncServerId"

    iget-object v5, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    const-string v2, "syncServerTimeStamp"

    iget-wide v5, p4, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3183
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 3189
    :catch_0
    move-exception v1

    .line 3196
    :goto_4
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v8, :cond_11

    .line 3198
    invoke-virtual {v0, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_11
    move v0, v7

    goto/16 :goto_0

    .line 3196
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v2

    if-ne v2, v8, :cond_12

    .line 3198
    invoke-virtual {v1, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_12
    throw v0

    .line 3196
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    .line 3189
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_13
    move-object v1, v3

    goto/16 :goto_1
.end method

.method private processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 5
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3021
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v1

    .line 3022
    .local v1, remoteTrashFolder:Lcom/android/email/mail/Folder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3043
    :cond_0
    :goto_0
    return-void

    .line 3026
    :cond_1
    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3027
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    .line 3028
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3033
    :cond_2
    iget-object v2, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v0

    .line 3034
    .local v0, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v0, :cond_3

    .line 3035
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3040
    :cond_3
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 3041
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 3042
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 7
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2977
    iget v3, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    .line 2983
    .local v2, remoteTrashFolder:Lcom/android/email/mail/Folder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2987
    :try_start_0
    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2988
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_3

    .line 2989
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3004
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3006
    .local v0, e:Ljava/lang/Exception;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 3008
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3010
    :cond_2
    const-string v3, "Email"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2994
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 2995
    .local v1, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v1, :cond_4

    .line 2996
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3001
    :cond_4
    sget-object v3, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 3002
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 3003
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private processPendingDeletesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1971
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const-string v5, "mailboxKey"

    move-object v0, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1975
    const-wide/16 v1, -0x1

    .line 1978
    const/4 v3, 0x0

    .line 1980
    const/4 v4, 0x0

    move-object v9, v4

    move-object v10, v3

    move-wide v3, v1

    move-object v1, v9

    move-object v2, v10

    .line 1982
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1985
    const-class v5, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v0, v5}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p3

    check-cast p3, Lcom/android/email/provider/EmailContent$Message;

    .line 1989
    if-eqz p3, :cond_0

    .line 1990
    iget-wide v3, p3, Lcom/android/email/provider/EmailContent;->mId:J

    .line 1991
    if-eqz v1, :cond_1

    iget-wide v5, v1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v7, p3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 1992
    :cond_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v5, p3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1994
    :cond_2
    iget v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    .line 1997
    :goto_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_3

    .line 1998
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 2002
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    .line 2004
    invoke-direct {p0, v2, p1, v1, p3}, Lcom/android/email/MessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V

    .line 2008
    :cond_4
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2010
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2014
    :catch_0
    move-exception v1

    move-wide v2, v3

    .line 2017
    :try_start_1
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 2018
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending delete for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    :cond_5
    if-eqz v0, :cond_6

    .line 2023
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2025
    :cond_6
    :goto_2
    return-void

    .line 1994
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 2022
    :cond_8
    if-eqz v0, :cond_6

    .line 2023
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2022
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_9

    .line 2023
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method private processPendingFlagChange(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Mailbox;ZZLcom/android/email/provider/EmailContent$Message;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2599
    if-eqz p5, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2612
    :try_start_0
    iget-object v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2613
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_3

    .line 2649
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2650
    invoke-virtual {v0, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2616
    :cond_3
    :try_start_2
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2617
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_4

    .line 2618
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2649
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2650
    invoke-virtual {v0, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2623
    :cond_4
    :try_start_3
    iget-object v1, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 2624
    if-nez v1, :cond_5

    .line 2625
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2649
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2650
    invoke-virtual {v0, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2628
    :cond_5
    :try_start_4
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 2629
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update flags for msg id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/email/mail/Message;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 2635
    if-eqz p3, :cond_7

    .line 2636
    sget-object v1, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag;

    iget-boolean v3, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V

    .line 2638
    :cond_7
    if-eqz p4, :cond_8

    .line 2639
    sget-object v1, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag;

    iget-boolean v3, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2649
    :cond_8
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2650
    invoke-virtual {v0, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2642
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2646
    :goto_1
    :try_start_5
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2649
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2650
    invoke-virtual {v1, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_9
    throw v0

    .line 2649
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 2642
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private processPendingMoveSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Z
    .locals 9
    .parameter "account"
    .parameter "resolver"
    .parameter "cur_serverId"
    .parameter "target_boxkey"
    .parameter "orig_boxkey"

    .prologue
    .line 2376
    const/4 v7, 0x1

    .line 2379
    .local v7, bret:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 2380
    .local v1, remoteStore:Lcom/android/email/mail/Store;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .local v3, target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p6

    .line 2382
    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingMoveToTargetbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;J)Z
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2387
    .end local v1           #remoteStore:Lcom/android/email/mail/Store;
    .end local v3           #target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    return v7

    .line 2383
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2384
    .local v8, me:Lcom/android/email/mail/MessagingException;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private processPendingMoveToTargetbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;J)Z
    .locals 9
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "orig_serverId"
    .parameter "orig_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2397
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v5, p5, p6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2398
    .local v1, oldMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v1, :cond_0

    move v5, v8

    .line 2506
    :goto_0
    return v5

    .line 2406
    :cond_0
    const/4 v4, 0x0

    .line 2407
    .local v4, remoteTargetFolder:Lcom/android/email/mail/Folder;
    const/4 v2, 0x0

    .line 2410
    .local v2, remoteFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2411
    if-nez v2, :cond_3

    .line 2502
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_1
    if-eqz v4, :cond_2

    throw v4

    move-result v5

    if-eqz v5, :cond_2

    .line 2506
    throw v4

    :cond_2
    move v5, v8

    goto :goto_0

    .line 2418
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2422
    sget-object v5, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2425
    :cond_4
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_7

    .line 2502
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_5
    if-eqz v4, :cond_6

    throw v4

    move-result v5

    if-eqz v5, :cond_6

    .line 2506
    throw v4

    :cond_6
    move v5, v8

    goto :goto_0

    .line 2429
    :cond_7
    :try_start_2
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2430
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_a

    .line 2431
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2502
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_8
    if-eqz v4, :cond_9

    throw v4

    move-result v5

    if-eqz v5, :cond_9

    .line 2506
    throw v4

    :cond_9
    move v5, v8

    goto :goto_0

    .line 2436
    :cond_a
    :try_start_3
    invoke-virtual {v2, p4}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 2437
    .local v3, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v3, :cond_d

    .line 2438
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2502
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_b
    if-eqz v4, :cond_c

    throw v4

    move-result v5

    if-eqz v5, :cond_c

    .line 2506
    throw v4

    :cond_c
    move v5, v8

    goto/16 :goto_0

    .line 2443
    :cond_d
    :try_start_4
    iget-object v5, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v4

    .line 2444
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2448
    sget-object v5, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2453
    :cond_e
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2458
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2459
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_11

    .line 2460
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2461
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2502
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2506
    invoke-virtual {v4, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_10
    move v5, v8

    goto/16 :goto_0

    .line 2465
    :cond_11
    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v6, Lcom/android/email/MessagingController$11;

    invoke-direct {v6, p0}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;)V

    invoke-virtual {v2, v5, v4, v6}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V

    .line 2477
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2488
    sget-object v5, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2491
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2492
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2502
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2506
    invoke-virtual {v4, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_13
    move v5, v7

    goto/16 :goto_0

    .line 2481
    :cond_14
    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2502
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2506
    invoke-virtual {v4, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_16
    move v5, v8

    goto/16 :goto_0

    .line 2495
    .end local v3           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2499
    .local v0, me:Ljava/lang/Exception;
    :try_start_7
    new-instance v5, Lcom/android/email/mail/MessagingException;

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2502
    .end local v0           #me:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2503
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2505
    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2506
    invoke-virtual {v4, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_18
    throw v5
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2822
    if-eqz p5, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2829
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2830
    if-eqz v0, :cond_0

    .line 2835
    iget v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    if-eqz p6, :cond_0

    .line 2845
    :cond_2
    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2866
    :try_start_0
    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2867
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_5

    .line 2953
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_4

    .line 2955
    invoke-virtual {v0, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_4
    if-eqz v3, :cond_0

    throw v3

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2959
    throw v3

    goto :goto_0

    .line 2871
    :cond_5
    :try_start_2
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2872
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v1

    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v1, v2, :cond_7

    .line 2873
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2953
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_6

    .line 2955
    invoke-virtual {v0, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_6
    if-eqz v3, :cond_0

    throw v3

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2959
    throw v3

    goto :goto_0

    .line 2878
    :cond_7
    :try_start_3
    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 2879
    if-nez v1, :cond_9

    .line 2880
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2953
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_8

    .line 2955
    invoke-virtual {v0, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_8
    if-eqz v3, :cond_0

    throw v3

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2959
    throw v3

    goto/16 :goto_0

    .line 2885
    :cond_9
    :try_start_4
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 2886
    :try_start_5
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2890
    sget-object v3, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2895
    :cond_a
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2899
    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2900
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_c

    .line 2901
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2902
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2953
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_b

    .line 2955
    invoke-virtual {v0, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_b
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2959
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2908
    :cond_c
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$13;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2933
    :goto_1
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2939
    :cond_d
    sget-object v3, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2942
    sget-object v3, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2943
    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2944
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2953
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-ne v1, v6, :cond_e

    .line 2955
    invoke-virtual {v0, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_e
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2959
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2946
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 2950
    :goto_2
    :try_start_8
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2953
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v3

    if-ne v3, v6, :cond_f

    .line 2955
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2957
    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v2

    if-ne v2, v6, :cond_10

    .line 2959
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_10
    throw v0

    .line 2953
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    .line 2946
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    .line 2929
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private processPendingRestoreToInbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Email"

    .line 2672
    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2804
    :cond_0
    :goto_0
    return-void

    .line 2679
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2680
    if-eqz v0, :cond_0

    .line 2709
    :try_start_0
    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2710
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_4

    .line 2796
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2798
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_3
    if-eqz v7, :cond_0

    throw v7

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2801
    throw v7

    goto :goto_0

    .line 2714
    :cond_4
    :try_start_2
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r2d209 check : processPendingRestoreToInbox oldBox name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2717
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_6

    .line 2718
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2796
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2798
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_5
    if-eqz v7, :cond_0

    throw v7

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2801
    throw v7

    goto :goto_0

    .line 2723
    :cond_6
    :try_start_3
    iget-object v0, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v0

    .line 2724
    if-nez v0, :cond_8

    .line 2725
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2796
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_7

    .line 2798
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_7
    if-eqz v7, :cond_0

    throw v7

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2801
    throw v7

    goto/16 :goto_0

    .line 2730
    :cond_8
    :try_start_4
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r2d209 check : processPendingRestoreToInbox newBox name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 2732
    :try_start_5
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2736
    sget-object v3, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2743
    :cond_9
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2747
    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2748
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_b

    .line 2749
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2796
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_a

    .line 2798
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2801
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2754
    :cond_b
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$12;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V

    .line 2775
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2781
    :cond_c
    sget-object v3, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2784
    sget-object v3, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2785
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2786
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2796
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_d

    .line 2798
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_d
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2801
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2788
    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 2792
    :goto_1
    :try_start_7
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2796
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v3

    if-ne v3, v6, :cond_e

    .line 2798
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2800
    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v2

    if-ne v2, v6, :cond_f

    .line 2801
    invoke-virtual {v1, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_f
    throw v0

    .line 2796
    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    .line 2788
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2277
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "accountKey=?"

    const-string v9, "mailboxKey"

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2281
    const-wide/16 v4, -0x1

    .line 2283
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r2d209 check : processPendingUpdatesSynchronous 1 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const/4 v6, 0x0

    .line 2290
    const/4 v7, 0x0

    .line 2291
    const/4 v8, 0x0

    .line 2293
    if-eqz p1, :cond_12

    .line 2294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v9, v0

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v10, v0

    invoke-static {v9, v10}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v9

    .line 2296
    if-eqz v9, :cond_12

    const-string v8, "pop3"

    iget-object v9, v9, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    move/from16 v17, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move-wide v6, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    .line 2300
    :goto_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2301
    const/4 v10, 0x0

    .line 2302
    const/4 v11, 0x0

    .line 2303
    const/4 v12, 0x0

    .line 2304
    const/4 v13, 0x0

    .line 2306
    const-class v8, Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v8

    check-cast v8, Lcom/android/email/provider/EmailContent$Message;

    .line 2308
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2309
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-wide v14, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v14, v15}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    .line 2311
    if-eqz v9, :cond_11

    .line 2312
    if-eqz v4, :cond_0

    iget-wide v6, v4, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v10, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    .line 2313
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-wide v6, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 2315
    :cond_1
    iget-wide v6, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v10, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    iget v6, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    .line 2318
    :goto_1
    iget-wide v10, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v12, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v7, v10, v12

    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    iget v7, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v7, :cond_7

    const/4 v7, 0x1

    .line 2321
    :goto_2
    iget-boolean v10, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v11, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v10, v11, :cond_8

    const/4 v10, 0x1

    .line 2322
    :goto_3
    iget-boolean v11, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v12, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_4
    move v14, v11

    move v13, v10

    move/from16 v20, v7

    move-object v7, v4

    move/from16 v4, v20

    .line 2326
    :goto_5
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    if-nez v13, :cond_2

    if-nez v14, :cond_2

    if-nez v4, :cond_2

    if-eqz p4, :cond_3

    .line 2327
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v5

    .line 2332
    :cond_3
    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    .line 2333
    if-nez p4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v10, p4

    .line 2335
    invoke-direct/range {v4 .. v10}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;Z)V

    .line 2348
    :cond_5
    :goto_6
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2350
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v7

    move-wide/from16 v6, v18

    .line 2351
    goto/16 :goto_0

    .line 2315
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 2318
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 2321
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 2322
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 2336
    :cond_a
    if-nez v17, :cond_e

    if-nez v13, :cond_b

    if-eqz v14, :cond_e

    :cond_b
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v7

    move-object v15, v9

    .line 2337
    invoke-direct/range {v10 .. v15}, Lcom/android/email/MessagingController;->processPendingFlagChange(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Mailbox;ZZLcom/android/email/provider/EmailContent$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 2353
    :catch_0
    move-exception v4

    move-wide/from16 v5, v18

    .line 2356
    :goto_7
    :try_start_3
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 2357
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to process pending update for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2361
    :cond_c
    if-eqz v16, :cond_d

    .line 2362
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2364
    :cond_d
    :goto_8
    return-void

    .line 2339
    :cond_e
    if-eqz v4, :cond_5

    .line 2341
    :try_start_4
    const-string v4, "Email"

    const-string v6, "r2d209 check : restore need"

    invoke-static {v4, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 2342
    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController;->processPendingRestoreToInbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 2361
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_f

    .line 2362
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v4

    .line 2361
    :cond_10
    if-eqz v16, :cond_d

    .line 2362
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 2353
    :catch_1
    move-exception v6

    move-object/from16 v20, v6

    move-wide/from16 v21, v4

    move-wide/from16 v5, v21

    move-object/from16 v4, v20

    goto :goto_7

    :catch_2
    move-exception v4

    move-wide v5, v6

    goto :goto_7

    :cond_11
    move v14, v13

    move v6, v10

    move-object v7, v4

    move v13, v12

    move v4, v11

    goto/16 :goto_5

    :cond_12
    move/from16 v17, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move-wide v6, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    goto/16 :goto_0
.end method

.method private processPendingUploadsSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2125
    sget-object v3, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? and type=5"

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2129
    const-wide/16 v2, -0x1

    .line 2133
    const/4 v4, 0x0

    .line 2135
    :try_start_0
    const-string v10, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v4

    move-wide v11, v2

    .line 2139
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2140
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2141
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 2143
    const/16 v16, 0x0

    .line 2146
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v5, v10

    move-object v6, v15

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v17

    move-wide/from16 v18, v11

    move-object v11, v8

    move-object/from16 v8, v16

    .line 2152
    :goto_1
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2154
    if-nez v11, :cond_d

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    move-object v4, v2

    .line 2159
    :goto_2
    if-nez v8, :cond_c

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2, v13, v14}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    move-object v6, v2

    .line 2163
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    .line 2165
    :try_start_3
    invoke-direct/range {v2 .. v8}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v11, v4

    move-wide/from16 v18, v7

    move-object v8, v6

    .line 2166
    goto :goto_1

    .line 2168
    :cond_0
    if-eqz v17, :cond_1

    .line 2169
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2175
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2176
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "=?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v6, v15

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v12

    move-object v2, v8

    move-object v3, v11

    move-wide/from16 v7, v18

    .line 2181
    :goto_4
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2183
    if-nez v3, :cond_b

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    move-object v4, v3

    .line 2188
    :goto_5
    if-nez v2, :cond_a

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2, v13, v14}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    move-object v6, v2

    .line 2192
    :goto_6
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    .line 2194
    invoke-direct/range {v2 .. v8}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v6

    move-object v3, v4

    .line 2195
    goto :goto_4

    .line 2168
    :catchall_0
    move-exception v2

    move-wide/from16 v3, v18

    :goto_7
    if-eqz v17, :cond_2

    .line 2169
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2202
    :catch_0
    move-exception v2

    .line 2205
    :goto_8
    :try_start_7
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 2206
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending upsync for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2210
    :cond_3
    if-eqz v9, :cond_4

    .line 2211
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2214
    :cond_4
    :goto_9
    return-void

    .line 2197
    :cond_5
    if-eqz v12, :cond_6

    .line 2198
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    move-wide v11, v7

    move-object v8, v3

    .line 2201
    goto/16 :goto_0

    .line 2197
    :catchall_1
    move-exception v2

    move-wide v3, v7

    if-eqz v12, :cond_7

    .line 2198
    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2210
    :catchall_2
    move-exception v2

    if-eqz v9, :cond_8

    .line 2211
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 2210
    :cond_9
    if-eqz v9, :cond_4

    .line 2211
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 2202
    :catch_1
    move-exception v4

    move-object/from16 v20, v4

    move-wide/from16 v21, v2

    move-wide/from16 v3, v21

    move-object/from16 v2, v20

    goto :goto_8

    :catch_2
    move-exception v2

    move-wide/from16 v3, v18

    goto :goto_8

    :catch_3
    move-exception v2

    move-wide v3, v7

    goto :goto_8

    :catch_4
    move-exception v2

    move-wide v3, v11

    goto :goto_8

    .line 2168
    :catchall_3
    move-exception v2

    move-wide v3, v7

    goto :goto_7

    :cond_a
    move-object v6, v2

    goto :goto_6

    :cond_b
    move-object v4, v3

    goto/16 :goto_5

    :cond_c
    move-object v6, v8

    goto/16 :goto_3

    :cond_d
    move-object v4, v11

    goto/16 :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, "Email"

    .line 2532
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p5, p6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2535
    if-nez v0, :cond_1

    .line 2536
    const/4 v0, 0x1

    .line 2537
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsync failed for null message, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    :goto_0
    if-eqz v0, :cond_0

    .line 2553
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2554
    invoke-virtual {p1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2556
    :cond_0
    return-void

    .line 2538
    :cond_1
    iget v1, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 2540
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    .line 2541
    :cond_2
    iget v1, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2543
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    .line 2544
    :cond_3
    iget v1, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 2546
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    .line 2548
    :cond_4
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsyc triggered for message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .locals 8
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    const-string v5, "MsgControl >>>"

    .line 207
    :try_start_0
    new-instance v1, Lcom/android/email/MessagingController$Command;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 208
    .local v1, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v1, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 209
    iput-object p3, v1, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 210
    iput-object p1, v1, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 211
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v5, :cond_0

    .line 212
    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< put cmd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | desc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    const-string v5, "synchronizeMailbox"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    .line 219
    .local v0, c:Lcom/android/email/MessagingController$Command;
    iget-object v5, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v5, :cond_2

    .line 222
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v4, sbuf:Ljava/lang/StringBuffer;
    const-string v5, "MsgControl >>>"

    const-string v6, "command : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_2
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0           #c:Lcom/android/email/MessagingController$Command;
    .end local v1           #command:Lcom/android/email/MessagingController$Command;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 233
    .local v3, ie:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 230
    .end local v3           #ie:Ljava/lang/IllegalStateException;
    .restart local v1       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    return-void
.end method

.method private saveOrUpdate(Lcom/android/email/provider/EmailContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 886
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/email/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private syncSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 57
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 453
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 454
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/email/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v51

    .line 455
    .local v51, totalMessages:I
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v51

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 697
    .end local v51           #totalMessages:I
    .end local p3
    :cond_1
    :goto_0
    return-object v6

    .line 458
    .restart local p3
    :cond_2
    const/16 v32, 0x0

    .line 459
    .local v32, localUidCursor:Landroid/database/Cursor;
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v30, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :try_start_0
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMessageInfo;->access$500()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "accountKey=? AND mailboxKey=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 471
    :goto_1
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 472
    new-instance v24, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 473
    .local v24, info:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 476
    .end local v24           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v32, :cond_3

    .line 477
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 476
    :cond_4
    if-eqz v32, :cond_5

    .line 477
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v50

    .line 482
    .local v50, storeUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v50

    move-object v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v45

    .line 483
    .local v45, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v45

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v39

    .line 485
    .local v39, remoteFolder:Lcom/android/email/mail/Folder;
    if-nez v39, :cond_6

    .line 490
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    .line 494
    :cond_6
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x5

    if-eq v6, v7, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    if-nez v6, :cond_9

    .line 496
    :cond_7
    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    .line 497
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 498
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    if-eqz v39, :cond_8

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 694
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 696
    :cond_8
    if-eqz v45, :cond_1

    .line 697
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_9
    :try_start_2
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 504
    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v41

    .line 508
    .local v41, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    move v6, v0

    move v0, v6

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v56, v0

    .line 511
    .local v56, visibleLimit:I
    if-gtz v56, :cond_a

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v24

    .line 514
    .local v24, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v24, :cond_a

    .line 515
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v56, v0

    .line 519
    .end local v24           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_a
    const/4 v6, 0x0

    move v0, v6

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v42, v0

    .line 520
    .local v42, remoteMessages:[Lcom/android/email/mail/Message;
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v52, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v48, Ljava/util/HashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    .line 523
    .local v48, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    const/16 v35, 0x0

    .line 524
    .local v35, newMessageCount:I
    if-lez v41, :cond_f

    .line 525
    const/4 v6, 0x0

    sub-int v7, v41, v56

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v44, v6, 0x1

    .line 526
    .local v44, remoteStart:I
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->getMessages(ILjava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v42

    .line 527
    if-eqz v42, :cond_f

    .line 528
    move-object/from16 v18, v42

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    aget-object v13, v18, v22

    .line 529
    .local v13, message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    move-object v1, v6

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 531
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_b
    move-object/from16 v18, v42

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    aget-object v13, v18, v22

    .line 532
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 533
    .local v28, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v28, :cond_c

    .line 534
    add-int/lit8 v35, v35, 0x1

    .line 535
    :cond_c
    if-eqz v28, :cond_d

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    if-eqz v6, :cond_d

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 538
    :cond_d
    move-object/from16 v0, v52

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 543
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v22           #i$:I
    .end local v26           #len$:I
    .end local v28           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v44           #remoteStart:I
    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v11, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 545
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 546
    .local v21, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v8, Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 551
    .local v8, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v52

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [Lcom/android/email/mail/Message;

    new-instance v6, Lcom/android/email/MessagingController$3;

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 600
    .end local v8           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v21           #fp:Lcom/android/email/mail/FetchProfile;
    :cond_10
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 601
    .restart local v21       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 602
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 603
    const/16 v47, 0x0

    .line 604
    .local v47, remoteSupportsSeen:Z
    const/16 v46, 0x0

    .line 605
    .local v46, remoteSupportsFlagged:Z
    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->getPermanentFlags()[Lcom/android/email/mail/Flag;

    move-result-object v18

    .local v18, arr$:[Lcom/android/email/mail/Flag;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    aget-object v20, v18, v22

    .line 606
    .local v20, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v20

    move-object v1, v6

    if-ne v0, v1, :cond_11

    .line 607
    const/16 v47, 0x1

    .line 609
    :cond_11
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v20

    move-object v1, v6

    if-ne v0, v1, :cond_12

    .line 610
    const/16 v46, 0x1

    .line 605
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 614
    .end local v20           #flag:Lcom/android/email/mail/Flag;
    :cond_13
    if-nez v47, :cond_14

    if-eqz v46, :cond_1c

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0

    if-eqz v6, :cond_1c

    .line 615
    move-object/from16 v18, v42

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    aget-object v40, v18, v22

    .line 616
    .local v40, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v40, :cond_16

    .line 615
    :cond_15
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 619
    :cond_16
    invoke-virtual/range {v40 .. v40}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 620
    .local v29, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-eqz v29, :cond_15

    .line 623
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v31, v0

    .line 624
    .local v31, localSeen:Z
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v43

    .line 625
    .local v43, remoteSeen:Z
    if-eqz v47, :cond_1a

    move/from16 v0, v43

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    const/4 v6, 0x1

    move/from16 v36, v6

    .line 626
    .local v36, newSeen:Z
    :goto_7
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v27, v0

    .line 627
    .local v27, localFlagged:Z
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v38

    .line 628
    .local v38, remoteFlagged:Z
    if-eqz v46, :cond_1b

    move/from16 v0, v27

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    const/4 v6, 0x1

    move/from16 v34, v6

    .line 629
    .local v34, newFlagged:Z
    :goto_8
    if-nez v36, :cond_17

    if-eqz v34, :cond_15

    .line 630
    :cond_17
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v54

    .line 632
    .local v54, uri:Landroid/net/Uri;
    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v53, updateValues:Landroid/content/ContentValues;
    const-string v6, "flagRead"

    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 634
    const-string v6, "flagFavorite"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 635
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v54

    move-object/from16 v2, v53

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 684
    .end local v11           #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v21           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v22           #i$:I
    .end local v26           #len$:I
    .end local v27           #localFlagged:Z
    .end local v29           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v31           #localSeen:Z
    .end local v34           #newFlagged:Z
    .end local v35           #newMessageCount:I
    .end local v36           #newSeen:Z
    .end local v38           #remoteFlagged:Z
    .end local v40           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v41           #remoteMessageCount:I
    .end local v42           #remoteMessages:[Lcom/android/email/mail/Message;
    .end local v43           #remoteSeen:Z
    .end local v46           #remoteSupportsFlagged:Z
    .end local v47           #remoteSupportsSeen:Z
    .end local v48           #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .end local v52           #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v53           #updateValues:Landroid/content/ContentValues;
    .end local v54           #uri:Landroid/net/Uri;
    .end local v56           #visibleLimit:I
    :catch_0
    move-exception v6

    move-object/from16 v33, v6

    .line 688
    .local v33, me:Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 691
    .end local v33           #me:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-eqz v39, :cond_18

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    .line 694
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 696
    :cond_18
    if-eqz v45, :cond_19

    .line 697
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_19
    throw v6

    .line 625
    .restart local v11       #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v18       #arr$:[Lcom/android/email/mail/Message;
    .restart local v21       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v22       #i$:I
    .restart local v26       #len$:I
    .restart local v29       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .restart local v31       #localSeen:Z
    .restart local v35       #newMessageCount:I
    .restart local v40       #remoteMessage:Lcom/android/email/mail/Message;
    .restart local v41       #remoteMessageCount:I
    .restart local v42       #remoteMessages:[Lcom/android/email/mail/Message;
    .restart local v43       #remoteSeen:Z
    .restart local v46       #remoteSupportsFlagged:Z
    .restart local v47       #remoteSupportsSeen:Z
    .restart local v48       #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .restart local v52       #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v56       #visibleLimit:I
    :cond_1a
    const/4 v6, 0x0

    move/from16 v36, v6

    goto :goto_7

    .line 628
    .restart local v27       #localFlagged:Z
    .restart local v36       #newSeen:Z
    .restart local v38       #remoteFlagged:Z
    :cond_1b
    const/4 v6, 0x0

    move/from16 v34, v6

    goto :goto_8

    .line 640
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v27           #localFlagged:Z
    .end local v29           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v31           #localSeen:Z
    .end local v36           #newSeen:Z
    .end local v38           #remoteFlagged:Z
    .end local v40           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v43           #remoteSeen:Z
    :cond_1c
    :try_start_4
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v25, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v49, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 643
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSize()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_1d

    .line 644
    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 646
    :cond_1d
    move-object/from16 v0, v49

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 650
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_1e
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    .end local v21           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 651
    .restart local v21       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v49

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/email/mail/Message;

    new-instance v6, Lcom/android/email/MessagingController$4;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 659
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 660
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 662
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22           #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 663
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 664
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 665
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 666
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 668
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto :goto_a

    .line 671
    :cond_1f
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v55}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v55, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v19, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v13

    move-object/from16 v1, v55

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 674
    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/mail/Part;

    .line 675
    .local v37, part:Lcom/android/email/mail/Part;
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 676
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 677
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    goto :goto_b

    .line 679
    .end local v37           #part:Lcom/android/email/mail/Part;
    :cond_20
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto/16 :goto_a

    .line 682
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v19           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v55           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_21
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v0, v6

    move/from16 v1, v41

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 691
    if-eqz v39, :cond_22

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_22

    .line 694
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 696
    :cond_22
    if-eqz v45, :cond_1

    .line 697
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxGeneric(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 72
    .parameter "account"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 896
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** synchronizeMailboxGeneric ***  : START "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 901
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 903
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/email/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v62

    .line 904
    .local v62, totalMessages:I
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v62

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 1435
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v62           #totalMessages:I
    :cond_1
    :goto_0
    return-object v6

    .line 909
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_2
    const/16 v36, 0x0

    .line 910
    .local v36, localUidCursor:Landroid/database/Cursor;
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v34, localMessageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    :try_start_0
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMessageInfo;->access$500()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "accountKey=? AND mailboxKey=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 924
    :goto_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 925
    new-instance v26, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 926
    .local v26, info:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 934
    .end local v26           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v36, :cond_3

    .line 935
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 934
    :cond_4
    if-eqz v36, :cond_5

    .line 935
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_5
    const/16 v53, 0x0

    .line 953
    .local v53, remoteStore:Lcom/android/email/mail/Store;
    const/16 v46, 0x0

    .line 954
    .local v46, remoteFolder:Lcom/android/email/mail/Folder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v60

    .line 956
    .local v60, storeUri:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v60

    move-object v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v53

    .line 957
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v53

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v46

    .line 965
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x6

    if-eq v6, v7, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x5

    if-eq v6, v7, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 967
    :cond_6
    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 968
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 969
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1430
    if-eqz v46, :cond_7

    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 1432
    const/4 v7, 0x0

    move-object/from16 v0, v46

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1434
    :cond_7
    if-eqz v53, :cond_1

    .line 1435
    invoke-static/range {v60 .. v60}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :cond_8
    const/16 v41, 0x0

    .line 978
    .local v41, newMessageCount:I
    :try_start_2
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v46

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 984
    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v48

    .line 987
    .local v48, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    move/from16 v71, v0

    .line 988
    .local v71, visibleLimit:I
    if-gtz v71, :cond_9

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v26

    .line 991
    .local v26, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v26, :cond_9

    .line 992
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v71, v0

    .line 997
    .end local v26           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v50, v0

    .line 998
    .local v50, remoteMessages:[Lcom/android/email/mail/Message;
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v65, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v58, Ljava/util/HashMap;

    invoke-direct/range {v58 .. v58}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v58, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 1002
    .local v55, remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    if-lez v48, :cond_e

    .line 1006
    const/4 v6, 0x0

    sub-int v7, v48, v71

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v52, v6, 0x1

    .line 1007
    .local v52, remoteStart:I
    move/from16 v44, v48

    .line 1008
    .local v44, remoteEnd:I
    const/16 v6, 0x3e8

    move/from16 v0, v71

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1009
    .local v30, limitMessageCount:I
    const/4 v6, 0x0

    sub-int v7, v48, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v54, v6, 0x1

    .line 1011
    .local v54, remoteStoreStart:I
    const/16 v49, 0x0

    .line 1013
    .local v49, remoteMessageSeqNum:I
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v52

    move/from16 v2, v44

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->getMessages(IILcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v50

    .line 1027
    move-object/from16 v18, v50

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    aget-object v13, v18, v24

    .line 1028
    .local v13, message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v63

    .line 1029
    .local v63, uid:Ljava/lang/String;
    move-object/from16 v0, v58

    move-object/from16 v1, v63

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    add-int v6, v49, v52

    move v0, v6

    move/from16 v1, v54

    if-lt v0, v1, :cond_a

    .line 1032
    move-object/from16 v0, v55

    move-object/from16 v1, v63

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :cond_a
    add-int/lit8 v49, v49, 0x1

    .line 1044
    move-object/from16 v0, v34

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1045
    .local v32, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v32, :cond_b

    .line 1046
    add-int/lit8 v41, v41, 0x1

    .line 1048
    :cond_b
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    if-nez v6, :cond_d

    .line 1051
    :cond_c
    move-object/from16 v0, v65

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    :cond_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1062
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v24           #i$:I
    .end local v29           #len$:I
    .end local v30           #limitMessageCount:I
    .end local v32           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v44           #remoteEnd:I
    .end local v49           #remoteMessageSeqNum:I
    .end local v52           #remoteStart:I
    .end local v54           #remoteStoreStart:I
    .end local v63           #uid:Ljava/lang/String;
    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v11, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const-string v6, "MsgControl >>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " us : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 1071
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1072
    .local v23, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1073
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v8, Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1077
    .local v8, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v65

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/android/email/mail/Message;

    move-object v12, v0

    new-instance v6, Lcom/android/email/MessagingController$6;

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v46

    move-object v1, v12

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1140
    .end local v8           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    :cond_f
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1141
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1142
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1143
    const/16 v57, 0x0

    .line 1144
    .local v57, remoteSupportsSeen:Z
    const/16 v56, 0x0

    .line 1145
    .local v56, remoteSupportsFlagged:Z
    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->getPermanentFlags()[Lcom/android/email/mail/Flag;

    move-result-object v18

    .local v18, arr$:[Lcom/android/email/mail/Flag;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    aget-object v22, v18, v24

    .line 1146
    .local v22, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v22

    move-object v1, v6

    if-ne v0, v1, :cond_10

    .line 1147
    const/16 v57, 0x1

    .line 1149
    :cond_10
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v22

    move-object v1, v6

    if-ne v0, v1, :cond_11

    .line 1150
    const/16 v56, 0x1

    .line 1145
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1154
    .end local v22           #flag:Lcom/android/email/mail/Flag;
    :cond_12
    if-nez v57, :cond_13

    if-eqz v56, :cond_1b

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0

    if-eqz v6, :cond_1b

    .line 1155
    move-object/from16 v18, v50

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    aget-object v47, v18, v24

    .line 1156
    .local v47, remoteMessage:Lcom/android/email/mail/Message;
    invoke-virtual/range {v47 .. v47}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1157
    .local v33, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v33, :cond_15

    .line 1155
    :cond_14
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1160
    :cond_15
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v35, v0

    .line 1161
    .local v35, localSeen:Z
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v51

    .line 1162
    .local v51, remoteSeen:Z
    if-eqz v57, :cond_19

    move/from16 v0, v51

    move/from16 v1, v35

    if-eq v0, v1, :cond_19

    const/4 v6, 0x1

    move/from16 v42, v6

    .line 1163
    .local v42, newSeen:Z
    :goto_6
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v31, v0

    .line 1164
    .local v31, localFlagged:Z
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v45

    .line 1165
    .local v45, remoteFlagged:Z
    if-eqz v56, :cond_1a

    move/from16 v0, v31

    move/from16 v1, v45

    if-eq v0, v1, :cond_1a

    const/4 v6, 0x1

    move/from16 v40, v6

    .line 1166
    .local v40, newFlagged:Z
    :goto_7
    if-nez v42, :cond_16

    if-eqz v40, :cond_14

    .line 1167
    :cond_16
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v68

    .line 1169
    .local v68, uri:Landroid/net/Uri;
    new-instance v67, Landroid/content/ContentValues;

    invoke-direct/range {v67 .. v67}, Landroid/content/ContentValues;-><init>()V

    .line 1170
    .local v67, updateValues:Landroid/content/ContentValues;
    const-string v6, "flagRead"

    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v67

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1171
    const-string v6, "flagFavorite"

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v67

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1172
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v68

    move-object/from16 v2, v67

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1422
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v11           #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v24           #i$:I
    .end local v29           #len$:I
    .end local v31           #localFlagged:Z
    .end local v33           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v35           #localSeen:Z
    .end local v40           #newFlagged:Z
    .end local v41           #newMessageCount:I
    .end local v42           #newSeen:Z
    .end local v45           #remoteFlagged:Z
    .end local v47           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v48           #remoteMessageCount:I
    .end local v50           #remoteMessages:[Lcom/android/email/mail/Message;
    .end local v51           #remoteSeen:Z
    .end local v55           #remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .end local v56           #remoteSupportsFlagged:Z
    .end local v57           #remoteSupportsSeen:Z
    .end local v58           #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .end local v65           #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v67           #updateValues:Landroid/content/ContentValues;
    .end local v68           #uri:Landroid/net/Uri;
    .end local v71           #visibleLimit:I
    :catch_0
    move-exception v6

    move-object/from16 v38, v6

    .line 1426
    .local v38, me:Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1430
    .end local v38           #me:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-eqz v46, :cond_17

    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    .line 1432
    const/4 v7, 0x0

    move-object/from16 v0, v46

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1434
    :cond_17
    if-eqz v53, :cond_18

    .line 1435
    invoke-static/range {v60 .. v60}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_18
    throw v6

    .line 1162
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v18       #arr$:[Lcom/android/email/mail/Message;
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v24       #i$:I
    .restart local v29       #len$:I
    .restart local v33       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .restart local v35       #localSeen:Z
    .restart local v41       #newMessageCount:I
    .restart local v47       #remoteMessage:Lcom/android/email/mail/Message;
    .restart local v48       #remoteMessageCount:I
    .restart local v50       #remoteMessages:[Lcom/android/email/mail/Message;
    .restart local v51       #remoteSeen:Z
    .restart local v55       #remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .restart local v56       #remoteSupportsFlagged:Z
    .restart local v57       #remoteSupportsSeen:Z
    .restart local v58       #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .restart local v65       #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v71       #visibleLimit:I
    :cond_19
    const/4 v6, 0x0

    move/from16 v42, v6

    goto :goto_6

    .line 1165
    .restart local v31       #localFlagged:Z
    .restart local v42       #newSeen:Z
    .restart local v45       #remoteFlagged:Z
    :cond_1a
    const/4 v6, 0x0

    move/from16 v40, v6

    goto :goto_7

    .line 1211
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v31           #localFlagged:Z
    .end local v33           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v35           #localSeen:Z
    .end local v42           #newSeen:Z
    .end local v45           #remoteFlagged:Z
    .end local v47           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v51           #remoteSeen:Z
    :cond_1b
    :try_start_4
    new-instance v37, Ljava/util/HashSet;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1226
    .local v37, localUidsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-lez v48, :cond_1c

    .line 1233
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1239
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v6, :cond_1e

    .line 1241
    :try_start_5
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1246
    .local v64, uidToDelete:Ljava/lang/String;
    if-nez v64, :cond_1f

    .line 1297
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v64           #uidToDelete:Ljava/lang/String;
    :cond_1e
    :try_start_6
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v28, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    .local v59, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 1300
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSize()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_22

    .line 1301
    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    .line 1250
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v28           #largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v59           #smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v64       #uidToDelete:Ljava/lang/String;
    :cond_1f
    :try_start_7
    const-string v6, "LocalAccountMoved-"

    move-object/from16 v0, v64

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1255
    move-object/from16 v0, v34

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1259
    .local v27, infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagAttachment:Z

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide v7, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v9, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1264
    :cond_20
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v69

    .line 1266
    .local v69, uriToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v69

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1269
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v61

    .line 1272
    .local v61, syncRowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v61

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1273
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1276
    .local v20, deleteRowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1277
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v66

    .line 1279
    .local v66, updateRowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v66

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_8

    .line 1283
    .end local v20           #deleteRowToDelete:Landroid/net/Uri;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v61           #syncRowToDelete:Landroid/net/Uri;
    .end local v64           #uidToDelete:Ljava/lang/String;
    .end local v66           #updateRowToDelete:Landroid/net/Uri;
    .end local v69           #uriToDelete:Landroid/net/Uri;
    :catch_1
    move-exception v6

    move-object/from16 v21, v6

    .line 1284
    .local v21, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1285
    const/4 v6, 0x0

    .line 1430
    if-eqz v46, :cond_21

    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 1432
    const/4 v7, 0x0

    move-object/from16 v0, v46

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1434
    :cond_21
    if-eqz v53, :cond_1

    .line 1435
    invoke-static/range {v60 .. v60}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1303
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v13       #message:Lcom/android/email/mail/Message;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v28       #largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v59       #smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    :cond_22
    :try_start_9
    move-object/from16 v0, v59

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1314
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_23
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1315
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolver:Landroid/content/ContentResolver;
    check-cast v5, [Lcom/android/email/mail/Message;

    new-instance v6, Lcom/android/email/MessagingController$7;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController$7;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v46

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1332
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1333
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1334
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1336
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v24           #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 1337
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    if-nez v6, :cond_24

    .line 1338
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1339
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1340
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v46

    move-object v1, v6

    move-object/from16 v2, v23

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1341
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto :goto_a

    .line 1345
    :cond_24
    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v70, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v19, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v13

    move-object/from16 v1, v70

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1349
    const/16 v39, 0x0

    .line 1350
    .local v39, nViewFileSize:I
    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/email/mail/Part;

    .line 1351
    .local v43, part:Lcom/android/email/mail/Part;
    invoke-interface/range {v43 .. v43}, Lcom/android/email/mail/Part;->getSize()I

    move-result v6

    add-int v39, v39, v6

    goto :goto_b

    .line 1353
    .end local v43           #part:Lcom/android/email/mail/Part;
    :cond_25
    const/16 v6, 0x6400

    move/from16 v0, v39

    move v1, v6

    if-le v0, v1, :cond_26

    .line 1354
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto :goto_a

    .line 1358
    :cond_26
    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/email/mail/Part;

    .line 1359
    .restart local v43       #part:Lcom/android/email/mail/Part;
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1360
    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1361
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v46

    move-object v1, v6

    move-object/from16 v2, v23

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    goto :goto_c

    .line 1363
    .end local v43           #part:Lcom/android/email/mail/Part;
    :cond_27
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto/16 :goto_a

    .line 1419
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v19           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v39           #nViewFileSize:I
    .end local v70           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_28
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** synchronizeMailboxGeneric ***  : END "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-object v0, v6

    move/from16 v1, v48

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1430
    if-eqz v46, :cond_29

    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_29

    .line 1432
    const/4 v7, 0x0

    move-object/from16 v0, v46

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1434
    :cond_29
    if-eqz v53, :cond_1

    .line 1435
    invoke-static/range {v60 .. v60}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 10
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 427
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 430
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 431
    .local v8, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v8}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 433
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 434
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .line 438
    .local v9, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    iget v5, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 446
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 436
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v8       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .restart local v9       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_0

    .line 440
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 444
    .local v5, e:Lcom/android/email/mail/MessagingException;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 10
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 809
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 814
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 815
    .local v8, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v8}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 816
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .line 822
    .local v9, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    if-eqz v9, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    iget v5, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 836
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 819
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v8       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .restart local v9       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 830
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 834
    .local v5, e:Lcom/android/email/mail/MessagingException;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 239
    return-void
.end method

.method public cancelLoadRemoteMessage(J)V
    .locals 6
    .parameter

    .prologue
    const-string v5, "loadMessageForViewRemote"

    const-string v4, "MsgControl >>>"

    .line 3327
    iget-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    .line 3328
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    const-string v3, "loadMessageForViewRemote"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3329
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v2, :cond_1

    .line 3330
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3331
    const-string v3, "MsgControl >>>"

    const-string v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "loadMessageForViewRemote"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    :cond_1
    const-string v2, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelLoadRemoteMessage Before : mCommands.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 3335
    const-string v0, "MsgControl >>>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelLoadRemoteMessage After : mCommands.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3339
    :cond_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V

    .line 3340
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3900
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 3903
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 3906
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$17;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$17;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3938
    return-void
.end method

.method public getLimitMessageCount()I
    .locals 5

    .prologue
    const-string v4, "account_recent_messages_limit"

    .line 787
    const/16 v0, 0x19

    .line 789
    .local v0, limitMessageCount:I
    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "account_recent_messages_limit"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "account_recent_messages_limit"

    const-string v3, "25"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, recentMessageCount:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 794
    .end local v1           #recentMessageCount:Ljava/lang/String;
    :cond_0
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limitMessageCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return v0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .locals 3
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 294
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 298
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3610
    if-nez v5, :cond_0

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v4, v0

    const-string v11, "Attachment is null"

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    .line 3749
    :goto_0
    return-void

    .line 3615
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v4, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v11, v5

    :goto_1
    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 3618
    const-string v15, "loadAttachment"

    new-instance v4, Lcom/android/email/MessagingController$15;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p7

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v14, p10

    invoke-direct/range {v4 .. v14}, Lcom/android/email/MessagingController$15;-><init>(Lcom/android/email/MessagingController;JJJJZ)V

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p9

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3615
    :cond_1
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1
.end method

.method public loadAttachmentSyncronous(JJJJ)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v7

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v8, v0

    move-object v0, v8

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v8

    .line 1820
    const/4 v13, 0x0

    .line 1821
    const/4 v14, 0x0

    .line 1822
    const/4 v15, 0x0

    .line 1826
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v8, :cond_3

    .line 1827
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v5, v0

    const-string v12, "Account, mailbox, message or attachment are null"

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1829
    const/4 v5, 0x0

    .line 1890
    if-eqz v14, :cond_1

    throw v14

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1892
    const/4 v6, 0x0

    throw v14

    .line 1894
    :cond_1
    if-eqz v13, :cond_2

    if-eqz v15, :cond_2

    .line 1895
    invoke-static {v15}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v5

    .line 1832
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v5, v9}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 1834
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v9

    .line 1835
    :try_start_3
    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    .line 1836
    if-nez v6, :cond_6

    .line 1841
    const/4 v7, 0x0

    .line 1890
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 1892
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_4
    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    .line 1895
    invoke-static {v5}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_5
    move v5, v7

    goto :goto_0

    .line 1843
    :cond_6
    :try_start_4
    sget-object v10, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 1848
    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/email/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v7

    .line 1849
    new-instance v10, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct {v10}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 1850
    iget-wide v11, v8, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/android/email/mail/internet/MimeBodyPart;->setSize(I)V

    .line 1851
    const-string v11, "X-Android-Attachment-StoreData"

    iget-object v12, v8, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v11, "Content-Type"

    const-string v12, "%s;\n name=\"%s\""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v8, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v11, "Content-Transfer-Encoding"

    const-string v12, "base64"

    invoke-virtual {v10, v11, v12}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    new-instance v11, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {v11}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 1862
    const-string v12, "mixed"

    invoke-virtual {v11, v12}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v11, v10}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 1865
    const-string v12, "Content-Type"

    const-string v13, "multipart/mixed"

    invoke-virtual {v7, v12, v13}, Lcom/android/email/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v7, v11}, Lcom/android/email/mail/Message;->setBody(Lcom/android/email/mail/Body;)V

    .line 1870
    new-instance v11, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1871
    invoke-virtual {v11, v10}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1872
    const/4 v12, 0x1

    new-array v12, v12, [Lcom/android/email/mail/Message;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v11, v7}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v10

    move-object v2, v8

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/email/mail/Part;Lcom/android/email/provider/EmailContent$Attachment;J)V

    .line 1876
    iget-object v7, v8, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    .line 1890
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_7

    .line 1892
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_7
    if-eqz v9, :cond_8

    if-eqz v5, :cond_8

    .line 1895
    invoke-static {v5}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_8
    move v5, v7

    goto/16 :goto_0

    .line 1876
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 1878
    :catch_0
    move-exception v5

    move-object v5, v15

    move-object v6, v14

    move-object v7, v13

    .line 1880
    :goto_2
    const/4 v8, 0x0

    .line 1890
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 1892
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_a
    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    .line 1895
    invoke-static {v5}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_b
    move v5, v8

    goto/16 :goto_0

    .line 1881
    :catch_1
    move-exception v5

    move-object v6, v15

    move-object v7, v14

    move-object v8, v13

    .line 1882
    :goto_3
    :try_start_5
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while storing attachment."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1883
    const/4 v5, 0x0

    .line 1890
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 1892
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_c
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1895
    invoke-static {v6}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1885
    :catch_2
    move-exception v5

    move-object v6, v15

    move-object v7, v14

    move-object v8, v13

    .line 1886
    :goto_4
    :try_start_6
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while storing attachment."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1887
    const/4 v5, 0x0

    .line 1890
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1892
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_d
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1895
    invoke-static {v6}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1890
    :catchall_0
    move-exception v5

    move-object v6, v15

    move-object v7, v14

    move-object v8, v13

    :goto_5
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 1892
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1894
    :cond_e
    if-eqz v8, :cond_f

    if-eqz v6, :cond_f

    .line 1895
    invoke-static {v6}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_f
    throw v5

    .line 1890
    :catchall_1
    move-exception v6

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object v7, v14

    move-object v8, v9

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto :goto_5

    :catchall_3
    move-exception v7

    move-object v8, v9

    move-object/from16 v16, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto :goto_5

    :catchall_4
    move-exception v5

    goto :goto_5

    .line 1885
    :catch_3
    move-exception v6

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto :goto_4

    :catch_4
    move-exception v6

    move-object v7, v14

    move-object v8, v9

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto :goto_4

    :catch_5
    move-exception v7

    move-object v8, v9

    move-object/from16 v16, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto/16 :goto_4

    .line 1881
    :catch_6
    move-exception v6

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_7
    move-exception v6

    move-object v7, v14

    move-object v8, v9

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_8
    move-exception v7

    move-object v8, v9

    move-object/from16 v16, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto/16 :goto_3

    .line 1878
    :catch_9
    move-exception v6

    move-object v6, v14

    move-object v7, v13

    goto/16 :goto_2

    :catch_a
    move-exception v6

    move-object v6, v14

    move-object v7, v9

    goto/16 :goto_2

    :catch_b
    move-exception v7

    move-object v7, v9

    goto/16 :goto_2
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 3351
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3495
    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/HashSet;JJJJJII)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    .prologue
    .line 1715
    const-string v19, "processPendingAccountMoveActions"

    const/16 v20, 0x0

    new-instance v4, Lcom/android/email/MessagingController$10;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-direct/range {v4 .. v18}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashSet;JJJJJII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1808
    return-void
.end method

.method public processPendingActions(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1666
    .line 1667
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;JZ)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1688
    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 17
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
    .line 2032
    const-wide/16 v5, -0x1

    .line 2035
    const/4 v7, 0x0

    .line 2037
    const/4 v8, 0x0

    .line 2040
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    .line 2042
    if-eqz v9, :cond_5

    .line 2043
    iget-wide v5, v9, Lcom/android/email/provider/EmailContent;->mId:J

    .line 2044
    if-eqz v8, :cond_0

    throw v8

    throw v9

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 2045
    :cond_0
    iget-wide v10, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-wide v12, v5

    move-object v5, v8

    .line 2050
    :goto_0
    if-nez v7, :cond_4

    .line 2051
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v6

    .line 2054
    :goto_1
    if-eqz v5, :cond_1

    .line 2055
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V

    .line 2058
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, p8

    move v1, v5

    if-ne v0, v1, :cond_2

    .line 2061
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-wide/from16 v3, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2063
    const-string v5, "processPendingDeletesForeverSynchronous"

    const-string v6, "target_server_type is IMAP"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2065
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2103
    :goto_2
    return-void

    .line 2069
    :cond_2
    const-string v5, "processPendingDeletesForeverSynchronous"

    const-string v6, "target_server_type is POP"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2081
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v6

    .line 2082
    if-eqz v6, :cond_3

    .line 2083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalAccountMoved-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2085
    const-string v7, "accountKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2086
    const-string v7, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2087
    const-string v7, "syncServerId"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :cond_3
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2091
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    move-wide/from16 v10, p10

    invoke-static/range {v5 .. v11}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2098
    :catch_0
    move-exception v5

    move-wide v6, v12

    .line 2099
    :goto_3
    :try_start_2
    const-string v8, "processPendingDeletesForeverSynchronous"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to process pending delete for id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 2101
    :catchall_0
    move-exception v5

    throw v5

    .line 2098
    :catch_1
    move-exception v7

    move-object v14, v7

    move-wide v15, v5

    move-wide v6, v15

    move-object v5, v14

    goto :goto_3

    :cond_4
    move-object v6, v7

    goto/16 :goto_1

    :cond_5
    move-wide v12, v5

    move-object v5, v8

    goto/16 :goto_0
.end method

.method public processPendingMoveActions(Ljava/util/HashSet;JJJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 1692
    const-string v9, "processPendingMoveActions"

    const/4 v10, 0x0

    new-instance v0, Lcom/android/email/MessagingController$9;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;JLjava/util/HashSet;JJ)V

    invoke-direct {p0, v9, v10, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1707
    return-void
.end method

.method pruneCachedAttachments(J)V
    .locals 18
    .parameter "accountId"

    .prologue
    .line 3758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3759
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v11

    .line 3760
    .local v11, cacheDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 3762
    .local v13, fileList:[Ljava/io/File;
    if-nez v13, :cond_1

    .line 3800
    :cond_0
    return-void

    .line 3763
    :cond_1
    move-object v9, v13

    .local v9, arr$:[Ljava/io/File;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v12, v9, v14

    .line 3764
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3768
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 3769
    .local v15, id:J
    sget-object v5, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3770
    .local v4, uri:Landroid/net/Uri;
    sget-object v5, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 3772
    .local v10, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3775
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3780
    :cond_2
    if-eqz v10, :cond_3

    .line 3781
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3763
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3780
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :cond_4
    if-eqz v10, :cond_5

    .line 3781
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3786
    :cond_5
    sget-object v5, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3795
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3796
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 3780
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_6

    .line 3781
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3791
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "MsgControl >>>"

    .line 179
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 184
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    :cond_0
    iput-boolean v6, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 190
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v3, :cond_1

    .line 192
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v2, sbuf:Ljava/lang/StringBuffer;
    const-string v3, "MsgControl >>>"

    const-string v3, "run >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "desc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " | cmd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 196
    iget-object v3, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 197
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v3, :cond_2

    .line 198
    const-string v3, "MsgControl >>>"

    const-string v3, "run finish >>>"

    invoke-static {v7, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    iput-boolean v5, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_0

    .line 185
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 186
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    move v4, v5

    .line 196
    goto :goto_1
.end method

.method public searchOnServerSync(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 413
    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 416
    const-string v0, "searchOnServerSync"

    new-instance v1, Lcom/android/email/MessagingController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3810
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$16;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3815
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;J)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 3826
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    .line 3827
    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-nez v0, :cond_0

    .line 3885
    :goto_0
    return-void

    .line 3830
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3831
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3837
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_1

    .line 3883
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3841
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 3843
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v8

    .line 3844
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 3845
    invoke-virtual {v1}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v9

    .line 3846
    const/4 v1, 0x0

    .line 3847
    if-eqz v9, :cond_4

    .line 3848
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3849
    const-string v2, "mailboxKey"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v10, v1

    .line 3853
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 3854
    const-wide/16 v1, -0x1

    .line 3856
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3857
    iget-object v3, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v4, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 3858
    invoke-virtual {v8, v1, v2}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3865
    :try_start_3
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3867
    if-eqz v9, :cond_2

    .line 3868
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3880
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 3881
    :try_start_4
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3883
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3859
    :catch_1
    move-exception v3

    move-object v6, v3

    move-wide v4, v1

    .line 3861
    :try_start_5
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3883
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3870
    :cond_2
    :try_start_6
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3871
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3873
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3874
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3878
    :cond_3
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 3883
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    move-object v10, v1

    goto :goto_1
.end method

.method public setRemoteSync(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3942
    iput-boolean p1, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 3943
    return-void
.end method

.method public synchronizeMailbox(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 776
    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 780
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "m_content"

    .line 1460
    iget v0, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eqz v0, :cond_0

    move v0, v5

    .line 1519
    :goto_0
    return v0

    .line 1464
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1466
    :try_start_0
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | contactid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | messageid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | m_subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v1, "date"

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1473
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    const-string v1, "number"

    invoke-virtual {p2}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v1, "contactid"

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1476
    const-string v1, "messageid"

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1477
    const-string v1, "m_subject"

    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v1, "new"

    iget-boolean v2, p3, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v2, :cond_1

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    iget-object v1, p4, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 1488
    iget-object v2, p4, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1489
    const-string v3, ""

    .line 1491
    if-eqz v1, :cond_2

    .line 1502
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_3

    .line 1503
    const-string v2, "m_content"

    const/4 v3, 0x0

    const/16 v4, 0x31

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1515
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1518
    :goto_4
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    move v0, v6

    .line 1519
    goto/16 :goto_0

    :cond_1
    move v2, v6

    .line 1480
    goto :goto_1

    .line 1494
    :cond_2
    if-eqz v2, :cond_4

    .line 1495
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1496
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1497
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1505
    :cond_3
    const-string v2, "m_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 1506
    :catch_0
    move-exception v1

    .line 1508
    invoke-virtual {v1}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    .line 1509
    :catch_1
    move-exception v1

    .line 1510
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while updating History For Email."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1516
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1511
    :catch_3
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method
