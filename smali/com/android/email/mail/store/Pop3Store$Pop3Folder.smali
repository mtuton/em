.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.super Lcom/android/email/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    }
.end annotation


# instance fields
.field private mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

.field private mMessageCount:I

.field private mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    const-string v2, "INBOX"

    .line 210
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    .line 211
    invoke-direct {p0}, Lcom/android/email/mail/Folder;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 212
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "INBOX"

    iput-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 968
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 970
    if-eqz p1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, response:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 977
    new-instance v1, Lcom/android/email/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 980
    :cond_1
    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    .locals 10
    .parameter "message"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v5, 0x0

    .line 818
    .local v5, response:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 824
    .local v4, messageId:I
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 826
    const-string v6, "RETR %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 835
    :goto_0
    if-eqz v5, :cond_1

    .line 837
    :try_start_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 838
    .local v1, in:Ljava/io/InputStream;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 839
    new-instance v2, Lcom/android/email/mail/transport/LoggingInputStream;

    invoke-direct {v2, v1}, Lcom/android/email/mail/transport/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    move-object v1, v2

    .line 841
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :cond_0
    new-instance v6, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v6, v7, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p1, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 855
    .end local v1           #in:Ljava/io/InputStream;
    :cond_1
    return-void

    .line 819
    .end local v4           #messageId:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 821
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/email/mail/MessagingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 830
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #messageId:I
    :cond_2
    :try_start_2
    const-string v6, "TOP %d %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_0

    .line 831
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 832
    .local v3, me:Lcom/android/email/mail/MessagingException;
    const-string v6, "RETR %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 843
    .end local v3           #me:Lcom/android/email/mail/MessagingException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 850
    .restart local v3       #me:Lcom/android/email/mail/MessagingException;
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 851
    throw v3
.end method

.method private fetchEnvelope([Lcom/android/email/mail/Message;Lcom/android/email/mail/MessageRetrievalListener;)V
    .locals 23
    .parameter "messages"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 724
    const/16 v17, 0x0

    .line 725
    .local v17, unsizedMessages:I
    move-object/from16 v4, p1

    .local v4, arr$:[Lcom/android/email/mail/Message;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v10, v4, v7

    .line 726
    .local v10, message:Lcom/android/email/mail/Message;
    invoke-virtual {v10}, Lcom/android/email/mail/Message;->getSize()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 727
    add-int/lit8 v17, v17, 0x1

    .line 725
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 730
    .end local v10           #message:Lcom/android/email/mail/Message;
    :cond_1
    if-nez v17, :cond_3

    .line 794
    :cond_2
    return-void

    .line 733
    :cond_3
    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    move/from16 v18, v0

    const/16 v19, 0x1388

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 738
    const/4 v6, 0x0

    .local v6, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    .local v5, count:I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 739
    aget-object v10, p1, v6

    .line 740
    .restart local v10       #message:Lcom/android/email/mail/Message;
    move-object v0, v10

    instance-of v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 741
    new-instance v18, Lcom/android/email/mail/MessagingException;

    const-string v19, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct/range {v18 .. v19}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 743
    :cond_4
    move-object v0, v10

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move-object v15, v0

    .line 744
    .local v15, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz p2, :cond_5

    .line 745
    invoke-virtual {v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 747
    :cond_5
    const-string v18, "LIST %d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 750
    .local v16, response:Ljava/lang/String;
    :try_start_0
    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, listParts:[Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 752
    .local v11, msgNum:I
    const/16 v18, 0x2

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 753
    .local v12, msgSize:I
    invoke-virtual {v15, v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    if-eqz p2, :cond_6

    .line 758
    move-object/from16 v0, p2

    move-object v1, v15

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V

    .line 738
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 754
    .end local v9           #listParts:[Ljava/lang/String;
    .end local v11           #msgNum:I
    .end local v12           #msgSize:I
    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .line 755
    .local v14, nfe:Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/io/IOException;

    invoke-direct/range {v18 .. v18}, Ljava/io/IOException;-><init>()V

    throw v18

    .line 762
    .end local v5           #count:I
    .end local v6           #i:I
    .end local v10           #message:Lcom/android/email/mail/Message;
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .end local v15           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v16           #response:Ljava/lang/String;
    :cond_7
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 763
    .local v13, msgUidIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    array-length v8, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_8

    aget-object v10, v4, v7

    .line 764
    .restart local v10       #message:Lcom/android/email/mail/Message;
    invoke-virtual {v10}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 766
    .end local v10           #message:Lcom/android/email/mail/Message;
    :cond_8
    const/4 v6, 0x0

    .restart local v6       #i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    .line 767
    .restart local v5       #count:I
    const-string v18, "LIST"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 768
    .restart local v16       #response:Ljava/lang/String;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 769
    const-string v18, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 772
    const/4 v15, 0x0

    .line 773
    .restart local v15       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const/4 v12, 0x0

    .line 775
    .restart local v12       #msgSize:I
    :try_start_1
    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 776
    .restart local v9       #listParts:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 777
    .restart local v11       #msgNum:I
    const/16 v18, 0x1

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    check-cast v15, Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 782
    .restart local v15       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 783
    if-eqz p2, :cond_a

    .line 784
    invoke-virtual {v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 786
    :cond_a
    invoke-virtual {v15, v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 787
    if-eqz p2, :cond_b

    .line 788
    move-object/from16 v0, p2

    move-object v1, v15

    move v2, v6

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V

    .line 790
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 779
    .end local v9           #listParts:[Ljava/lang/String;
    .end local v11           #msgNum:I
    .end local v15           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_1
    move-exception v18

    move-object/from16 v14, v18

    .line 780
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/io/IOException;

    invoke-direct/range {v18 .. v18}, Ljava/io/IOException;-><init>()V

    throw v18
.end method

.method private getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/android/email/mail/store/Pop3Store;)V

    .line 911
    .local v0, capabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, response:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 913
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    .end local v1           #response:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 916
    .restart local v1       #response:Ljava/lang/String;
    :cond_1
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_0

    .line 937
    .end local v1           #response:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 919
    .restart local v1       #response:Ljava/lang/String;
    :cond_2
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 920
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_0

    .line 922
    :cond_3
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 923
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_0

    .line 925
    :cond_4
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 926
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_0

    .line 928
    :cond_5
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 929
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    goto :goto_0

    .line 933
    :cond_6
    const-string v2, "Email"

    const-string v3, "!!!getCapabilities == else"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V
    .locals 3
    .parameter "msgNum"
    .parameter "message"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v5, 0x0

    .line 453
    .local v5, unindexedMessageCount:I
    move v1, p1

    .local v1, msgNum:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 454
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 455
    add-int/lit8 v5, v5, 0x1

    .line 453
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_1
    if-nez v5, :cond_3

    .line 500
    :cond_2
    return-void

    .line 461
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 462
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$300()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x32

    if-ge v5, v6, :cond_7

    iget v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v7, 0x1388

    if-le v6, v7, :cond_7

    .line 468
    :cond_4
    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 469
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 470
    .local v0, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_6

    .line 472
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 473
    .local v4, sbuf:Ljava/lang/StringBuffer;
    const-string v6, "UIDL "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseSingleLine(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 475
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 477
    :cond_5
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v6, v7, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 478
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    .line 468
    .end local v3           #response:Ljava/lang/String;
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_7
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .restart local v3       #response:Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 484
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 485
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 487
    :cond_9
    iget-boolean v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v6, :cond_2

    .line 490
    iget v1, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 491
    if-lt v1, p1, :cond_8

    if-gt v1, p2, :cond_8

    .line 492
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 493
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_8

    .line 494
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v6, v7, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 495
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_2
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    .local p1, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 505
    .local v5, unindexedUids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 506
    .local v4, uid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 507
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    .end local v4           #uid:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 533
    :cond_2
    return-void

    .line 518
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 519
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, response:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 521
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 522
    iget-boolean v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v6, :cond_2

    .line 525
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 526
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 527
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_5

    .line 528
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v1, v6, v7, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 530
    .restart local v1       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_5
    iget v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_1
.end method


# virtual methods
.method public appendMessages([Lcom/android/email/mail/Message;)V
    .locals 0
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 863
    return-void
.end method

.method public canCreate(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public checkSettings()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v6, "Email"

    .line 226
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    if-nez v4, :cond_0

    .line 228
    const-string v4, "Email"

    const-string v4, "mCapabilities == null"

    invoke-static {v6, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v4, v4, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_2

    .line 239
    :try_start_2
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 240
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v4, "UIDL"

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v4}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, response:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 245
    iget-boolean v4, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_1

    .line 258
    .end local v2           #parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    .end local v3           #response:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 232
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Email"

    const-string v4, "mCapabilities is null"

    invoke-static {v6, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 250
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v4}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->close()V

    .line 251
    new-instance v4, Lcom/android/email/mail/MessagingException;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 255
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 256
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Email"

    const-string v4, "NullPointerException"

    invoke-static {v6, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public close(Z)V
    .locals 1
    .parameter "expunge"

    .prologue
    .line 349
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 355
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    .locals 2
    .parameter "msgs"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 0
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 866
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 985
    instance-of v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 986
    check-cast p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 988
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/email/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 869
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    .locals 12
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v11, "Email"

    .line 660
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 720
    :cond_0
    return-void

    .line 663
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v9, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/android/email/mail/Message;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v1, v4

    .line 665
    .local v7, message:Lcom/android/email/mail/Message;
    invoke-virtual {v7}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 668
    .end local v7           #message:Lcom/android/email/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V

    .line 669
    sget-object v10, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 672
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/android/email/mail/Message;Lcom/android/email/mail/MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    array-length v2, p1

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 682
    aget-object v7, p1, v3

    .line 683
    .restart local v7       #message:Lcom/android/email/mail/Message;
    instance-of v10, v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v10, :cond_5

    .line 684
    new-instance v10, Lcom/android/email/mail/MessagingException;

    const-string v11, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v10, v11}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 674
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v7           #message:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 675
    .local v5, ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 676
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 677
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_4
    new-instance v10, Lcom/android/email/mail/MessagingException;

    const-string v11, "fetch"

    invoke-direct {v10, v11, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 686
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v7       #message:Lcom/android/email/mail/Message;
    :cond_5
    move-object v0, v7

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move-object v8, v0

    .line 688
    .local v8, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz p3, :cond_6

    .line 689
    :try_start_1
    invoke-virtual {v8}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p3, v10, v3, v2}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 691
    :cond_6
    sget-object v10, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 692
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 709
    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    .line 710
    invoke-interface {p3, v7, v3, v2}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V

    .line 681
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 694
    :cond_9
    sget-object v10, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 699
    const/16 v10, 0x2a1

    invoke-direct {p0, v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 712
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 713
    .restart local v5       #ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 714
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_a

    .line 715
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_a
    new-instance v10, Lcom/android/email/mail/MessagingException;

    const-string v11, "Unable to fetch message"

    invoke-direct {v10, v11, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 702
    .end local v5           #ioe:Ljava/io/IOException;
    :cond_b
    :try_start_2
    sget-object v10, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 707
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/android/email/mail/Body;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 408
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    return-object v1

    .line 399
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 400
    .local v0, ioe:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->close()V

    .line 401
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 402
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to index during getMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_1
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "getMessages"

    invoke-direct {v2, v3, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 12
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 414
    if-lt p1, v11, :cond_0

    if-lt p2, v11, :cond_0

    if-ge p2, p1, :cond_1

    .line 415
    :cond_0
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Invalid message set %d %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const/4 v0, 0x0

    .line 429
    .local v0, i:I
    move v5, p1

    .local v5, msgNum:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-gt v5, p2, :cond_4

    .line 430
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 431
    .local v3, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz p3, :cond_5

    .line 432
    invoke-virtual {v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p3, v6, v1, v7}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 434
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    if-eqz p3, :cond_2

    .line 436
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    sub-int v6, p2, p1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p3, v3, v0, v6}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V

    move v0, v1

    .line 429
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 420
    .end local v1           #i:I
    .end local v3           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v4           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .end local v5           #msgNum:I
    :catch_0
    move-exception v2

    .line 421
    .local v2, ioe:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 422
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 423
    const-string v6, "Email"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_3
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "getMessages"

    invoke-direct {v6, v7, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 439
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v4       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    .restart local v5       #msgNum:I
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/email/mail/Message;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0

    .restart local v3       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .restart local p0
    :cond_5
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 1
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 2
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/android/email/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/email/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$500()[Lcom/android/email/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V
    .locals 9
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const-string v6, "Email"

    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 268
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 272
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 275
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    .line 279
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v6, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v6, :cond_4

    .line 281
    const-string v6, "STLS"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->reopenTls()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$100(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$200(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PASS /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 308
    const/4 v5, 0x0

    .line 310
    .local v5, statException:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "STAT"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, response:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    if-ge v6, v8, :cond_8

    .line 313
    new-instance v5, Ljava/io/IOException;

    .end local v5           #statException:Ljava/lang/Exception;
    invoke-direct {v5}, Ljava/io/IOException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 322
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :goto_1
    if-eqz v5, :cond_9

    .line 323
    :try_start_5
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 324
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 325
    const-string v6, "Email"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_3
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "POP3 STAT"

    invoke-direct {v6, v7, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    .end local v5           #statException:Ljava/lang/Exception;
    :cond_4
    :try_start_6
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 285
    const-string v6, "Email"

    const-string v7, "TLS not supported but required"

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_5
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 300
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 301
    .local v0, ioe:Ljava/io/IOException;
    :try_start_7
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 302
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 303
    const-string v6, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_6
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 294
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 295
    .local v1, me:Lcom/android/email/mail/MessagingException;
    :try_start_8
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 296
    const-string v6, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_7
    new-instance v6, Lcom/android/email/mail/AuthenticationFailedException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 315
    .end local v1           #me:Lcom/android/email/mail/MessagingException;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :cond_8
    const/4 v6, 0x1

    :try_start_9
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 317
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 318
    .restart local v0       #ioe:Ljava/io/IOException;
    move-object v5, v0

    .line 321
    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 319
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 320
    .local v2, nfe:Ljava/lang/NumberFormatException;
    move-object v5, v2

    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 329
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_a
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 331
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    .locals 10
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 874
    if-eqz p3, :cond_0

    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    invoke-static {p2, v5}, Lcom/android/email/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 893
    :cond_0
    return-void

    .line 881
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/email/mail/Message;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 882
    .local v4, message:Lcom/android/email/mail/Message;
    const-string v5, "DELE %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #message:Lcom/android/email/mail/Message;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 887
    .local v2, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 888
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 889
    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_2
    new-instance v5, Lcom/android/email/mail/MessagingException;

    const-string v6, "setFlags()"

    invoke-direct {v5, v6, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
