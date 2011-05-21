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
.field private static FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag; = null

.field private static FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag; = null

.field public static final LOCAL_ACCOUNTMOVED_SERVERID_PREFIX:Ljava/lang/String; = "LocalAccountMoved-"

.field private static final LOCAL_SERVERID_PREFIX:Ljava/lang/String; = "Local-"

.field private static final MAX_SMALL_MESSAGE_SIZE:I = 0x6400

.field private static final PREFERENCE_RECENT_MESSAGES:Ljava/lang/String; = "account_recent_messages_limit"

.field private static PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues; = null

.field private static PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MsgControl >>>"

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

    .line 106
    new-array v0, v3, [Lcom/android/email/mail/Flag;

    sget-object v1, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag;

    .line 107
    new-array v0, v3, [Lcom/android/email/mail/Flag;

    sget-object v1, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    const-string v1, "contentId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 126
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 136
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 145
    iput-object p1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
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
    .line 83
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
    .line 83
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
    .line 83
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
    .line 83
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/email/provider/EmailContent$Account;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
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
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
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
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method private copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V
    .locals 21
    .parameter "message"
    .parameter "account"
    .parameter "folder"
    .parameter "loadStatus"
    .parameter "updateHistory"

    .prologue
    .line 1541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1546
    :cond_0
    const/16 v16, 0x0

    .line 1547
    .local v16, localMessage:Lcom/android/email/provider/EmailContent$Message;
    const/4 v13, 0x0

    .line 1549
    .local v13, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1561
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1562
    const-class v6, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v13, v6}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v5

    check-cast v5, Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    .end local v16           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .local v5, localMessage:Lcom/android/email/provider/EmailContent$Message;
    :goto_1
    if-eqz v13, :cond_1

    .line 1569
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_1
    if-nez v5, :cond_3

    .line 1573
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve message from db, UUID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 1629
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 1630
    .local v18, rte:Ljava/lang/RuntimeException;
    :goto_2
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while storing downloaded message."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1565
    .end local v5           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v18           #rte:Ljava/lang/RuntimeException;
    .restart local v16       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    :catchall_0
    move-exception v6

    if-eqz v13, :cond_2

    .line 1569
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1629
    :catch_1
    move-exception v6

    move-object/from16 v18, v6

    move-object/from16 v5, v16

    .end local v16           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v5       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_2

    .line 1578
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v12

    .line 1580
    .local v12, body:Lcom/android/email/provider/EmailContent$Body;
    if-nez v12, :cond_4

    .line 1581
    new-instance v12, Lcom/android/email/provider/EmailContent$Body;

    .end local v12           #body:Lcom/android/email/provider/EmailContent$Body;
    invoke-direct {v12}, Lcom/android/email/provider/EmailContent$Body;-><init>()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1585
    .restart local v12       #body:Lcom/android/email/provider/EmailContent$Body;
    :cond_4
    :try_start_4
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    move-wide v9, v0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Message;JJ)Z

    .line 1589
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v20, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1593
    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/email/LegacyConversions;->updateBodyFields(Lcom/android/email/provider/EmailContent$Body;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1595
    const-string v6, "MsgControl >>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "m : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " b : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/email/provider/EmailContent$Body;->isSaved()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " f : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v12}, Lcom/android/email/provider/EmailContent$Body;->isSaved()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1598
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z

    .line 1603
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/email/provider/EmailContent;)V

    .line 1604
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/email/provider/EmailContent;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v5, v11, v7}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;Z)V

    .line 1611
    move/from16 v0, p4

    move-object v1, v5

    iput v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1613
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1614
    .local v14, cv:Landroid/content/ContentValues;
    const-string v6, "flagAttachment"

    iget-boolean v7, v5, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1618
    const-string v6, "flagLoaded"

    iget v7, v5, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v8, v5, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v8, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1623
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move-object v2, v14

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1625
    .end local v11           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v20           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_2
    move-exception v6

    move-object/from16 v17, v6

    .line 1626
    .local v17, me:Lcom/android/email/mail/MessagingException;
    :try_start_5
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while copying downloaded message."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1631
    .end local v12           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local v17           #me:Lcom/android/email/mail/MessagingException;
    :catch_3
    move-exception v6

    move-object v15, v6

    .line 1632
    .local v15, ioe:Ljava/io/IOException;
    :goto_3
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while storing attachment."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1631
    .end local v5           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v15           #ioe:Ljava/io/IOException;
    .restart local v16       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    :catch_4
    move-exception v6

    move-object v15, v6

    move-object/from16 v5, v16

    .end local v16           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v5       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_3

    .end local v5           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v16       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    :cond_6
    move-object/from16 v5, v16

    .end local v16           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v5       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;
    .locals 2
    .parameter "_context"

    .prologue
    .line 159
    const-class v0, Lcom/android/email/MessagingController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/android/email/MessagingController;

    invoke-direct {v1, p0}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    .line 162
    :cond_0
    sget-object v1, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter "mockController"

    .prologue
    .line 169
    sput-object p0, Lcom/android/email/MessagingController;->inst:Lcom/android/email/MessagingController;

    .line 170
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 245
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
    .line 3423
    const/4 v10, 0x0

    .line 3424
    .local v10, remoteStore:Lcom/android/email/mail/Store;
    const/4 v9, 0x0

    .line 3425
    .local v9, remoteFolder:Lcom/android/email/mail/Folder;
    const/4 v12, 0x0

    .line 3429
    .local v12, storeUri:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 3431
    .local v8, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v8, :cond_2

    .line 3432
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_0

    throw v9

    #Unreachable code
    #move-result v1

    #if-eqz v1, :cond_0

    .line 3498
    #const/4 v1, 0x0

    #throw v9

    .line 3500
    :cond_0
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    :goto_0
    return v0

    .line 3434
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

    .line 3435
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_3

    throw v9

    #Unreachable code
    #move-result v1

    #if-eqz v1, :cond_3

    .line 3498
    #const/4 v1, 0x0

    #throw v9

    .line 3500
    :cond_3
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3441
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 3443
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 3445
    .local v3, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_5

    if-nez v3, :cond_7

    .line 3446
    :cond_5
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_6

    throw v9

    #Unreachable code
    #move-result v1

    #if-eqz v1, :cond_6

    .line 3498
    #const/4 v1, 0x0

    #throw v9

    .line 3500
    :cond_6
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3448
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 3449
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v10

    .line 3450
    iget-object v0, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v9

    .line 3451
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3474
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 3475
    .local v1, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v1, :cond_9

    .line 3476
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    .end local v1           #remoteMessage:Lcom/android/email/mail/Message;
    if-eqz v1, :cond_8

    .line 3498
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3500
    :cond_8
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3479
    .restart local v1       #remoteMessage:Lcom/android/email/mail/Message;
    :cond_9
    :try_start_4
    new-instance v6, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3480
    .local v6, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v0, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3481
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v6, v4}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 3484
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    .line 3486
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3488
    const/4 v0, 0x1

    .line 3497
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    .end local v1           #remoteMessage:Lcom/android/email/mail/Message;
    if-eqz v1, :cond_a

    .line 3498
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3500
    :cond_a
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3490
    .end local v2           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v6           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3492
    .local v7, me:Lcom/android/email/mail/MessagingException;
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3498
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3500
    :cond_b
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3493
    .end local v7           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 3494
    .local v11, rte:Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    .line 3497
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3498
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3500
    :cond_c
    if-eqz v10, :cond_1

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3497
    .end local v11           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3498
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3500
    :cond_d
    if-eqz v10, :cond_e

    .line 3501
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_e
    throw v0
.end method

.method private processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;J)Z
    .locals 11
    .parameter "resolver"
    .parameter "remoteStore"
    .parameter "account"
    .parameter "target_accountId"
    .parameter "target_mailbox"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2514
    const/4 v10, 0x0

    .line 2516
    .local v10, bret:Z
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, v3

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    .line 2518
    .local v9, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v9, :cond_0

    .line 2519
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync failed for null message, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :goto_0
    return v10

    .line 2520
    :cond_0
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2521
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :cond_1
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2523
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2525
    :cond_2
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upsyc triggered for message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 2526
    invoke-direct/range {v3 .. v9}, Lcom/android/email/MessagingController;->processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v10

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
    .line 1915
    const/4 v12, 0x0

    .line 1916
    .local v12, bret:Z
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1917
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

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

    .line 1919
    invoke-direct/range {v2 .. v11}, Lcom/android/email/MessagingController;->processPendingAccountMoveUploadsSynchronous(JJLcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z

    move-result v12

    .line 1921
    return v12
.end method

.method private processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 9
    .parameter "remoteStore"
    .parameter "account"
    .parameter "target_accountId"
    .parameter "target_mailbox"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3139
    const/4 v3, 0x0

    .line 3141
    .local v3, oldServerId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3144
    .local v4, remoteFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v6, p5, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v4

    .line 3145
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3146
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->canCreate(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3149
    const-string v6, "processPendingAccountMoveAppend"

    const-string v7, "This Pop account do not allowed upload sync. So we will just local move."

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3159
    const/4 v6, 0x1

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_0
    :goto_0
    return v6

    .line 3161
    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 3163
    const/4 v6, 0x0

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3166
    :cond_2
    :try_start_2
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3167
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v6, v7, :cond_3

    .line 3168
    const-string v6, "processPendingAccountMoveAppend"

    const-string v7, "remoteFolder.getMode() != OpenMode.READ_WRITE."

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3170
    const/4 v6, 0x0

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3174
    :cond_3
    const/4 v5, 0x0

    .line 3175
    .local v5, remoteMessage:Lcom/android/email/mail/Message;
    :try_start_3
    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 3176
    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v5

    .line 3177
    iget-object v3, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3181
    :cond_4
    if-nez v5, :cond_6

    .line 3196
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v6, p6}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 3199
    .local v1, localMessage:Lcom/android/email/mail/Message;
    new-instance v0, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v0}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3200
    .local v0, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v0, v6}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3202
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3204
    invoke-virtual {v1}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3213
    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p6, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    .line 3215
    :cond_5
    const-string v6, "processPendingAccountMoveAppend"

    const-string v7, "message.mServerId is null. Sending is failed...."

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3217
    const/4 v6, 0x0

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3208
    .end local v0           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v1           #localMessage:Lcom/android/email/mail/Message;
    :cond_6
    :try_start_4
    const-string v6, "processPendingAccountMoveAppend"

    const-string v7, "Target Account Server Already have same message. Something wrong. Do nothing."

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3210
    const/4 v6, 0x0

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3229
    .restart local v0       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v1       #localMessage:Lcom/android/email/mail/Message;
    :cond_7
    const/4 v6, 0x1

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3231
    .end local v0           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v1           #localMessage:Lcom/android/email/mail/Message;
    .end local v5           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 3235
    .local v2, me:Lcom/android/email/mail/MessagingException;
    const/4 v6, 0x0

    .line 3238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3238
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 3240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_8
    throw v6
.end method

.method private processPendingAccountMoveUploadsSynchronous(JJLcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z
    .locals 15
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2192
    const/4 v14, 0x0

    .line 2194
    .local v14, bret:Z
    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const-string v4, "mailboxKey"

    aput-object v4, v13, v3

    .line 2197
    .local v13, MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;
    const/4 v12, 0x1

    .line 2199
    .local v12, MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I
    const/4 v5, 0x0

    .line 2201
    .local v5, remoteStore:Lcom/android/email/mail/Store;
    const-wide/16 v3, 0x0

    cmp-long v3, p8, v3

    if-ltz v3, :cond_2

    .line 2203
    const/4 v9, 0x0

    .line 2207
    .local v9, target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v5, :cond_0

    .line 2208
    :try_start_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v5

    .line 2211
    :cond_0
    if-nez v9, :cond_1

    .line 2212
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, v3

    move-wide/from16 v1, p8

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v9

    :cond_1
    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v10, p1

    .line 2215
    invoke-direct/range {v3 .. v11}, Lcom/android/email/MessagingController;->processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;JLcom/android/email/provider/EmailContent$Mailbox;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 2225
    .end local v9           #target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    return v14

    .line 2217
    .restart local v9       #target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :catchall_0
    move-exception v3

    throw v3

    .line 2222
    .end local v9           #target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    const/4 v14, 0x0

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
    .line 1881
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1882
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1885
    .local v0, accountIdArgs:[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingDeletesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1889
    if-nez p2, :cond_0

    .line 1890
    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 1893
    :cond_0
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V

    .line 1894
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 23
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3000
    const/16 v17, 0x0

    .line 3001
    .local v17, updateInternalDate:Z
    const/16 v18, 0x0

    .line 3002
    .local v18, updateMessage:Z
    const/4 v6, 0x0

    .line 3005
    .local v6, deleteMessage:Z
    const/4 v13, 0x0

    .line 3007
    .local v13, remoteFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v13

    .line 3008
    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    .line 3009
    sget-object v20, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->canCreate(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 3012
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 3013
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Local-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3014
    sget-object v20, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 3016
    .local v19, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3017
    .local v5, cv:Landroid/content/ContentValues;
    const-string v20, "syncServerId"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object v2, v5

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3020
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_1
    const/16 v20, 0x1

    .line 3126
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_2
    :goto_0
    return v20

    .line 3022
    :cond_3
    :try_start_1
    sget-object v20, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-nez v20, :cond_4

    .line 3024
    const/16 v20, 0x0

    .line 3126
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3027
    :cond_4
    :try_start_2
    sget-object v20, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3028
    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v20

    sget-object v21, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 3029
    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3030
    const/16 v20, 0x0

    .line 3126
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3034
    :cond_5
    const/4 v14, 0x0

    .line 3035
    .local v14, remoteMessage:Lcom/android/email/mail/Message;
    :try_start_3
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 3036
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v14

    .line 3040
    :cond_6
    if-nez v14, :cond_a

    .line 3042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v10

    .line 3045
    .local v10, localMessage:Lcom/android/email/mail/Message;
    new-instance v7, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3046
    .local v7, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v20, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3047
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3050
    invoke-virtual {v10}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3051
    const/16 v17, 0x1

    .line 3052
    const/16 v18, 0x1

    .line 3088
    .end local v10           #localMessage:Lcom/android/email/mail/Message;
    :goto_1
    if-eqz v17, :cond_7

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 3090
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v15

    .line 3091
    .local v15, remoteMessage2:Lcom/android/email/mail/Message;
    if-eqz v15, :cond_7

    .line 3092
    new-instance v8, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v8}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3093
    .local v8, fp2:Lcom/android/email/mail/FetchProfile;
    sget-object v20, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3094
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v15, v20, v21

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object v2, v8

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 3095
    invoke-virtual {v15}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p4

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 3096
    const/16 v18, 0x1

    .line 3104
    .end local v8           #fp2:Lcom/android/email/mail/FetchProfile;
    .end local v15           #remoteMessage2:Lcom/android/email/mail/Message;
    :cond_7
    if-nez v6, :cond_8

    if-eqz v18, :cond_9

    .line 3105
    :cond_8
    sget-object v20, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 3106
    .restart local v19       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 3107
    .local v16, resolver:Landroid/content/ContentResolver;
    if-eqz v6, :cond_c

    .line 3108
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3116
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_9
    :goto_2
    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3117
    const/16 v20, 0x1

    .line 3126
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3055
    .end local v7           #fp:Lcom/android/email/mail/FetchProfile;
    :cond_a
    :try_start_4
    new-instance v7, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3056
    .restart local v7       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v20, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3057
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 3058
    new-instance v9, Ljava/util/Date;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v20, v0

    move-object v0, v9

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3059
    .local v9, localDate:Ljava/util/Date;
    invoke-virtual {v14}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v12

    .line 3060
    .local v12, remoteDate:Ljava/util/Date;
    invoke-virtual {v12, v9}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v20

    if-lez v20, :cond_b

    .line 3064
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 3069
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;

    move-result-object v10

    .line 3072
    .restart local v10       #localMessage:Lcom/android/email/mail/Message;
    invoke-virtual {v7}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 3073
    new-instance v7, Lcom/android/email/mail/FetchProfile;

    .end local v7           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct {v7}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3074
    .restart local v7       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v20, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3075
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3078
    invoke-virtual {v10}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3079
    const/16 v17, 0x1

    .line 3080
    const/16 v18, 0x1

    .line 3083
    sget-object v20, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/16 v21, 0x1

    move-object v0, v14

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 3119
    .end local v7           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v9           #localDate:Ljava/util/Date;
    .end local v10           #localMessage:Lcom/android/email/mail/Message;
    .end local v12           #remoteDate:Ljava/util/Date;
    .end local v14           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v20

    move-object/from16 v11, v20

    .line 3123
    .local v11, me:Lcom/android/email/mail/MessagingException;
    const/16 v20, 0x0

    .line 3126
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 3109
    .end local v11           #me:Lcom/android/email/mail/MessagingException;
    .restart local v7       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v14       #remoteMessage:Lcom/android/email/mail/Message;
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_c
    if-eqz v18, :cond_9

    .line 3110
    :try_start_5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3111
    .restart local v5       #cv:Landroid/content/ContentValues;
    const-string v20, "syncServerId"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    const-string v20, "syncServerTimeStamp"

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3113
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object v2, v5

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 3126
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v7           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v14           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v19           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v20

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 3128
    const/16 v21, 0x0

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_d
    throw v20
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

    .line 2958
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v1

    .line 2959
    .local v1, remoteTrashFolder:Lcom/android/email/mail/Folder;
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2980
    :goto_0
    return-void

    .line 2963
    :cond_0
    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2964
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_1

    .line 2965
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2970
    :cond_1
    iget-object v2, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v0

    .line 2971
    .local v0, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v0, :cond_2

    .line 2972
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2977
    :cond_2
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2978
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2979
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V
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

    .line 2923
    iget v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 2950
    :cond_0
    :goto_0
    return-void

    .line 2928
    :cond_1
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v1

    .line 2929
    .local v1, remoteTrashFolder:Lcom/android/email/mail/Folder;
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2933
    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2934
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_2

    .line 2935
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2940
    :cond_2
    iget-object v2, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v0

    .line 2941
    .local v0, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v0, :cond_3

    .line 2942
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2947
    :cond_3
    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2948
    invoke-virtual {v1}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2949
    invoke-virtual {v1, v4}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingDeletesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 20
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"

    .prologue
    .line 1935
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "accountKey=?"

    const-string v10, "mailboxKey"

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1939
    .local v12, deletes:Landroid/database/Cursor;
    const-wide/16 v13, -0x1

    .line 1942
    .local v13, lastMessageId:J
    const/16 v18, 0x0

    .line 1944
    .local v18, remoteStore:Lcom/android/email/mail/Store;
    const/4 v15, 0x0

    .line 1946
    .local v15, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1947
    const/4 v11, 0x0

    .line 1949
    .local v11, deleteFromTrash:Z
    const-class v5, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v12, v5}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v17

    check-cast v17, Lcom/android/email/provider/EmailContent$Message;

    .line 1953
    .local v17, oldMessage:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v17, :cond_0

    .line 1954
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v13, v0

    .line 1955
    if-eqz v15, :cond_1

    iget-wide v5, v15, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 1956
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 1958
    :cond_2
    iget v5, v15, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    move v11, v5

    .line 1961
    :goto_1
    if-nez v18, :cond_3

    if-eqz v11, :cond_3

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v18

    .line 1966
    :cond_3
    if-eqz v11, :cond_4

    .line 1968
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->processPendingDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V

    .line 1972
    :cond_4
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1974
    .local v19, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1978
    .end local v11           #deleteFromTrash:Z
    .end local v17           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 1981
    .local v16, me:Lcom/android/email/mail/MessagingException;
    :try_start_1
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1982
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1986
    :cond_5
    if-eqz v12, :cond_6

    .line 1987
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1989
    .end local v16           #me:Lcom/android/email/mail/MessagingException;
    :cond_6
    :goto_2
    return-void

    .line 1958
    .restart local v11       #deleteFromTrash:Z
    .restart local v17       #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    :cond_7
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 1986
    .end local v11           #deleteFromTrash:Z
    .end local v17           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    :cond_8
    if-eqz v12, :cond_6

    .line 1987
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1986
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_9

    .line 1987
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v5
.end method

.method private processPendingFlagChange(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Mailbox;ZZLcom/android/email/provider/EmailContent$Message;)V
    .locals 9
    .parameter "remoteStore"
    .parameter "mailbox"
    .parameter "changeRead"
    .parameter "changeFlagged"
    .parameter "newMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2549
    if-eqz p5, :cond_0

    iget-object v4, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v5, "Local-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2603
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    iget v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 2560
    const/4 v2, 0x0

    .line 2562
    .local v2, remoteFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    .line 2563
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 2599
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2600
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2566
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2567
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_3

    .line 2568
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2599
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2600
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2573
    :cond_3
    :try_start_2
    iget-object v4, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 2574
    .local v3, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v3, :cond_4

    .line 2575
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2599
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2600
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto :goto_0

    .line 2578
    :cond_4
    :try_start_3
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 2579
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update flags for msg id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " read="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flagged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_5
    const/4 v4, 0x1

    new-array v1, v4, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2585
    .local v1, messages:[Lcom/android/email/mail/Message;
    if-eqz p3, :cond_6

    .line 2586
    sget-object v4, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/email/mail/Flag;

    iget-boolean v5, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V

    .line 2588
    :cond_6
    if-eqz p4, :cond_7

    .line 2589
    sget-object v4, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/email/mail/Flag;

    iget-boolean v5, p5, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2599
    :cond_7
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2600
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2592
    .end local v1           #messages:[Lcom/android/email/mail/Message;
    .end local v3           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2596
    .local v0, me:Lcom/android/email/mail/MessagingException;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2599
    .end local v0           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2600
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_8
    throw v4
.end method

.method private processPendingMoveSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Z
    .locals 9
    .parameter "account"
    .parameter "resolver"
    .parameter "cur_serverId"
    .parameter "target_boxkey"
    .parameter "orig_boxkey"

    .prologue
    .line 2330
    const/4 v7, 0x1

    .line 2333
    .local v7, bret:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 2334
    .local v1, remoteStore:Lcom/android/email/mail/Store;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .local v3, target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p6

    .line 2336
    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingMoveToTargetbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;J)Z
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2341
    .end local v1           #remoteStore:Lcom/android/email/mail/Store;
    .end local v3           #target_mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    return v7

    .line 2337
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2338
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2351
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v5, p5, p6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2352
    .local v1, oldMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v1, :cond_0

    move v5, v7

    .line 2453
    :goto_0
    return v5

    .line 2360
    :cond_0
    const/4 v4, 0x0

    .line 2361
    .local v4, remoteTargetFolder:Lcom/android/email/mail/Folder;
    const/4 v2, 0x0

    .line 2364
    .local v2, remoteFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    .line 2365
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2369
    sget-object v5, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2372
    :cond_1
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_4

    .line 2449
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_2
    if-eqz v4, :cond_3

    throw v4

    #Unreachable code
    #move-result v5

    #if-eqz v5, :cond_3

    .line 2453
    #throw v4

    :cond_3
    move v5, v7

    goto :goto_0

    .line 2376
    :cond_4
    :try_start_1
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2377
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_7

    .line 2378
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2449
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_5
    if-eqz v4, :cond_6

    throw v4

    #Unreachable code
    #move-result v5

    #if-eqz v5, :cond_6

    .line 2453
    #throw v4

    :cond_6
    move v5, v7

    goto :goto_0

    .line 2383
    :cond_7
    :try_start_2
    invoke-virtual {v2, p4}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 2384
    .local v3, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v3, :cond_a

    .line 2385
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2449
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_8
    if-eqz v4, :cond_9

    throw v4

    #Unreachable code
    #move-result v5

    #if-eqz v5, :cond_9

    .line 2453
    #throw v4

    :cond_9
    move v5, v7

    goto :goto_0

    .line 2390
    :cond_a
    :try_start_3
    iget-object v5, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v4

    .line 2391
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2395
    sget-object v5, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2400
    :cond_b
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2405
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2406
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_e

    .line 2407
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2408
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2449
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2453
    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_d
    move v5, v7

    goto/16 :goto_0

    .line 2412
    :cond_e
    const/4 v5, 0x1

    :try_start_4
    new-array v5, v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v6, Lcom/android/email/MessagingController$11;

    invoke-direct {v6, p0}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;)V

    invoke-virtual {v2, v5, v4, v6}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V

    .line 2424
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2435
    sget-object v5, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2438
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2439
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2449
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2453
    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_10
    move v5, v8

    goto/16 :goto_0

    .line 2428
    :cond_11
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2449
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2453
    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_13
    move v5, v7

    goto/16 :goto_0

    .line 2442
    .end local v3           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2446
    .local v0, me:Lcom/android/email/mail/MessagingException;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2449
    .end local v0           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2450
    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2452
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2453
    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_15
    throw v5
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 9
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "oldMessage"
    .parameter "newMessage"
    .parameter "ismovemail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2772
    if-eqz p5, :cond_0

    iget-object v6, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v7, "Local-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2908
    :cond_0
    :goto_0
    return-void

    .line 2779
    :cond_1
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v7, p4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2780
    .local v1, oldMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 2785
    iget v6, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    if-eqz p6, :cond_0

    .line 2795
    :cond_2
    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v6

    if-nez v6, :cond_3

    .line 2796
    new-instance v5, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v5}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 2797
    .local v5, sentinel:Lcom/android/email/provider/EmailContent$Message;
    iget-wide v6, p4, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v6, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 2798
    iget-wide v6, p4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v6, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 2799
    const/4 v6, 0x3

    iput v6, v5, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2800
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 2801
    iget-object v6, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 2802
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 2808
    .end local v5           #sentinel:Lcom/android/email/provider/EmailContent$Message;
    :cond_3
    const/4 v2, 0x0

    .line 2809
    .local v2, remoteFolder:Lcom/android/email/mail/Folder;
    const/4 v4, 0x0

    .line 2812
    .local v4, remoteTrashFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    .line 2813
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_5

    .line 2899
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 2901
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_4
    if-eqz v4, :cond_0

    throw v4

    #Unreachable code
    #move-result v6

    #const/4 v7, 0x1

    #if-ne v6, v7, :cond_0

    .line 2905
    #const/4 v6, 0x0

    #throw v4

    #goto :goto_0

    .line 2817
    :cond_5
    :try_start_1
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2818
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v6, v7, :cond_7

    .line 2819
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2899
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 2901
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_6
    if-eqz v4, :cond_0

    throw v4

    #Unreachable code
    #move-result v6

    #const/4 v7, 0x1

    #if-ne v6, v7, :cond_0

    .line 2905
    #const/4 v6, 0x0

    #throw v4

    #goto/16 :goto_0

    .line 2824
    :cond_7
    :try_start_2
    iget-object v6, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v3

    .line 2825
    .local v3, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v3, :cond_9

    .line 2826
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2899
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 2901
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_8
    if-eqz v4, :cond_0

    throw v4

    #Unreachable code
    #move-result v6

    #const/4 v7, 0x1

    #if-ne v6, v7, :cond_0

    .line 2905
    #const/4 v6, 0x0

    #throw v4

    #goto/16 :goto_0

    .line 2831
    :cond_9
    :try_start_3
    iget-object v6, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v4

    .line 2832
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2836
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2841
    :cond_a
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2845
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2846
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v6, v7, :cond_c

    .line 2847
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2848
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2899
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 2901
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_b
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2905
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2854
    :cond_c
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    new-instance v7, Lcom/android/email/MessagingController$13;

    invoke-direct {v7, p0, p5}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v2, v6, v4, v7}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2879
    :goto_1
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2885
    :cond_d
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2888
    sget-object v6, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2889
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2890
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2899
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 2901
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_e
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2905
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2892
    .end local v3           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 2896
    .local v0, me:Lcom/android/email/mail/MessagingException;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2899
    .end local v0           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 2901
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2903
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 2905
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_10
    throw v6

    .line 2875
    .restart local v3       #remoteMessage:Lcom/android/email/mail/Message;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private processPendingRestoreToInbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 10
    .parameter "remoteStore"
    .parameter "account"
    .parameter "newMailbox"
    .parameter "oldMessage"
    .parameter "newMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "Email"

    .line 2622
    iget-object v5, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, "Local-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2629
    :cond_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v6, p4, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2630
    .local v1, oldMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 2655
    const/4 v2, 0x0

    .line 2656
    .local v2, remoteFolder:Lcom/android/email/mail/Folder;
    const/4 v3, 0x0

    .line 2659
    .local v3, remoteInboxFolder:Lcom/android/email/mail/Folder;
    :try_start_0
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    .line 2660
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 2746
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_2
    if-eqz v3, :cond_0

    throw v3

    #Unreachable code
    #move-result v5

    #if-ne v5, v9, :cond_0

    .line 2751
    #throw v3

    #goto :goto_0

    .line 2664
    :cond_3
    :try_start_1
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r2d209 check : processPendingRestoreToInbox oldBox name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2667
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_5

    .line 2668
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2746
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_4

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_4
    if-eqz v3, :cond_0

    throw v3

    #Unreachable code
    #move-result v5

    #if-ne v5, v9, :cond_0

    .line 2751
    #throw v3

    #goto :goto_0

    .line 2673
    :cond_5
    :try_start_2
    iget-object v5, p4, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v4

    .line 2674
    .local v4, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v4, :cond_7

    .line 2675
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2746
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_6

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_6
    if-eqz v3, :cond_0

    throw v3

    #Unreachable code
    #move-result v5

    #if-ne v5, v9, :cond_0

    .line 2751
    #throw v3

    #goto/16 :goto_0

    .line 2680
    :cond_7
    :try_start_3
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r2d209 check : processPendingRestoreToInbox newBox name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    iget-object v5, p3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v3

    .line 2682
    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2686
    sget-object v5, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 2693
    :cond_8
    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2697
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 2698
    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_a

    .line 2699
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2700
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2746
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_9

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_9
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 2751
    invoke-virtual {v3, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2704
    :cond_a
    const/4 v5, 0x1

    :try_start_4
    new-array v5, v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v6, Lcom/android/email/MessagingController$12;

    invoke-direct {v6, p0, p5}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Message;)V

    invoke-virtual {v2, v5, v3, v6}, Lcom/android/email/mail/Folder;->copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V

    .line 2725
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2731
    :cond_b
    sget-object v5, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2734
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 2735
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->expunge()[Lcom/android/email/mail/Message;

    .line 2736
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2746
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_c

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_c
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 2751
    invoke-virtual {v3, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2738
    .end local v4           #remoteMessage:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2742
    .local v0, me:Lcom/android/email/mail/MessagingException;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2746
    .end local v0           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-ne v6, v9, :cond_d

    .line 2748
    invoke-virtual {v2, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 2750
    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    if-ne v6, v9, :cond_e

    .line 2751
    invoke-virtual {v3, v8}, Lcom/android/email/mail/Folder;->close(Z)V

    :cond_e
    throw v5
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V
    .locals 23
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .parameter "ismovemail"

    .prologue
    .line 2241
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "accountKey=?"

    const-string v9, "mailboxKey"

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2245
    .local v21, updates:Landroid/database/Cursor;
    const-wide/16 v17, -0x1

    .line 2247
    .local v17, lastMessageId:J
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r2d209 check : processPendingUpdatesSynchronous 1 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const/4 v5, 0x0

    .line 2254
    .local v5, remoteStore:Lcom/android/email/mail/Store;
    const/4 v7, 0x0

    .line 2256
    .local v7, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :goto_0
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2257
    const/16 v16, 0x0

    .line 2258
    .local v16, changeMoveToTrash:Z
    const/16 v20, 0x0

    .line 2259
    .local v20, restoreToInbox:Z
    const/4 v13, 0x0

    .line 2260
    .local v13, changeRead:Z
    const/4 v14, 0x0

    .line 2262
    .local v14, changeFlagged:Z
    const-class v4, Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v8

    check-cast v8, Lcom/android/email/provider/EmailContent$Message;

    .line 2264
    .local v8, oldMessage:Lcom/android/email/provider/EmailContent$Message;
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v17, v0

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-wide v10, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v10, v11}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v9

    .line 2267
    .local v9, newMessage:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v9, :cond_2

    .line 2268
    if-eqz v7, :cond_0

    iget-wide v10, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iget-wide v12, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v10, v12

    if-eqz v4, :cond_1

    .line 2269
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-wide v10, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v10, v11}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 2271
    :cond_1
    iget-wide v10, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v12, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v10, v12

    if-eqz v4, :cond_9

    if-eqz v7, :cond_9

    iget v4, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_9

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 2274
    :goto_1
    iget-wide v10, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v12, v9, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v10, v12

    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    iget v4, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 2277
    :goto_2
    iget-boolean v4, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v6, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v4, v6, :cond_b

    const/4 v4, 0x1

    move v13, v4

    .line 2278
    :goto_3
    iget-boolean v4, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v6, v9, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v4, v6, :cond_c

    const/4 v4, 0x1

    move v14, v4

    .line 2282
    :cond_2
    :goto_4
    if-nez v5, :cond_4

    if-nez v16, :cond_3

    if-nez v13, :cond_3

    if-nez v14, :cond_3

    if-nez v20, :cond_3

    if-eqz p4, :cond_4

    .line 2283
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v10, 0x0

    invoke-static {v4, v6, v10}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v5

    .line 2288
    :cond_4
    if-nez p4, :cond_5

    if-eqz v16, :cond_d

    :cond_5
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v10, p4

    .line 2290
    invoke-direct/range {v4 .. v10}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;Z)V

    .line 2302
    :cond_6
    :goto_5
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 2304
    .local v22, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object v2, v4

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2307
    .end local v8           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v9           #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v13           #changeRead:Z
    .end local v14           #changeFlagged:Z
    .end local v16           #changeMoveToTrash:Z
    .end local v20           #restoreToInbox:Z
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 2310
    .local v19, me:Lcom/android/email/mail/MessagingException;
    :try_start_1
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 2311
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #remoteStore:Lcom/android/email/mail/Store;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process pending update for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    :cond_7
    if-eqz v21, :cond_8

    .line 2316
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2318
    .end local v19           #me:Lcom/android/email/mail/MessagingException;
    :cond_8
    :goto_6
    return-void

    .line 2271
    .restart local v5       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v8       #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v9       #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v13       #changeRead:Z
    .restart local v14       #changeFlagged:Z
    .restart local v16       #changeMoveToTrash:Z
    .restart local v20       #restoreToInbox:Z
    :cond_9
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_1

    .line 2274
    :cond_a
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_2

    .line 2277
    :cond_b
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_3

    .line 2278
    :cond_c
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_4

    .line 2291
    :cond_d
    if-nez v13, :cond_e

    if-eqz v14, :cond_10

    :cond_e
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v7

    move-object v15, v9

    .line 2292
    :try_start_2
    invoke-direct/range {v10 .. v15}, Lcom/android/email/MessagingController;->processPendingFlagChange(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Mailbox;ZZLcom/android/email/provider/EmailContent$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 2315
    .end local v5           #remoteStore:Lcom/android/email/mail/Store;
    .end local v8           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v9           #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v13           #changeRead:Z
    .end local v14           #changeFlagged:Z
    .end local v16           #changeMoveToTrash:Z
    .end local v20           #restoreToInbox:Z
    :catchall_0
    move-exception v4

    if-eqz v21, :cond_f

    .line 2316
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v4

    .line 2294
    .restart local v5       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v8       #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v9       #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v13       #changeRead:Z
    .restart local v14       #changeFlagged:Z
    .restart local v16       #changeMoveToTrash:Z
    .restart local v20       #restoreToInbox:Z
    :cond_10
    if-eqz v20, :cond_6

    .line 2296
    :try_start_3
    const-string v4, "Email"

    const-string v6, "r2d209 check : restore need"

    invoke-static {v4, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 2297
    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController;->processPendingRestoreToInbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 2315
    .end local v8           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v9           #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v13           #changeRead:Z
    .end local v14           #changeFlagged:Z
    .end local v16           #changeMoveToTrash:Z
    .end local v20           #restoreToInbox:Z
    :cond_11
    if-eqz v21, :cond_8

    .line 2316
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private processPendingUploadsSynchronous(Lcom/android/email/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 30
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? and type=5"

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 2093
    .local v26, mailboxes:Landroid/database/Cursor;
    const-wide/16 v22, -0x1

    .line 2097
    .local v22, lastMessageId:J
    const/4 v10, 0x0

    .line 2099
    .local v10, remoteStore:Lcom/android/email/mail/Store;
    :try_start_0
    const-string v6, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    .line 2103
    .local v6, selection:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2104
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 2105
    .local v24, mailboxId:J
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 2107
    .local v7, mailboxKeyArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 2110
    .local v12, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 2116
    .local v28, upsyncs1:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2118
    if-nez v10, :cond_1

    .line 2119
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

    move-result-object v10

    .line 2123
    :cond_1
    if-nez v12, :cond_2

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 2127
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2128
    .local v13, id:J
    move-wide/from16 v22, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    .line 2129
    invoke-direct/range {v8 .. v14}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2132
    .end local v13           #id:J
    :catchall_0
    move-exception v3

    if-eqz v28, :cond_3

    .line 2133
    :try_start_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2166
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v24           #mailboxId:J
    .end local v28           #upsyncs1:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object/from16 v27, v3

    .line 2169
    .local v27, me:Lcom/android/email/mail/MessagingException;
    :try_start_3
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2170
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process pending upsync for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2174
    :cond_4
    if-eqz v26, :cond_5

    .line 2175
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2178
    .end local v27           #me:Lcom/android/email/mail/MessagingException;
    :cond_5
    :goto_2
    return-void

    .line 2132
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v12       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v24       #mailboxId:J
    .restart local v28       #upsyncs1:Landroid/database/Cursor;
    :cond_6
    if-eqz v28, :cond_7

    .line 2133
    :try_start_4
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 2139
    :cond_7
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 2140
    .local v21, buff:Ljava/lang/StringBuffer;
    sget-object v16, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v17, Lcom/android/email/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v15, p2

    move-object/from16 v19, v7

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v29

    .line 2145
    .local v29, upsyncs2:Landroid/database/Cursor;
    :goto_3
    :try_start_5
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2147
    if-nez v10, :cond_8

    .line 2148
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

    move-result-object v10

    .line 2152
    :cond_8
    if-nez v12, :cond_9

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 2156
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2157
    .restart local v13       #id:J
    move-wide/from16 v22, v13

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    .line 2158
    invoke-direct/range {v8 .. v14}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 2161
    .end local v13           #id:J
    :catchall_1
    move-exception v3

    if-eqz v29, :cond_a

    .line 2162
    :try_start_6
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2174
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v21           #buff:Ljava/lang/StringBuffer;
    .end local v24           #mailboxId:J
    .end local v28           #upsyncs1:Landroid/database/Cursor;
    .end local v29           #upsyncs2:Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    if-eqz v26, :cond_b

    .line 2175
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3

    .line 2161
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #mailboxKeyArgs:[Ljava/lang/String;
    .restart local v12       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v21       #buff:Ljava/lang/StringBuffer;
    .restart local v24       #mailboxId:J
    .restart local v28       #upsyncs1:Landroid/database/Cursor;
    .restart local v29       #upsyncs2:Landroid/database/Cursor;
    :cond_c
    if-eqz v29, :cond_0

    .line 2162
    :try_start_7
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 2174
    .end local v7           #mailboxKeyArgs:[Ljava/lang/String;
    .end local v12           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v21           #buff:Ljava/lang/StringBuffer;
    .end local v24           #mailboxId:J
    .end local v28           #upsyncs1:Landroid/database/Cursor;
    .end local v29           #upsyncs2:Landroid/database/Cursor;
    :cond_d
    if-eqz v26, :cond_5

    .line 2175
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;J)V
    .locals 7
    .parameter "resolver"
    .parameter "remoteStore"
    .parameter "account"
    .parameter "mailbox"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v5, "Email"

    .line 2479
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, p6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    .line 2481
    .local v1, message:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 2482
    .local v0, deleteUpdate:Z
    if-nez v1, :cond_1

    .line 2483
    const/4 v0, 0x1

    .line 2484
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsync failed for null message, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    :goto_0
    if-eqz v0, :cond_0

    .line 2503
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2504
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2506
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 2485
    :cond_1
    iget v3, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 2486
    const/4 v0, 0x0

    .line 2487
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2488
    :cond_2
    iget v3, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 2489
    const/4 v0, 0x0

    .line 2490
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2491
    :cond_3
    iget v3, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 2492
    const/4 v0, 0x0

    .line 2493
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2494
    :cond_4
    iget v3, p4, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 2495
    const/4 v0, 0x0

    .line 2496
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsync skipped for mailbox=sent, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2498
    :cond_5
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upsyc triggered for message id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)Z

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

    .line 206
    :try_start_0
    new-instance v1, Lcom/android/email/MessagingController$Command;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 207
    .local v1, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v1, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 208
    iput-object p3, v1, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 209
    iput-object p1, v1, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 210
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v5, :cond_0

    .line 211
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

    .line 216
    :cond_0
    const-string v5, "synchronizeMailbox"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
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

    .line 218
    .local v0, c:Lcom/android/email/MessagingController$Command;
    iget-object v5, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v5, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
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

    .line 224
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_2
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0           #c:Lcom/android/email/MessagingController$Command;
    .end local v1           #command:Lcom/android/email/MessagingController$Command;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 232
    .local v3, ie:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 229
    .end local v3           #ie:Ljava/lang/IllegalStateException;
    .restart local v1       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    return-void
.end method

.method private saveOrUpdate(Lcom/android/email/provider/EmailContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 877
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/email/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 882
    :goto_0
    return-void

    .line 880
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
    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 452
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

    .line 453
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

    .line 454
    .local v51, totalMessages:I
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v51

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 688
    .end local v51           #totalMessages:I
    .end local p3
    :cond_1
    :goto_0
    return-object v6

    .line 457
    .restart local p3
    :cond_2
    const/16 v32, 0x0

    .line 458
    .local v32, localUidCursor:Landroid/database/Cursor;
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 460
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

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 470
    :goto_1
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 471
    new-instance v24, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 472
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

    .line 475
    .end local v24           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v32, :cond_3

    .line 476
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 475
    :cond_4
    if-eqz v32, :cond_5

    .line 476
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v50

    .line 481
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

    .line 482
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
    :try_start_1
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

    if-eq v6, v7, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    if-nez v6, :cond_8

    .line 487
    :cond_6
    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 488
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 489
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    if-eqz v39, :cond_7

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 685
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 687
    :cond_7
    if-eqz v45, :cond_1

    .line 688
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_8
    :try_start_2
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 495
    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v41

    .line 499
    .local v41, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    move v6, v0

    move v0, v6

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v56, v0

    .line 502
    .local v56, visibleLimit:I
    if-gtz v56, :cond_9

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v24

    .line 505
    .local v24, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v24, :cond_9

    .line 506
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v56, v0

    .line 510
    .end local v24           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v42, v0

    .line 511
    .local v42, remoteMessages:[Lcom/android/email/mail/Message;
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v52, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v48, Ljava/util/HashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v48, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    const/16 v35, 0x0

    .line 515
    .local v35, newMessageCount:I
    if-lez v41, :cond_e

    .line 516
    const/4 v6, 0x0

    sub-int v7, v41, v56

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v44, v6, 0x1

    .line 517
    .local v44, remoteStart:I
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->getMessages(ILjava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v42

    .line 518
    if-eqz v42, :cond_e

    .line 519
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

    if-ge v0, v1, :cond_a

    aget-object v13, v18, v22

    .line 520
    .local v13, message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    move-object v1, v6

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 522
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_a
    move-object/from16 v18, v42

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    aget-object v13, v18, v22

    .line 523
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 524
    .local v28, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v28, :cond_b

    .line 525
    add-int/lit8 v35, v35, 0x1

    .line 526
    :cond_b
    if-eqz v28, :cond_c

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    if-eqz v6, :cond_c

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 529
    :cond_c
    move-object/from16 v0, v52

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 534
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v22           #i$:I
    .end local v26           #len$:I
    .end local v28           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v44           #remoteStart:I
    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v11, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 536
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 537
    .local v21, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v8, Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 542
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

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 591
    .end local v8           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v21           #fp:Lcom/android/email/mail/FetchProfile;
    :cond_f
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 592
    .restart local v21       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 593
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 594
    const/16 v47, 0x0

    .line 595
    .local v47, remoteSupportsSeen:Z
    const/16 v46, 0x0

    .line 596
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

    if-ge v0, v1, :cond_12

    aget-object v20, v18, v22

    .line 597
    .local v20, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v20

    move-object v1, v6

    if-ne v0, v1, :cond_10

    .line 598
    const/16 v47, 0x1

    .line 600
    :cond_10
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v20

    move-object v1, v6

    if-ne v0, v1, :cond_11

    .line 601
    const/16 v46, 0x1

    .line 596
    :cond_11
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 605
    .end local v20           #flag:Lcom/android/email/mail/Flag;
    :cond_12
    if-nez v47, :cond_13

    if-eqz v46, :cond_1b

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0

    if-eqz v6, :cond_1b

    .line 606
    move-object/from16 v18, v42

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    aget-object v40, v18, v22

    .line 607
    .local v40, remoteMessage:Lcom/android/email/mail/Message;
    invoke-virtual/range {v40 .. v40}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 608
    .local v29, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v29, :cond_15

    .line 606
    :cond_14
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 611
    :cond_15
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v31, v0

    .line 612
    .local v31, localSeen:Z
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v43

    .line 613
    .local v43, remoteSeen:Z
    if-eqz v47, :cond_19

    move/from16 v0, v43

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    const/4 v6, 0x1

    move/from16 v36, v6

    .line 614
    .local v36, newSeen:Z
    :goto_7
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v27, v0

    .line 615
    .local v27, localFlagged:Z
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v38

    .line 616
    .local v38, remoteFlagged:Z
    if-eqz v46, :cond_1a

    move/from16 v0, v27

    move/from16 v1, v38

    if-eq v0, v1, :cond_1a

    const/4 v6, 0x1

    move/from16 v34, v6

    .line 617
    .local v34, newFlagged:Z
    :goto_8
    if-nez v36, :cond_16

    if-eqz v34, :cond_14

    .line 618
    :cond_16
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v54

    .line 620
    .local v54, uri:Landroid/net/Uri;
    new-instance v53, Landroid/content/ContentValues;

    invoke-direct/range {v53 .. v53}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v53, updateValues:Landroid/content/ContentValues;
    const-string v6, "flagRead"

    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 622
    const-string v6, "flagFavorite"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v53

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 623
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
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 675
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

    .line 679
    .local v33, me:Lcom/android/email/mail/MessagingException;
    :try_start_3
    throw v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 682
    .end local v33           #me:Lcom/android/email/mail/MessagingException;
    :catchall_1
    move-exception v6

    if-eqz v39, :cond_17

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    .line 685
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 687
    :cond_17
    if-eqz v45, :cond_18

    .line 688
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_18
    throw v6

    .line 613
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
    :cond_19
    const/4 v6, 0x0

    move/from16 v36, v6

    goto :goto_7

    .line 616
    .restart local v27       #localFlagged:Z
    .restart local v36       #newSeen:Z
    .restart local v38       #remoteFlagged:Z
    :cond_1a
    const/4 v6, 0x0

    move/from16 v34, v6

    goto :goto_8

    .line 628
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v27           #localFlagged:Z
    .end local v29           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v31           #localSeen:Z
    .end local v36           #newSeen:Z
    .end local v38           #remoteFlagged:Z
    .end local v40           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v43           #remoteSeen:Z
    :cond_1b
    :try_start_4
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v25, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v49, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 631
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSize()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_1c

    .line 632
    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 634
    :cond_1c
    move-object/from16 v0, v49

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 638
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_1d
    new-instance v21, Lcom/android/email/mail/FetchProfile;

    .end local v21           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 639
    .restart local v21       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 640
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

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 650
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 651
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 652
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

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 653
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22           #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 654
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    if-nez v6, :cond_1e

    .line 655
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 656
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 657
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 659
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto :goto_a

    .line 662
    :cond_1e
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v55}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v55, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v19, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v13

    move-object/from16 v1, v55

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 665
    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/email/mail/Part;

    .line 666
    .local v37, part:Lcom/android/email/mail/Part;
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 667
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 668
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v39

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    goto :goto_b

    .line 670
    .end local v37           #part:Lcom/android/email/mail/Part;
    :cond_1f
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto/16 :goto_a

    .line 673
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v19           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v55           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_20
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v0, v6

    move/from16 v1, v41

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 682
    if-eqz v39, :cond_21

    invoke-virtual/range {v39 .. v39}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 685
    const/4 v7, 0x0

    move-object/from16 v0, v39

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 687
    :cond_21
    if-eqz v45, :cond_1

    .line 688
    invoke-static/range {v50 .. v50}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxGeneric(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 70
    .parameter "account"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 887
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

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 892
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

    .line 895
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/email/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v61

    .line 896
    .local v61, totalMessages:I
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    move-object v0, v6

    move/from16 v1, v61

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 1385
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v61           #totalMessages:I
    :cond_1
    :goto_0
    return-object v6

    .line 901
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_2
    const/16 v36, 0x0

    .line 902
    .local v36, localUidCursor:Landroid/database/Cursor;
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 906
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

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 916
    :goto_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 917
    new-instance v26, Lcom/android/email/MessagingController$LocalMessageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 918
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

    .line 926
    .end local v26           #info:Lcom/android/email/MessagingController$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v36, :cond_3

    .line 927
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 926
    :cond_4
    if-eqz v36, :cond_5

    .line 927
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_5
    const/16 v52, 0x0

    .line 945
    .local v52, remoteStore:Lcom/android/email/mail/Store;
    const/16 v45, 0x0

    .line 946
    .local v45, remoteFolder:Lcom/android/email/mail/Folder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v59

    .line 948
    .local v59, storeUri:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v59

    move-object v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v52

    .line 949
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v52

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v45

    .line 957
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

    .line 959
    :cond_6
    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 960
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object/from16 v0, v45

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 961
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1380
    if-eqz v45, :cond_7

    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 1382
    const/4 v7, 0x0

    move-object/from16 v0, v45

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1384
    :cond_7
    if-eqz v52, :cond_1

    .line 1385
    invoke-static/range {v59 .. v59}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    :cond_8
    const/16 v40, 0x0

    .line 970
    .local v40, newMessageCount:I
    :try_start_2
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v45

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 976
    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v47

    .line 979
    .local v47, remoteMessageCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    move/from16 v69, v0

    .line 980
    .local v69, visibleLimit:I
    if-gtz v69, :cond_9

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v26

    .line 983
    .local v26, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v26, :cond_9

    .line 984
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v69, v0

    .line 989
    .end local v26           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    new-array v0, v0, [Lcom/android/email/mail/Message;

    move-object/from16 v49, v0

    .line 990
    .local v49, remoteMessages:[Lcom/android/email/mail/Message;
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v64, unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v57, Ljava/util/HashMap;

    invoke-direct/range {v57 .. v57}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v57, remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    new-instance v54, Ljava/util/HashMap;

    invoke-direct/range {v54 .. v54}, Ljava/util/HashMap;-><init>()V

    .line 994
    .local v54, remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    if-lez v47, :cond_e

    .line 998
    const/4 v6, 0x0

    sub-int v7, v47, v69

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v51, v6, 0x1

    .line 999
    .local v51, remoteStart:I
    move/from16 v43, v47

    .line 1000
    .local v43, remoteEnd:I
    const/16 v6, 0x3e8

    move/from16 v0, v69

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1001
    .local v30, limitMessageCount:I
    const/4 v6, 0x0

    sub-int v7, v47, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v53, v6, 0x1

    .line 1003
    .local v53, remoteStoreStart:I
    const/16 v48, 0x0

    .line 1005
    .local v48, remoteMessageSeqNum:I
    const/4 v6, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v51

    move/from16 v2, v43

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->getMessages(IILcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v49

    .line 1019
    move-object/from16 v18, v49

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

    .line 1020
    .local v13, message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v62

    .line 1021
    .local v62, uid:Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, v62

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    add-int v6, v48, v51

    move v0, v6

    move/from16 v1, v53

    if-lt v0, v1, :cond_a

    .line 1024
    move-object/from16 v0, v54

    move-object/from16 v1, v62

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    :cond_a
    add-int/lit8 v48, v48, 0x1

    .line 1036
    move-object/from16 v0, v34

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1037
    .local v32, localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v32, :cond_b

    .line 1038
    add-int/lit8 v40, v40, 0x1

    .line 1040
    :cond_b
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    move v6, v0

    if-nez v6, :cond_d

    .line 1043
    :cond_c
    move-object/from16 v0, v64

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1054
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v24           #i$:I
    .end local v29           #len$:I
    .end local v30           #limitMessageCount:I
    .end local v32           #localMessage:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v43           #remoteEnd:I
    .end local v48           #remoteMessageSeqNum:I
    .end local v51           #remoteStart:I
    .end local v53           #remoteStoreStart:I
    .end local v62           #uid:Ljava/lang/String;
    :cond_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v11, newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const-string v6, "MsgControl >>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " us : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 1063
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1064
    .local v23, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v8, Ljava/util/HashMap;

    move-object v0, v8

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1069
    .local v8, localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v64

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

    move-object/from16 v0, v45

    move-object v1, v12

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1131
    .end local v8           #localMapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMessageInfo;>;"
    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    :cond_f
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1132
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1133
    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1134
    const/16 v56, 0x0

    .line 1135
    .local v56, remoteSupportsSeen:Z
    const/16 v55, 0x0

    .line 1136
    .local v55, remoteSupportsFlagged:Z
    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->getPermanentFlags()[Lcom/android/email/mail/Flag;

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

    .line 1137
    .local v22, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v22

    move-object v1, v6

    if-ne v0, v1, :cond_10

    .line 1138
    const/16 v56, 0x1

    .line 1140
    :cond_10
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v22

    move-object v1, v6

    if-ne v0, v1, :cond_11

    .line 1141
    const/16 v55, 0x1

    .line 1136
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1145
    .end local v22           #flag:Lcom/android/email/mail/Flag;
    :cond_12
    if-nez v56, :cond_13

    if-eqz v55, :cond_1b

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0

    if-eqz v6, :cond_1b

    .line 1146
    move-object/from16 v18, v49

    .local v18, arr$:[Lcom/android/email/mail/Message;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    aget-object v46, v18, v24

    .line 1147
    .local v46, remoteMessage:Lcom/android/email/mail/Message;
    invoke-virtual/range {v46 .. v46}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1148
    .local v33, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v33, :cond_15

    .line 1146
    :cond_14
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1151
    :cond_15
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    move/from16 v35, v0

    .line 1152
    .local v35, localSeen:Z
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v50

    .line 1153
    .local v50, remoteSeen:Z
    if-eqz v56, :cond_19

    move/from16 v0, v50

    move/from16 v1, v35

    if-eq v0, v1, :cond_19

    const/4 v6, 0x1

    move/from16 v41, v6

    .line 1154
    .local v41, newSeen:Z
    :goto_6
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v31, v0

    .line 1155
    .local v31, localFlagged:Z
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v44

    .line 1156
    .local v44, remoteFlagged:Z
    if-eqz v55, :cond_1a

    move/from16 v0, v31

    move/from16 v1, v44

    if-eq v0, v1, :cond_1a

    const/4 v6, 0x1

    move/from16 v39, v6

    .line 1157
    .local v39, newFlagged:Z
    :goto_7
    if-nez v41, :cond_16

    if-eqz v39, :cond_14

    .line 1158
    :cond_16
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v66

    .line 1160
    .local v66, uri:Landroid/net/Uri;
    new-instance v65, Landroid/content/ContentValues;

    invoke-direct/range {v65 .. v65}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    .local v65, updateValues:Landroid/content/ContentValues;
    const-string v6, "flagRead"

    invoke-static/range {v50 .. v50}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v65

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1162
    const-string v6, "flagFavorite"

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v65

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1163
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v66

    move-object/from16 v2, v65

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1372
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v11           #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v24           #i$:I
    .end local v29           #len$:I
    .end local v31           #localFlagged:Z
    .end local v33           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v35           #localSeen:Z
    .end local v39           #newFlagged:Z
    .end local v40           #newMessageCount:I
    .end local v41           #newSeen:Z
    .end local v44           #remoteFlagged:Z
    .end local v46           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v47           #remoteMessageCount:I
    .end local v49           #remoteMessages:[Lcom/android/email/mail/Message;
    .end local v50           #remoteSeen:Z
    .end local v54           #remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .end local v55           #remoteSupportsFlagged:Z
    .end local v56           #remoteSupportsSeen:Z
    .end local v57           #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .end local v64           #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v65           #updateValues:Landroid/content/ContentValues;
    .end local v66           #uri:Landroid/net/Uri;
    .end local v69           #visibleLimit:I
    :catch_0
    move-exception v6

    move-object/from16 v38, v6

    .line 1376
    .local v38, me:Lcom/android/email/mail/MessagingException;
    :try_start_3
    throw v38
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1380
    .end local v38           #me:Lcom/android/email/mail/MessagingException;
    :catchall_1
    move-exception v6

    if-eqz v45, :cond_17

    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    .line 1382
    const/4 v7, 0x0

    move-object/from16 v0, v45

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1384
    :cond_17
    if-eqz v52, :cond_18

    .line 1385
    invoke-static/range {v59 .. v59}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_18
    throw v6

    .line 1153
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #newMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v18       #arr$:[Lcom/android/email/mail/Message;
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    .restart local v24       #i$:I
    .restart local v29       #len$:I
    .restart local v33       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .restart local v35       #localSeen:Z
    .restart local v40       #newMessageCount:I
    .restart local v46       #remoteMessage:Lcom/android/email/mail/Message;
    .restart local v47       #remoteMessageCount:I
    .restart local v49       #remoteMessages:[Lcom/android/email/mail/Message;
    .restart local v50       #remoteSeen:Z
    .restart local v54       #remoteStoreUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .restart local v55       #remoteSupportsFlagged:Z
    .restart local v56       #remoteSupportsSeen:Z
    .restart local v57       #remoteUidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    .restart local v64       #unsyncedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v69       #visibleLimit:I
    :cond_19
    const/4 v6, 0x0

    move/from16 v41, v6

    goto :goto_6

    .line 1156
    .restart local v31       #localFlagged:Z
    .restart local v41       #newSeen:Z
    .restart local v44       #remoteFlagged:Z
    :cond_1a
    const/4 v6, 0x0

    move/from16 v39, v6

    goto :goto_7

    .line 1202
    .end local v18           #arr$:[Lcom/android/email/mail/Message;
    .end local v31           #localFlagged:Z
    .end local v33           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v35           #localSeen:Z
    .end local v41           #newSeen:Z
    .end local v44           #remoteFlagged:Z
    .end local v46           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v50           #remoteSeen:Z
    :cond_1b
    :try_start_4
    new-instance v37, Ljava/util/HashSet;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1217
    .local v37, localUidsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-lez v47, :cond_1c

    .line 1224
    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1230
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move v6, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v6, :cond_20

    .line 1232
    :try_start_5
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    .line 1237
    .local v63, uidToDelete:Ljava/lang/String;
    const-string v6, "LocalAccountMoved-"

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1242
    move-object/from16 v0, v34

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1246
    .local v27, infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagAttachment:Z

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1e

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v9, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1251
    :cond_1e
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v67

    .line 1253
    .local v67, uriToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v67

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1256
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v60

    .line 1259
    .local v60, syncRowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v60

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1260
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1263
    .local v20, deletERowToDelete:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    .line 1266
    .end local v20           #deletERowToDelete:Landroid/net/Uri;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #infoToDelete:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v60           #syncRowToDelete:Landroid/net/Uri;
    .end local v63           #uidToDelete:Ljava/lang/String;
    .end local v67           #uriToDelete:Landroid/net/Uri;
    :catch_1
    move-exception v6

    move-object/from16 v21, v6

    .line 1267
    .local v21, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1268
    const/4 v6, 0x0

    .line 1380
    if-eqz v45, :cond_1f

    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    .line 1382
    const/4 v7, 0x0

    move-object/from16 v0, v45

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1384
    :cond_1f
    if-eqz v52, :cond_1

    .line 1385
    invoke-static/range {v59 .. v59}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1280
    .end local v21           #e:Ljava/lang/Exception;
    :cond_20
    :try_start_7
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .local v28, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v58, smallMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 1283
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSize()I

    move-result v6

    const/16 v7, 0x6400

    if-le v6, v7, :cond_21

    .line 1284
    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1286
    :cond_21
    move-object/from16 v0, v58

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1297
    .end local v13           #message:Lcom/android/email/mail/Message;
    :cond_22
    new-instance v23, Lcom/android/email/mail/FetchProfile;

    .end local v23           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1298
    .restart local v23       #fp:Lcom/android/email/mail/FetchProfile;
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v58

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

    move-object/from16 v0, v45

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1314
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1315
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1317
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v24           #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Message;

    .line 1318
    .restart local v13       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    if-nez v6, :cond_23

    .line 1322
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1323
    sget-object v6, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1327
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v45

    move-object v1, v6

    move-object/from16 v2, v23

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1331
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto :goto_a

    .line 1338
    :cond_23
    new-instance v68, Ljava/util/ArrayList;

    invoke-direct/range {v68 .. v68}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v68, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v19, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v13

    move-object/from16 v1, v68

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1342
    invoke-virtual/range {v68 .. v68}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/email/mail/Part;

    .line 1343
    .local v42, part:Lcom/android/email/mail/Part;
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/FetchProfile;->clear()V

    .line 1344
    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1347
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v45

    move-object v1, v6

    move-object/from16 v2, v23

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    goto :goto_b

    .line 1351
    .end local v42           #part:Lcom/android/email/mail/Part;
    :cond_24
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v17}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    goto/16 :goto_a

    .line 1369
    .end local v13           #message:Lcom/android/email/mail/Message;
    .end local v19           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v68           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_25
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

    .line 1370
    new-instance v6, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-object v0, v6

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1380
    if-eqz v45, :cond_26

    invoke-virtual/range {v45 .. v45}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    .line 1382
    const/4 v7, 0x0

    move-object/from16 v0, v45

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1384
    :cond_26
    if-eqz v52, :cond_1

    .line 1385
    invoke-static/range {v59 .. v59}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 10
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 426
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 429
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 430
    .local v8, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v8}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 432
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .line 437
    .local v9, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iget v5, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 445
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 435
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

    .line 439
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 443
    .local v5, e:Lcom/android/email/mail/MessagingException;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 10
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 800
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 805
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 806
    .local v8, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v8}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 807
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .line 813
    .local v9, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    if-eqz v9, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iget v5, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v9, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 827
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 810
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v8       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v9

    .restart local v9       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 821
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v8           #remoteStore:Lcom/android/email/mail/Store;
    .end local v9           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 825
    .local v5, e:Lcom/android/email/mail/MessagingException;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 238
    return-void
.end method

.method public cancelLoadRemoteMessage(J)V
    .locals 7
    .parameter "messageId"

    .prologue
    const-string v6, "loadMessageForViewRemote"

    const-string v5, "MsgControl >>>"

    .line 3249
    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    .line 3250
    .local v0, c:Lcom/android/email/MessagingController$Command;
    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    const-string v4, "loadMessageForViewRemote"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3251
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v3, :cond_1

    .line 3252
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3253
    .local v2, sbuf:Ljava/lang/StringBuffer;
    const-string v3, "MsgControl >>>"

    const-string v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "loadMessageForViewRemote"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    const-string v3, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelLoadRemoteMessage Before : mCommands.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 3257
    const-string v3, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelLoadRemoteMessage After : mCommands.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3261
    .end local v0           #c:Lcom/android/email/MessagingController$Command;
    :cond_2
    iget-object v3, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v3, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V

    .line 3262
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 7
    .parameter "accountId"
    .parameter "tag"
    .parameter "listener"

    .prologue
    .line 3897
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 3900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 3903
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$17;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$17;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3930
    return-void
.end method

.method public getLimitMessageCount()I
    .locals 5

    .prologue
    const-string v4, "account_recent_messages_limit"

    .line 778
    const/16 v0, 0x19

    .line 780
    .local v0, limitMessageCount:I
    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "account_recent_messages_limit"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/email/MessagingController;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "account_recent_messages_limit"

    const-string v3, "25"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, recentMessageCount:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 785
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

    .line 786
    return v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/email/MessagingController;->mBusy:Z

    return v0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .locals 3
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 293
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 297
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 16
    .parameter "accountId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "attachmentId"
    .parameter "listener"
    .parameter "prune"

    .prologue
    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v15

    .line 3519
    .local v15, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    if-nez v15, :cond_0

    .line 3520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v4, v0

    const-string v11, "Attachment is null"

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V

    .line 3523
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v4, v0

    iget-object v5, v15, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v11, v5

    :goto_0
    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 3526
    const-string v15, "loadAttachment"

    .end local v15           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
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

    .line 3650
    return-void

    .line 3523
    .restart local v15       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_1
    const/4 v5, 0x0

    move v11, v5

    goto :goto_0
.end method

.method public loadAttachmentSyncronous(JJJJ)Z
    .locals 27
    .parameter "accountId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v13

    .line 1787
    .local v13, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v17

    .line 1788
    .local v17, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v19

    .line 1790
    .local v19, message:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v14

    .line 1791
    .local v14, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const/16 v22, 0x0

    .line 1792
    .local v22, remoteStore:Lcom/android/email/mail/Store;
    const/16 v21, 0x0

    .line 1793
    .local v21, remoteFolder:Lcom/android/email/mail/Folder;
    const/16 v26, 0x0

    .line 1797
    .local v26, storeUri:Ljava/lang/String;
    if-eqz v13, :cond_0

    if-eqz v17, :cond_0

    if-eqz v19, :cond_0

    if-nez v14, :cond_3

    .line 1798
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

    .line 1800
    const/4 v5, 0x0

    .line 1854
    if-eqz v21, :cond_1

    throw v21

    #Unreachable code
    #move-result v6

    #const/4 v7, 0x1

    #if-ne v6, v7, :cond_1

    .line 1856
    #const/4 v6, 0x0

    #move-object/from16 v0, v21

    #move v1, v6

    #throw v0

    .line 1858
    :cond_1
    if-eqz v22, :cond_2

    if-eqz v26, :cond_2

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v5

    .line 1803
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v13, v5}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v22

    .line 1806
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v21

    .line 1807
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 1812
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v24

    .line 1813
    .local v24, storeMessage:Lcom/android/email/mail/Message;
    new-instance v25, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct/range {v25 .. v25}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 1814
    .local v25, storePart:Lcom/android/email/mail/internet/MimeBodyPart;
    iget-wide v5, v14, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeBodyPart;->setSize(I)V

    .line 1815
    const-string v5, "X-Android-Attachment-StoreData"

    iget-object v6, v14, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
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

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    new-instance v20, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct/range {v20 .. v20}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 1826
    .local v20, multipart:Lcom/android/email/mail/internet/MimeMultipart;
    const-string v5, "mixed"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1827
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 1829
    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setBody(Lcom/android/email/mail/Body;)V

    .line 1834
    new-instance v15, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v15}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 1835
    .local v15, fp:Lcom/android/email/mail/FetchProfile;
    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1836
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/email/mail/Message;

    const/4 v6, 0x0

    aput-object v24, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v15

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v14

    move-wide/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/email/mail/Part;Lcom/android/email/provider/EmailContent$Attachment;J)V

    .line 1840
    iget-object v5, v14, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    .line 1854
    :goto_1
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1856
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1858
    :cond_4
    if-eqz v22, :cond_2

    if-eqz v26, :cond_2

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1840
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1842
    .end local v15           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v20           #multipart:Lcom/android/email/mail/internet/MimeMultipart;
    .end local v24           #storeMessage:Lcom/android/email/mail/Message;
    .end local v25           #storePart:Lcom/android/email/mail/internet/MimeBodyPart;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 1844
    .local v18, me:Lcom/android/email/mail/MessagingException;
    const/4 v5, 0x0

    .line 1854
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1856
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1858
    :cond_6
    if-eqz v22, :cond_2

    if-eqz v26, :cond_2

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1845
    .end local v18           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .line 1846
    .local v16, ioe:Ljava/io/IOException;
    :try_start_2
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

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1847
    const/4 v5, 0x0

    .line 1854
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1856
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1858
    :cond_7
    if-eqz v22, :cond_2

    if-eqz v26, :cond_2

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1849
    .end local v16           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object/from16 v23, v5

    .line 1850
    .local v23, rune:Ljava/lang/RuntimeException;
    :try_start_3
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1851
    const/4 v5, 0x0

    .line 1854
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1856
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1858
    :cond_8
    if-eqz v22, :cond_2

    if-eqz v26, :cond_2

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1854
    .end local v23           #rune:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/Folder;->isOpen()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 1856
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 1858
    :cond_9
    if-eqz v22, :cond_a

    if-eqz v26, :cond_a

    .line 1859
    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_a
    throw v5
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 3273
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3411
    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/HashSet;JJJJJII)V
    .locals 21
    .parameter
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"
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
    .line 1686
    .local p1, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
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

    .line 1779
    return-void
.end method

.method public processPendingActions(JZ)V
    .locals 4
    .parameter "accountId"
    .parameter "ismovemail"

    .prologue
    .line 1637
    move v0, p3

    .line 1638
    .local v0, movemaii:Z
    const-string v1, "processPendingActions"

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/MessagingController$8;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;JZ)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 1659
    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 23
    .parameter "context"
    .parameter "account"
    .parameter "source_accountId"
    .parameter "resolver"
    .parameter "messageId"
    .parameter "target_server_type"
    .parameter "source_server_type"
    .parameter "target_accountId"
    .parameter "target_boxkey"

    .prologue
    .line 1996
    const-wide/16 v13, -0x1

    .line 1999
    .local v13, lastMessageId:J
    const/16 v20, 0x0

    .line 2001
    .local v20, remoteStore:Lcom/android/email/mail/Store;
    const/16 v16, 0x0

    .line 2004
    .local v16, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :try_start_0
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v19

    .line 2006
    .local v19, oldMessage:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v19, :cond_1

    .line 2007
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v13, v0

    .line 2008
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    throw v0

    #Unreachable code
    #move-wide v5, v0

    #move-object/from16 v0, v19

    #throw v0

    #move-wide v7, v0

    #cmp-long v5, v5, v7

    #if-eqz v5, :cond_1

    .line 2009
    :cond_0
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 2014
    :cond_1
    if-nez v20, :cond_2

    .line 2015
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v20

    .line 2018
    :cond_2
    if-eqz v16, :cond_3

    .line 2019
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/provider/EmailContent$Message;)V

    .line 2022
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, p8

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 2025
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-wide/from16 v3, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2027
    const-string v5, "processPendingDeletesForeverSynchronous"

    const-string v6, "target_server_type is IMAP"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 2029
    .local v21, u:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2067
    .end local v19           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v21           #u:Landroid/net/Uri;
    :goto_0
    return-void

    .line 2033
    .restart local v19       #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    :cond_4
    const-string v5, "processPendingDeletesForeverSynchronous"

    const-string v6, "target_server_type is POP"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2043
    .local v12, cv:Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 2045
    .local v15, mServerId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v18

    .line 2046
    .local v18, message:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v18, :cond_5

    .line 2047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalAccountMoved-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2049
    const-string v5, "accountKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2050
    const-string v5, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2051
    const-string v5, "syncServerId"

    invoke-virtual {v12, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_5
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 2055
    .local v22, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move-object v2, v12

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    move-wide/from16 v10, p10

    invoke-static/range {v5 .. v11}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2062
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v15           #mServerId:Ljava/lang/String;
    .end local v18           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local v19           #oldMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 2063
    .local v17, me:Lcom/android/email/mail/MessagingException;
    :try_start_1
    const-string v5, "processPendingDeletesForeverSynchronous"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2065
    .end local v17           #me:Lcom/android/email/mail/MessagingException;
    :catchall_0
    move-exception v5

    throw v5
.end method

.method public processPendingMoveActions(Ljava/util/HashSet;JJJ)V
    .locals 11
    .parameter
    .parameter "accountId"
    .parameter "target_boxkey"
    .parameter "orig_boxkey"
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
    .line 1663
    .local p1, final_serverIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
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

    .line 1678
    return-void
.end method

.method pruneCachedAttachments(J)V
    .locals 18
    .parameter "accountId"

    .prologue
    .line 3659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3660
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v11

    .line 3661
    .local v11, cacheDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 3663
    .local v13, fileList:[Ljava/io/File;
    if-nez v13, :cond_1

    .line 3701
    :cond_0
    return-void

    .line 3664
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

    .line 3665
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3669
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 3670
    .local v15, id:J
    sget-object v5, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3671
    .local v4, uri:Landroid/net/Uri;
    sget-object v5, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 3673
    .local v10, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3676
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

    .line 3681
    :cond_2
    if-eqz v10, :cond_3

    .line 3682
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3664
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3681
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :cond_4
    if-eqz v10, :cond_5

    .line 3682
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3687
    :cond_5
    sget-object v5, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3696
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3697
    invoke-virtual {v12}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 3681
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #id:J
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_6

    .line 3682
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3692
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 242
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "MsgControl >>>"

    .line 178
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 183
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    :cond_0
    iput-boolean v6, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 189
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v3, :cond_1

    .line 191
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
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

    .line 194
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 195
    iget-object v3, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 196
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v3, :cond_2

    .line 197
    const-string v3, "MsgControl >>>"

    const-string v3, "run finish >>>"

    invoke-static {v7, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_2
    iput-boolean v5, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_0

    .line 184
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 185
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    move v4, v5

    .line 195
    goto :goto_1
.end method

.method public searchOnServerSync(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 412
    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 415
    const-string v0, "searchOnServerSync"

    new-instance v1, Lcom/android/email/MessagingController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/android/email/provider/EmailContent$Account;JJLcom/android/email/MessagingListener;)V
    .locals 8
    .parameter "account"
    .parameter "sentboxId"
    .parameter "outFolderId"
    .parameter "listener"

    .prologue
    .line 3711
    const-string v7, "sendPendingMessages"

    new-instance v0, Lcom/android/email/MessagingController$16;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController$16;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;JJ)V

    invoke-direct {p0, v7, p6, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3716
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;JJ)V
    .locals 32
    .parameter "account"
    .parameter "sentFolderId"
    .parameter "outFolderId"

    .prologue
    .line 3727
    move-wide/from16 v24, p4

    .line 3728
    .local v24, outboxId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v24, v6

    if-nez v6, :cond_1

    .line 3730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    const/4 v9, 0x4

    invoke-static {v6, v7, v8, v9}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v24

    .line 3731
    const-wide/16 v6, -0x1

    cmp-long v6, v24, v6

    if-nez v6, :cond_1

    .line 3882
    :cond_0
    :goto_0
    return-void

    .line 3735
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3736
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v8, "mailboxKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 3742
    .local v19, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    if-gtz v6, :cond_2

    .line 3879
    if-eqz v19, :cond_0

    .line 3880
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3746
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    const-wide/16 v9, -0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v29

    .line 3749
    .local v29, sender:Lcom/android/email/mail/Sender;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v27

    .line 3751
    .local v27, remoteStore:Lcom/android/email/mail/Store;
    const/16 v23, 0x0

    .line 3756
    .local v23, moveToSentValues:Landroid/content/ContentValues;
    const/16 v26, 0x0

    .line 3758
    .local v26, remoteSentFolder:Lcom/android/email/mail/Folder;
    :try_start_2
    const-string v6, "Sent"

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v26

    .line 3759
    if-nez v26, :cond_5

    .line 3764
    const/16 v28, 0x1

    .line 3797
    .local v28, requireMoveMessageToSentFolder:Z
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-eqz v6, :cond_b

    .line 3798
    const-wide/16 v9, -0x1

    .line 3800
    .local v9, messageId:J
    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 3802
    move-object/from16 v0, v29

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3809
    :try_start_5
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 3811
    .local v30, syncedUri:Landroid/net/Uri;
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 3814
    .local v31, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6, v9, v10}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v20

    .line 3815
    .local v20, localMessage:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6, v9, v10}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v18

    .line 3816
    .local v18, body:Lcom/android/email/provider/EmailContent$Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    const/4 v11, 0x5

    invoke-static {v6, v7, v8, v11}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v21

    .line 3817
    .local v21, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    const/16 v22, 0x0

    .line 3819
    .local v22, message:Lcom/android/email/mail/Message;
    if-eqz v20, :cond_4

    .line 3821
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/mail/Message;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/android/email/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v22

    .line 3828
    :cond_4
    :goto_2
    if-eqz v28, :cond_a

    .line 3829
    :try_start_7
    new-instance v23, Landroid/content/ContentValues;

    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3830
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    const-string v6, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3831
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3832
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3833
    if-eqz v20, :cond_3

    if-eqz v18, :cond_3

    if-eqz v21, :cond_3

    if-eqz v22, :cond_3

    .line 3834
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 3871
    .end local v9           #messageId:J
    .end local v18           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local v20           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v21           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v22           #message:Lcom/android/email/mail/Message;
    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    .end local v26           #remoteSentFolder:Lcom/android/email/mail/Folder;
    .end local v27           #remoteStore:Lcom/android/email/mail/Store;
    .end local v28           #requireMoveMessageToSentFolder:Z
    .end local v29           #sender:Lcom/android/email/mail/Sender;
    .end local v30           #syncedUri:Landroid/net/Uri;
    .end local v31           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    move-object v11, v6

    .line 3872
    .local v11, me:Lcom/android/email/mail/MessagingException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v13, v0

    const-wide/16 v15, -0x1

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3879
    if-eqz v19, :cond_0

    .line 3880
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3768
    .end local v11           #me:Lcom/android/email/mail/MessagingException;
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    .restart local v26       #remoteSentFolder:Lcom/android/email/mail/Folder;
    .restart local v27       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v29       #sender:Lcom/android/email/mail/Sender;
    :cond_5
    :try_start_9
    invoke-virtual/range {v26 .. v26}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3772
    sget-object v6, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 3775
    :cond_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/email/mail/Folder;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3776
    const/16 v28, 0x1

    .restart local v28       #requireMoveMessageToSentFolder:Z
    goto/16 :goto_1

    .line 3780
    .end local v28           #requireMoveMessageToSentFolder:Z
    :cond_7
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3781
    invoke-virtual/range {v26 .. v26}, Lcom/android/email/mail/Folder;->getMode()Lcom/android/email/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    if-eq v6, v7, :cond_8

    .line 3782
    const/16 v28, 0x1

    .restart local v28       #requireMoveMessageToSentFolder:Z
    goto/16 :goto_1

    .line 3786
    .end local v28           #requireMoveMessageToSentFolder:Z
    :cond_8
    const/16 v28, 0x0

    .restart local v28       #requireMoveMessageToSentFolder:Z
    goto/16 :goto_1

    .line 3792
    .end local v28           #requireMoveMessageToSentFolder:Z
    :catch_1
    move-exception v6

    move-object v11, v6

    .line 3793
    .restart local v11       #me:Lcom/android/email/mail/MessagingException;
    const/16 v28, 0x1

    .restart local v28       #requireMoveMessageToSentFolder:Z
    goto/16 :goto_1

    .line 3803
    .end local v11           #me:Lcom/android/email/mail/MessagingException;
    .restart local v9       #messageId:J
    :catch_2
    move-exception v6

    move-object v11, v6

    .line 3805
    .restart local v11       #me:Lcom/android/email/mail/MessagingException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 3874
    .end local v9           #messageId:J
    .end local v11           #me:Lcom/android/email/mail/MessagingException;
    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    .end local v26           #remoteSentFolder:Lcom/android/email/mail/Folder;
    .end local v27           #remoteStore:Lcom/android/email/mail/Store;
    .end local v28           #requireMoveMessageToSentFolder:Z
    .end local v29           #sender:Lcom/android/email/mail/Sender;
    :catch_3
    move-exception v6

    move-object/from16 v17, v6

    .line 3875
    .local v17, e:Ljava/lang/RuntimeException;
    :try_start_b
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while sync message in sendPendingMessagesSynchronous()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v13, v0

    const-wide/16 v15, -0x1

    invoke-virtual/range {v12 .. v17}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3879
    if-eqz v19, :cond_0

    .line 3880
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3823
    .end local v17           #e:Ljava/lang/RuntimeException;
    .restart local v9       #messageId:J
    .restart local v18       #body:Lcom/android/email/provider/EmailContent$Body;
    .restart local v20       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v21       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v22       #message:Lcom/android/email/mail/Message;
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    .restart local v26       #remoteSentFolder:Lcom/android/email/mail/Folder;
    .restart local v27       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v28       #requireMoveMessageToSentFolder:Z
    .restart local v29       #sender:Lcom/android/email/mail/Sender;
    .restart local v30       #syncedUri:Landroid/net/Uri;
    .restart local v31       #uri:Landroid/net/Uri;
    :catch_4
    move-exception v6

    move-object/from16 v17, v6

    .line 3824
    .local v17, e:Ljava/lang/Exception;
    :try_start_c
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error LegacyConversions.makeMessage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 3879
    .end local v9           #messageId:J
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local v20           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v21           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v22           #message:Lcom/android/email/mail/Message;
    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    .end local v26           #remoteSentFolder:Lcom/android/email/mail/Folder;
    .end local v27           #remoteStore:Lcom/android/email/mail/Store;
    .end local v28           #requireMoveMessageToSentFolder:Z
    .end local v29           #sender:Lcom/android/email/mail/Sender;
    .end local v30           #syncedUri:Landroid/net/Uri;
    .end local v31           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    if-eqz v19, :cond_9

    .line 3880
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v6

    .line 3838
    .restart local v9       #messageId:J
    .restart local v18       #body:Lcom/android/email/provider/EmailContent$Body;
    .restart local v20       #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v21       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v22       #message:Lcom/android/email/mail/Message;
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    .restart local v26       #remoteSentFolder:Lcom/android/email/mail/Folder;
    .restart local v27       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v28       #requireMoveMessageToSentFolder:Z
    .restart local v29       #sender:Lcom/android/email/mail/Sender;
    .restart local v30       #syncedUri:Landroid/net/Uri;
    .restart local v31       #uri:Landroid/net/Uri;
    :cond_a
    :try_start_d
    new-instance v23, Landroid/content/ContentValues;

    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3839
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    const-string v6, "mailboxKey"

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3841
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3842
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 3846
    if-eqz v20, :cond_3

    if-eqz v22, :cond_3

    .line 3847
    const/4 v6, 0x1

    :try_start_e
    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->appendMessages([Lcom/android/email/mail/Message;)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3850
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3851
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/android/email/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_1

    .line 3853
    :catch_5
    move-exception v6

    move-object/from16 v17, v6

    .line 3854
    .restart local v17       #e:Ljava/lang/Exception;
    :try_start_f
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sync for remoteSentFolder."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    new-instance v23, Landroid/content/ContentValues;

    .end local v23           #moveToSentValues:Landroid/content/ContentValues;
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3856
    .restart local v23       #moveToSentValues:Landroid/content/ContentValues;
    const-string v6, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3857
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3858
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3859
    if-eqz v20, :cond_3

    if-eqz v18, :cond_3

    if-eqz v21, :cond_3

    if-eqz v22, :cond_3

    .line 3860
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z

    goto/16 :goto_1

    .line 3865
    .end local v9           #messageId:J
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local v20           #localMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v21           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v22           #message:Lcom/android/email/mail/Message;
    .end local v30           #syncedUri:Landroid/net/Uri;
    .end local v31           #uri:Landroid/net/Uri;
    :cond_b
    const/4 v6, 0x0

    move-object/from16 v0, v26

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 3868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 3879
    if-eqz v19, :cond_0

    .line 3880
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public setRemoteSync(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3934
    iput-boolean p1, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 3935
    return-void
.end method

.method public synchronizeMailbox(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 767
    iget v0, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 776
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 771
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)Z
    .locals 20
    .parameter "folder"
    .parameter "message"
    .parameter "localMessage"
    .parameter "body"

    .prologue
    .line 1410
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 1412
    const/16 v16, 0x0

    .line 1490
    :goto_0
    return v16

    .line 1415
    :cond_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1417
    .local v15, value:Landroid/content/ContentValues;
    :try_start_0
    const-string v16, "MsgControl >>>"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "time : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | from : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | contactid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | messageid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " | m_subject: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v16, "date"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 1426
    const-string v16, "type"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string v16, "number"

    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :goto_1
    const-string v16, "contactid"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    const-string v16, "messageid"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1436
    const-string v16, "m_subject"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v16, "new"

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object v13, v0

    .line 1447
    .local v13, textContent:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object v9, v0

    .line 1448
    .local v9, htmlContent:Ljava/lang/String;
    const-string v5, ""

    .line 1450
    .local v5, content:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 1451
    move-object v5, v13

    .line 1461
    :cond_1
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x32

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 1462
    const-string v16, "m_content"

    const/16 v17, 0x0

    const/16 v18, 0x31

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1474
    .end local v5           #content:Ljava/lang/String;
    .end local v9           #htmlContent:Ljava/lang/String;
    .end local v13           #textContent:Ljava/lang/String;
    :goto_4
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1476
    sget-object v16, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v14

    .line 1477
    .local v14, toAddress:[Lcom/android/email/mail/Address;
    move-object v4, v14

    .local v4, arr$:[Lcom/android/email/mail/Address;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_5
    if-ge v10, v11, :cond_7

    aget-object v3, v4, v10

    .line 1478
    .local v3, address:Lcom/android/email/mail/Address;
    const-string v16, "number"

    invoke-virtual {v3}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "content://logs/email"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1477
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1431
    .end local v3           #address:Lcom/android/email/mail/Address;
    .end local v4           #arr$:[Lcom/android/email/mail/Address;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #toAddress:[Lcom/android/email/mail/Address;
    :cond_2
    :try_start_2
    const-string v16, "type"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 1465
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 1467
    .local v7, e1:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v7}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto :goto_4

    .line 1439
    .end local v7           #e1:Lcom/android/email/mail/MessagingException;
    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 1453
    .restart local v5       #content:Ljava/lang/String;
    .restart local v9       #htmlContent:Ljava/lang/String;
    .restart local v13       #textContent:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_1

    .line 1454
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "<body>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1455
    .local v12, startBody:[Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "</body>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1456
    .local v8, endBody:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v8, v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1464
    .end local v8           #endBody:[Ljava/lang/String;
    .end local v12           #startBody:[Ljava/lang/String;
    :cond_5
    const-string v16, "m_content"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 1468
    .end local v5           #content:Ljava/lang/String;
    .end local v9           #htmlContent:Ljava/lang/String;
    .end local v13           #textContent:Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 1469
    .local v6, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v16, "Email"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error while updating History For Email."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1484
    .end local v6           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "content://logs/email"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1489
    :cond_7
    :goto_6
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1490
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1487
    :catch_2
    move-exception v16

    goto :goto_6

    .line 1470
    :catch_3
    move-exception v16

    goto/16 :goto_4
.end method
