.class public Lcom/android/email/mail/store/LocalStore$LocalFolder;
.super Lcom/android/email/mail/Folder;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/email/mail/Folder$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFolder"
.end annotation


# instance fields
.field private final POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

.field private mFolderId:J

.field private mName:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private mVisibleLimit:I

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    const/4 v2, -0x1

    .line 601
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/android/email/mail/Folder;-><init>()V

    .line 597
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 598
    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 599
    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 912
    const-string v0, "subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers"

    iput-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

    .line 602
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 603
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    return-void
.end method

.method private buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)V
    .locals 8
    .parameter "sql"
    .parameter "setFlags"
    .parameter "clearFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v7, "Unsupported flag "

    .line 1110
    if-eqz p2, :cond_5

    .line 1111
    move-object v0, p2

    .local v0, arr$:[Lcom/android/email/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1112
    .local v1, flag:Lcom/android/email/mail/Flag;
    sget-object v5, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_0

    .line 1113
    const-string v5, "store_flag_1 = 1 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    :cond_0
    sget-object v5, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_1

    .line 1115
    const-string v5, "store_flag_2 = 1 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1116
    :cond_1
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_2

    .line 1117
    const-string v5, "flag_downloaded_full = 1 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1118
    :cond_2
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_3

    .line 1119
    const-string v5, "flag_downloaded_partial = 1 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1120
    :cond_3
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_4

    .line 1121
    const-string v5, "flag_deleted = 1 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1124
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1125
    .local v4, sbuf:Ljava/lang/StringBuffer;
    new-instance v5, Lcom/android/email/mail/MessagingException;

    const-string v6, "Unsupported flag "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1129
    .end local v0           #arr$:[Lcom/android/email/mail/Flag;
    .end local v1           #flag:Lcom/android/email/mail/Flag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_5
    if-eqz p3, :cond_b

    .line 1130
    move-object v0, p3

    .restart local v0       #arr$:[Lcom/android/email/mail/Flag;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_b

    aget-object v1, v0, v2

    .line 1131
    .restart local v1       #flag:Lcom/android/email/mail/Flag;
    sget-object v5, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_6

    .line 1132
    const-string v5, "store_flag_1 = 0 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1133
    :cond_6
    sget-object v5, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_7

    .line 1134
    const-string v5, "store_flag_2 = 0 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1135
    :cond_7
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_8

    .line 1136
    const-string v5, "flag_downloaded_full = 0 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1137
    :cond_8
    sget-object v5, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_9

    .line 1138
    const-string v5, "flag_downloaded_partial = 0 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1139
    :cond_9
    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-ne v1, v5, :cond_a

    .line 1140
    const-string v5, "flag_deleted = 0 AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1143
    :cond_a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1144
    .restart local v4       #sbuf:Ljava/lang/StringBuffer;
    new-instance v5, Lcom/android/email/mail/MessagingException;

    const-string v6, "Unsupported flag "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1148
    .end local v0           #arr$:[Lcom/android/email/mail/Flag;
    .end local v1           #flag:Lcom/android/email/mail/Flag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_b
    return-void
.end method

.method private deleteAttachments(Ljava/lang/String;)V
    .locals 15
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1523
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1524
    const/4 v14, 0x0

    .line 1526
    .local v14, messagesCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1534
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v12

    .line 1536
    .local v12, messageId:J
    const/4 v10, 0x0

    .line 1538
    .local v10, attachmentsCursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1546
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1547
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1549
    .local v8, attachmentId:J
    :try_start_2
    new-instance v11, Ljava/io/File;

    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1550
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1554
    .end local v11           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1560
    .end local v8           #attachmentId:J
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 1561
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1560
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1567
    .end local v10           #attachmentsCursor:Landroid/database/Cursor;
    .end local v12           #messageId:J
    :catchall_1
    move-exception v0

    if-eqz v14, :cond_3

    .line 1568
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1567
    :cond_3
    throw v0

    :cond_4
    if-eqz v14, :cond_5

    .line 1568
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1571
    :cond_5
    return-void

    .line 1560
    .restart local v10       #attachmentsCursor:Landroid/database/Cursor;
    .restart local v12       #messageId:J
    :cond_6
    if-eqz v10, :cond_0

    .line 1561
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private open(Lcom/android/email/mail/Folder$OpenMode;)V
    .locals 1
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 614
    return-void
.end method

.method private populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    .locals 12
    .parameter "message"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 943
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, ""

    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSubject(Ljava/lang/String;)V

    .line 944
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v4

    .line 945
    .local v4, from:[Lcom/android/email/mail/Address;
    array-length v7, v4

    if-lez v7, :cond_0

    .line 946
    aget-object v7, v4, v10

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFrom(Lcom/android/email/mail/Address;)V

    .line 948
    :cond_0
    new-instance v7, Ljava/util/Date;

    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSentDate(Ljava/util/Date;)V

    .line 949
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    .line 950
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, flagList:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 952
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, flags:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 955
    .local v1, flag:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/android/email/mail/Flag;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 943
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #flag:Ljava/lang/String;
    .end local v2           #flagList:Ljava/lang/String;
    .end local v3           #flags:[Ljava/lang/String;
    .end local v4           #from:[Lcom/android/email/mail/Address;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 957
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #flagList:Ljava/lang/String;
    .restart local v3       #flags:[Ljava/lang/String;
    .restart local v4       #from:[Lcom/android/email/mail/Address;
    :catch_0
    move-exception v7

    .line 960
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #flags:[Ljava/lang/String;
    :cond_2
    const/4 v7, 0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$302(Lcom/android/email/mail/store/LocalStore$LocalMessage;J)J

    .line 961
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    const/4 v8, 0x6

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/email/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 962
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    const/4 v8, 0x7

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/email/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 963
    sget-object v7, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    const/16 v8, 0x8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/email/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 964
    const/16 v7, 0x9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setReplyTo([Lcom/android/email/mail/Address;)V

    .line 965
    const/16 v7, 0xa

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$502(Lcom/android/email/mail/store/LocalStore$LocalMessage;I)I

    .line 966
    new-instance v7, Ljava/util/Date;

    const/16 v8, 0xb

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setInternalDate(Ljava/util/Date;)V

    .line 967
    const/16 v7, 0xc

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setMessageId(Ljava/lang/String;)V

    .line 968
    sget-object v7, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    const/16 v8, 0xd

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v11

    :goto_2
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 969
    sget-object v7, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    const/16 v8, 0xe

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v11

    :goto_3
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 970
    sget-object v7, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    const/16 v8, 0xf

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v11

    :goto_4
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 971
    sget-object v7, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    const/16 v8, 0x10

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6

    move v8, v11

    :goto_5
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 972
    sget-object v7, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/16 v8, 0x11

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v11

    :goto_6
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 973
    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setExtendedHeaders(Ljava/lang/String;)V

    .line 974
    return-void

    :cond_3
    move v8, v10

    .line 968
    goto :goto_2

    :cond_4
    move v8, v10

    .line 969
    goto :goto_3

    :cond_5
    move v8, v10

    .line 970
    goto :goto_4

    :cond_6
    move v8, v10

    .line 971
    goto :goto_5

    :cond_7
    move v8, v10

    .line 972
    goto :goto_6
.end method

.method private saveAttachment(JLcom/android/email/mail/Part;Z)V
    .locals 26
    .parameter "messageId"
    .parameter "attachment"
    .parameter "saveAsNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1355
    const-string v20, "LocalStore >>"

    const-string v21, "saveSttachment ||"

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-wide/16 v6, -0x1

    .line 1357
    .local v6, attachmentId:J
    const/4 v10, 0x0

    .line 1358
    .local v10, contentUri:Landroid/net/Uri;
    const/16 v17, -0x1

    .line 1359
    .local v17, size:I
    const/16 v19, 0x0

    .line 1361
    .local v19, tempAttachmentFile:Ljava/io/File;
    if-nez p4, :cond_0

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1362
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 p4, v0

    .end local p4
    invoke-virtual/range {p4 .. p4}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v6

    .line 1365
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 1366
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v8

    .line 1367
    .local v8, body:Lcom/android/email/mail/Body;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1368
    check-cast v8, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    .end local v8           #body:Lcom/android/email/mail/Body;
    invoke-virtual {v8}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    .line 1384
    :cond_1
    :goto_0
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1389
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v12

    .line 1390
    .local v12, disposition:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1391
    const-string v20, "size"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1392
    .local v16, s:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1393
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1397
    .end local v12           #disposition:Ljava/lang/String;
    .end local v16           #s:Ljava/lang/String;
    :cond_2
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1398
    const/16 v17, 0x0

    .line 1401
    :cond_3
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2c

    invoke-static/range {v20 .. v21}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v18

    .line 1405
    .local v18, storeData:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "name"

    invoke-static/range {v20 .. v21}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1408
    .local v14, name:Ljava/lang/String;
    const-string v20, "LocalStore >>"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "saveAttachment || name : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    if-nez v14, :cond_4

    .line 1410
    const-string v20, "LocalStore >>"

    const-string v21, "set default name +++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v14, "Unknown"

    .line 1414
    :cond_4
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    .line 1416
    .local v9, contentId:Ljava/lang/String;
    const-wide/16 v20, -0x1

    cmp-long v20, v6, v20

    if-nez v20, :cond_9

    .line 1417
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    .local v11, cv:Landroid/content/ContentValues;
    const-string v20, "message_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1419
    const-string v20, "content_uri"

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_1
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v20, "store_data"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v20, "size"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1423
    const-string v20, "name"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v20, "mime_type"

    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v20, "content_id"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "message_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 1442
    :goto_2
    if-eqz v19, :cond_5

    .line 1443
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1444
    .local v5, attachmentFile:Ljava/io/File;
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1449
    new-instance v20, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 1450
    new-instance v11, Landroid/content/ContentValues;

    .end local v11           #cv:Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1451
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v20, "content_uri"

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_3
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "id = ?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1459
    .end local v5           #attachmentFile:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1460
    check-cast p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    .end local p3
    move-object/from16 v0, p3

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->setAttachmentId(J)V

    .line 1462
    :cond_6
    return-void

    .line 1375
    .end local v9           #contentId:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #storeData:Ljava/lang/String;
    .restart local v8       #body:Lcom/android/email/mail/Body;
    .restart local p3
    :cond_7
    invoke-interface/range {p3 .. p3}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 1376
    .local v13, in:Ljava/io/InputStream;
    const-string v20, "att"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 1377
    new-instance v15, Ljava/io/FileOutputStream;

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1378
    .local v15, out:Ljava/io/FileOutputStream;
    invoke-static {v13, v15}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v17

    .line 1379
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1380
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 1419
    .end local v8           #body:Lcom/android/email/mail/Body;
    .end local v13           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v9       #contentId:Ljava/lang/String;
    .restart local v11       #cv:Landroid/content/ContentValues;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v18       #storeData:Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1430
    .end local v11           #cv:Landroid/content/ContentValues;
    :cond_9
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1431
    .restart local v11       #cv:Landroid/content/ContentValues;
    const-string v20, "content_uri"

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_4
    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v20, "size"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    const-string v20, "content_id"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v20, "message_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "attachments"

    const-string v22, "id = ?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1431
    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    .line 1451
    .restart local v5       #attachmentFile:Ljava/io/File;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public appendMessages([Lcom/android/email/mail/Message;)V
    .locals 1
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/email/mail/Message;Z)V

    .line 1168
    return-void
.end method

.method public appendMessages([Lcom/android/email/mail/Message;Z)V
    .locals 29
    .parameter "messages"
    .parameter "copy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1177
    const-string v23, "LocalStore >>"

    const-string v24, "appendMessages ||"

    invoke-static/range {v23 .. v24}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    sget-object v23, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1179
    move-object/from16 v5, p1

    .local v5, arr$:[Lcom/android/email/mail/Message;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_9

    aget-object v13, v5, v11

    .line 1180
    .local v13, message:Lcom/android/email/mail/Message;
    move-object v0, v13

    instance-of v0, v0, Lcom/android/email/mail/internet/MimeMessage;

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1181
    new-instance v23, Ljava/lang/Error;

    const-string v24, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1184
    :cond_0
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v20

    .line 1185
    .local v20, uid:Ljava/lang/String;
    if-nez v20, :cond_1

    .line 1187
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 1188
    .local v18, sbuf:Ljava/lang/StringBuffer;
    const-string v23, "Local"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1199
    .end local v18           #sbuf:Ljava/lang/StringBuffer;
    :goto_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v22, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v7, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v13

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1203
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1204
    .local v16, sbHtml:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 1205
    .local v17, sbText:Ljava/lang/StringBuffer;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/email/mail/Part;

    .line 1207
    .local v21, viewable:Lcom/android/email/mail/Part;
    :try_start_0
    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v19

    .line 1212
    .local v19, text:Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/html"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1213
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1218
    .end local v19           #text:Ljava/lang/String;
    :catch_0
    move-exception v23

    move-object/from16 v9, v23

    .line 1219
    .local v9, e:Ljava/lang/Exception;
    new-instance v23, Lcom/android/email/mail/MessagingException;

    const-string v24, "Unable to get text for message part"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 1194
    .end local v7           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #sbHtml:Ljava/lang/StringBuffer;
    .end local v17           #sbText:Ljava/lang/StringBuffer;
    .end local v21           #viewable:Lcom/android/email/mail/Part;
    .end local v22           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .restart local v11       #i$:I
    :cond_1
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    const-string v24, "DELETE FROM messages WHERE folder_id = ? AND uid = ?"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1216
    .end local v11           #i$:I
    .restart local v7       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v16       #sbHtml:Ljava/lang/StringBuffer;
    .restart local v17       #sbText:Ljava/lang/StringBuffer;
    .restart local v19       #text:Ljava/lang/String;
    .restart local v21       #viewable:Lcom/android/email/mail/Part;
    .restart local v22       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1224
    .end local v19           #text:Ljava/lang/String;
    .end local v21           #viewable:Lcom/android/email/mail/Part;
    :cond_3
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1225
    .local v8, cv:Landroid/content/ContentValues;
    const-string v23, "uid"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v23, "subject"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v23, "sender_list"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v23, "date"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v24

    if-nez v24, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    :goto_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1230
    const-string v23, "flags"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v23, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1232
    const-string v23, "to_list"

    sget-object v24, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v23, "cc_list"

    sget-object v24, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v23, "bcc_list"

    sget-object v24, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v23, "html_content"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_4
    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v23, "text_content"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_5
    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v23, "reply_to_list"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getReplyTo()[Lcom/android/email/mail/Address;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v23, "attachment_count"

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    const-string v23, "internal_date"

    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v24

    if-nez v24, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    :goto_6
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1242
    const-string v23, "message_id"

    move-object v0, v13

    check-cast v0, Lcom/android/email/mail/internet/MimeMessage;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/email/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v23, "store_flag_1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    const-string v23, "store_flag_2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v23, "flag_downloaded_full"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const-string v23, "flag_downloaded_partial"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1249
    const-string v23, "flag_deleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    const-string v23, "x_headers"

    check-cast v13, Lcom/android/email/mail/internet/MimeMessage;

    .end local v13           #message:Lcom/android/email/mail/Message;
    invoke-virtual {v13}, Lcom/android/email/mail/internet/MimeMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    const-string v24, "messages"

    const-string v25, "uid"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 1252
    .local v14, messageId:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/mail/Part;

    .line 1253
    .local v6, attachment:Lcom/android/email/mail/Part;
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v3, v6

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/email/mail/Part;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 1255
    .end local v6           #attachment:Lcom/android/email/mail/Part;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v14           #messageId:J
    :catch_1
    move-exception v23

    move-object/from16 v9, v23

    .line 1256
    .restart local v9       #e:Ljava/lang/Exception;
    new-instance v23, Lcom/android/email/mail/MessagingException;

    const-string v24, "Error appending message"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 1228
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cv:Landroid/content/ContentValues;
    .restart local v13       #message:Lcom/android/email/mail/Message;
    :cond_4
    :try_start_3
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    goto/16 :goto_3

    .line 1236
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1237
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1240
    :cond_7
    invoke-virtual {v13}, Lcom/android/email/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v24

    goto/16 :goto_6

    .line 1179
    .end local v13           #message:Lcom/android/email/mail/Message;
    .restart local v14       #messageId:J
    :cond_8
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 1259
    .end local v7           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v14           #messageId:J
    .end local v16           #sbHtml:Ljava/lang/StringBuffer;
    .end local v17           #sbText:Ljava/lang/StringBuffer;
    .end local v20           #uid:Ljava/lang/String;
    .end local v22           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_9
    return-void
.end method

.method public canCreate(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public changeUid(Lcom/android/email/mail/store/LocalStore$LocalMessage;)V
    .locals 8
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1470
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1471
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1472
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "messages"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1474
    return-void
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 686
    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->expunge()[Lcom/android/email/mail/Message;

    .line 689
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 690
    return-void
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
    .line 1153
    instance-of v0, p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_0
    check-cast p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    .end local p2
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/email/mail/Message;Z)V

    .line 1157
    return-void
.end method

.method public create(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 674
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Lcom/android/email/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$200(Lcom/android/email/mail/store/LocalStore;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    return v5
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
    .line 1659
    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 11
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1499
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1500
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v4

    .line 1501
    .local v4, messages:[Lcom/android/email/mail/Message;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/email/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1502
    .local v3, message:Lcom/android/email/mail/Message;
    invoke-virtual {v3}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    .line 1501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v3           #message:Lcom/android/email/mail/Message;
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v5}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "DELETE FROM folders WHERE id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1507
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1511
    instance-of v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-eqz v0, :cond_0

    .line 1512
    check-cast p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1514
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/android/email/mail/Folder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/email/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/email/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1487
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .local v0, expungedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/email/mail/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    .locals 33
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 798
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 800
    const-string v28, "SELECT html_content, text_content FROM messages WHERE id = ?"

    .line 802
    .local v28, selection:Ljava/lang/String;
    sget-object v5, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 803
    :cond_0
    move-object/from16 v13, p1

    .local v13, arr$:[Lcom/android/email/mail/Message;
    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    aget-object v25, v13, v20

    .line 804
    .local v25, message:Lcom/android/email/mail/Message;
    move-object/from16 v0, v25

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    move-object/from16 v24, v0

    .line 805
    .local v24, localMessage:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    const/16 v18, 0x0

    .line 806
    .local v18, cursor:Landroid/database/Cursor;
    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v26, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct/range {v26 .. v26}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 808
    .local v26, mp:Lcom/android/email/mail/internet/MimeMultipart;
    const-string v5, "mixed"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setBody(Lcom/android/email/mail/Body;)V

    .line 813
    sget-object v5, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 815
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v0, v5

    move-object/from16 v1, v28

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 817
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 818
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 819
    .local v19, htmlContent:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 821
    .local v31, textContent:Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 822
    new-instance v14, Lcom/android/email/mail/internet/TextBody;

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 823
    .local v14, body:Lcom/android/email/mail/internet/TextBody;
    new-instance v15, Lcom/android/email/mail/internet/MimeBodyPart;

    const-string v5, "text/html"

    invoke-direct {v15, v14, v5}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 824
    .local v15, bp:Lcom/android/email/mail/internet/MimeBodyPart;
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 827
    .end local v14           #body:Lcom/android/email/mail/internet/TextBody;
    .end local v15           #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    :cond_1
    if-eqz v31, :cond_2

    .line 828
    new-instance v14, Lcom/android/email/mail/internet/TextBody;

    move-object v0, v14

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 829
    .restart local v14       #body:Lcom/android/email/mail/internet/TextBody;
    new-instance v15, Lcom/android/email/mail/internet/MimeBodyPart;

    const-string v5, "text/plain"

    invoke-direct {v15, v14, v5}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 830
    .restart local v15       #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 834
    .end local v14           #body:Lcom/android/email/mail/internet/TextBody;
    .end local v15           #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    :cond_2
    if-eqz v18, :cond_3

    .line 835
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 851
    .end local v19           #htmlContent:Ljava/lang/String;
    .end local v31           #textContent:Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "attachments"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "mime_type"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "store_data"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "content_uri"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "content_id"

    aput-object v9, v7, v8

    const-string v8, "message_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 867
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 868
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 869
    .local v21, id:J
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 870
    .local v29, size:I
    const/4 v5, 0x2

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 871
    .local v27, name:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 872
    .local v32, type:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 873
    .local v30, storeData:Ljava/lang/String;
    const/4 v5, 0x5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 874
    .local v17, contentUri:Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 875
    .local v16, contentId:Ljava/lang/String;
    const/4 v14, 0x0

    .line 876
    .local v14, body:Lcom/android/email/mail/Body;
    if-eqz v17, :cond_4

    .line 877
    new-instance v14, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    .end local v14           #body:Lcom/android/email/mail/Body;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v14, v5, v6}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 879
    .restart local v14       #body:Lcom/android/email/mail/Body;
    :cond_4
    new-instance v15, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object v5, v0

    move-object v0, v15

    move-object v1, v5

    move-object v2, v14

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;-><init>(Lcom/android/email/mail/store/LocalStore;Lcom/android/email/mail/Body;J)V

    .line 880
    .restart local v15       #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    const-string v5, "Content-Type"

    const-string v6, "%s;\n name=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v32, v7, v8

    const/4 v8, 0x1

    aput-object v27, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    invoke-virtual {v15, v5, v6}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v5, "Content-Disposition"

    const-string v6, "attachment;\n filename=\"%s\";\n size=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v5, "Content-ID"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v5, "X-Android-Attachment-StoreData"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 901
    .end local v14           #body:Lcom/android/email/mail/Body;
    .end local v15           #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v16           #contentId:Ljava/lang/String;
    .end local v17           #contentUri:Ljava/lang/String;
    .end local v21           #id:J
    .end local v27           #name:Ljava/lang/String;
    .end local v29           #size:I
    .end local v30           #storeData:Ljava/lang/String;
    .end local v32           #type:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v18, :cond_5

    .line 902
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 901
    :cond_5
    throw v5

    .line 834
    :catchall_1
    move-exception v5

    if-eqz v18, :cond_6

    .line 835
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_6
    throw v5

    .line 839
    :cond_7
    new-instance v15, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct {v15}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 840
    .restart local v15       #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    const-string v5, "Content-Type"

    const-string v6, "text/html;\n charset=\"UTF-8\""

    invoke-virtual {v15, v5, v6}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 844
    new-instance v15, Lcom/android/email/mail/internet/MimeBodyPart;

    .end local v15           #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    invoke-direct {v15}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 845
    .restart local v15       #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    const-string v5, "Content-Type"

    const-string v6, "text/plain;\n charset=\"UTF-8\""

    invoke-virtual {v15, v5, v6}, Lcom/android/email/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    goto/16 :goto_1

    .line 901
    .end local v15           #bp:Lcom/android/email/mail/internet/MimeBodyPart;
    :cond_8
    if-eqz v18, :cond_9

    .line 902
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 907
    .end local v13           #arr$:[Lcom/android/email/mail/Message;
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v20           #i$:I
    .end local v23           #len$:I
    .end local v24           #localMessage:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    .end local v25           #message:Lcom/android/email/mail/Message;
    .end local v26           #mp:Lcom/android/email/mail/internet/MimeMultipart;
    :cond_a
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 8
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 993
    sget-object v2, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 994
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 995
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    const/4 v0, 0x0

    .line 997
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE uid = ? AND folder_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1004
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    const/4 v2, 0x0

    .line 1010
    if-eqz v0, :cond_0

    .line 1011
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1014
    :cond_0
    :goto_0
    return-object v2

    .line 1007
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    if-eqz v0, :cond_2

    .line 1011
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v1

    .line 1014
    goto :goto_0

    .line 1010
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 1011
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_3
    throw v2
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, v0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessageCount([Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)I

    move-result v0

    return v0
.end method

.method public getMessageCount([Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)I
    .locals 9
    .parameter "setFlags"
    .parameter "clearFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM messages WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .local v2, sql:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)V

    .line 709
    const-string v3, "messages.folder_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 712
    const/4 v0, 0x0

    .line 714
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 719
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 724
    .local v1, messageCount:I
    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_0
    return v1

    .line 724
    .end local v1           #messageCount:I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 725
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_1
    throw v3
.end method

.method public getMessages(IILcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 979
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 980
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 1
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 987
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 10
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1019
    sget-object v3, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const/4 v0, 0x0

    .line 1023
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE folder_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1031
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1032
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 1033
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 1034
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1038
    .end local v1           #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_0
    throw v3

    :cond_1
    if-eqz v0, :cond_2

    .line 1039
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1043
    :cond_2
    new-array v3, v9, [Lcom/android/email/mail/Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public getMessages([Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 11
    .parameter "setFlags"
    .parameter "clearFlags"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v3, sql:Ljava/lang/StringBuilder;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)V

    .line 1078
    const-string v4, "folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const/4 v0, 0x0

    .line 1085
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v4}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1091
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 1093
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 1094
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1097
    .end local v1           #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_0
    throw v4

    :cond_1
    if-eqz v0, :cond_2

    .line 1098
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_2
    new-array v4, v10, [Lcom/android/email/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 6
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1049
    sget-object v5, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1050
    if-nez p1, :cond_0

    .line 1051
    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v5

    .line 1057
    .end local p0
    :goto_0
    return-object v5

    .line 1053
    .restart local p0
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1055
    .local v4, uid:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1057
    .end local v4           #uid:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/email/mail/Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    move-object v5, p0

    goto :goto_0
.end method

.method public getMode()Lcom/android/email/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 653
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

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
    .line 1519
    invoke-static {}, Lcom/android/email/mail/store/LocalStore;->access$700()[Lcom/android/email/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentCallbacks()Lcom/android/email/mail/Folder$PersistentDataCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1578
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1579
    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore;->access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 751
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v1

    .line 737
    :cond_1
    const/4 v0, 0x0

    .line 739
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT unread_count FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 742
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 747
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_2
    throw v1

    .line 744
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    if-eqz v0, :cond_0

    .line 747
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getVisibleLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 782
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v1

    .line 767
    :cond_1
    const/4 v0, 0x0

    .line 769
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT visible_limit FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 772
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 778
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_2
    throw v1

    .line 775
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    if-eqz v0, :cond_0

    .line 778
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 4

    .prologue
    .line 648
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V
    .locals 6
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->create(Lcom/android/email/mail/Folder$FolderType;)Z

    .line 625
    :cond_2
    const/4 v0, 0x0

    .line 627
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT id, unread_count, visible_limit FROM folders where folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 633
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 641
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_3
    throw v1

    .line 635
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 636
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 637
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    .locals 5
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1479
    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1480
    move-object v0, p1

    .local v0, arr$:[Lcom/android/email/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1481
    .local v3, message:Lcom/android/email/mail/Message;
    invoke-virtual {v3, p2, p3}, Lcom/android/email/mail/Message;->setFlags([Lcom/android/email/mail/Flag;Z)V

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1483
    .end local v3           #message:Lcom/android/email/mail/Message;
    :cond_0
    return-void
.end method

.method public setPersistentString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore;->access$900(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method public setPersistentStringAndMessageFlags(Ljava/lang/String;Ljava/lang/String;[Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)V
    .locals 13
    .parameter "key"
    .parameter "value"
    .parameter "setFlags"
    .parameter "clearFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1604
    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1607
    if-eqz p1, :cond_0

    .line 1608
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->setPersistentString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1613
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz p3, :cond_5

    .line 1614
    move-object/from16 v0, p3

    .local v0, arr$:[Lcom/android/email/mail/Flag;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 1615
    .local v2, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_1

    .line 1616
    const-string v6, "store_flag_1"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1617
    :cond_1
    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_2

    .line 1618
    const-string v6, "store_flag_2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1652
    .end local v0           #arr$:[Lcom/android/email/mail/Flag;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #flag:Lcom/android/email/mail/Flag;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v7}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 1619
    .restart local v0       #arr$:[Lcom/android/email/mail/Flag;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v2       #flag:Lcom/android/email/mail/Flag;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_2
    :try_start_1
    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_3

    .line 1620
    const-string v6, "flag_downloaded_full"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1621
    :cond_3
    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_4

    .line 1622
    const-string v6, "flag_downloaded_partial"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1625
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1626
    .local v5, sbuf:Ljava/lang/StringBuffer;
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Unsupported flag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1630
    .end local v0           #arr$:[Lcom/android/email/mail/Flag;
    .end local v2           #flag:Lcom/android/email/mail/Flag;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    :cond_5
    if-eqz p4, :cond_a

    .line 1631
    move-object/from16 v0, p4

    .restart local v0       #arr$:[Lcom/android/email/mail/Flag;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 1632
    .restart local v2       #flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_6

    .line 1633
    const-string v6, "store_flag_1"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1634
    :cond_6
    sget-object v6, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_7

    .line 1635
    const-string v6, "store_flag_2"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1636
    :cond_7
    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_8

    .line 1637
    const-string v6, "flag_downloaded_full"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1638
    :cond_8
    sget-object v6, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_9

    .line 1639
    const-string v6, "flag_downloaded_partial"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1642
    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1643
    .restart local v5       #sbuf:Ljava/lang/StringBuffer;
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Unsupported flag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1647
    .end local v0           #arr$:[Lcom/android/email/mail/Flag;
    .end local v2           #flag:Lcom/android/email/mail/Flag;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    :cond_a
    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "messages"

    const-string v8, "folder_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1650
    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1655
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 6
    .parameter "unreadMessageCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 755
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 756
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 757
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET unread_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    return-void
.end method

.method public setVisibleLimit(I)V
    .locals 6
    .parameter "visibleLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 786
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 787
    iput p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 788
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET visible_limit = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    return-void
.end method

.method public updateMessage(Lcom/android/email/mail/store/LocalStore$LocalMessage;)V
    .locals 21
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1272
    sget-object v15, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/email/mail/Folder$OpenMode;)V

    .line 1273
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v14, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    .local v6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1277
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1278
    .local v10, sbHtml:Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1279
    .local v11, sbText:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, count:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 1280
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/mail/Part;

    .line 1282
    .local v13, viewable:Lcom/android/email/mail/Part;
    :try_start_0
    invoke-static {v13}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v12

    .line 1287
    .local v12, text:Ljava/lang/String;
    invoke-interface {v13}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "text/html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1288
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1293
    .end local v12           #text:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 1294
    .local v8, e:Ljava/lang/Exception;
    new-instance v15, Lcom/android/email/mail/MessagingException;

    const-string v16, "Unable to get text for message part"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 1299
    .end local v8           #e:Ljava/lang/Exception;
    .end local v13           #viewable:Lcom/android/email/mail/Part;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "UPDATE messages SET uid = ?, subject = ?, sender_list = ?, date = ?, flags = ?, folder_id = ?, to_list = ?, cc_list = ?, bcc_list = ?, html_content = ?, text_content = ?, reply_to_list = ?, attachment_count = ?, message_id = ?, store_flag_1 = ?, store_flag_2 = ?, flag_downloaded_full = ?, flag_downloaded_partial = ?, flag_deleted = ?, x_headers = ? WHERE id = ?"

    const/16 v17, 0x15

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/android/email/mail/Address;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v19

    if-nez v19, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    :goto_2
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    sget-object v19, Lcom/android/email/mail/Message$RecipientType;->TO:Lcom/android/email/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x7

    sget-object v19, Lcom/android/email/mail/Message$RecipientType;->CC:Lcom/android/email/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x8

    sget-object v19, Lcom/android/email/mail/Message$RecipientType;->BCC:Lcom/android/email/mail/Message$RecipientType;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x9

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_3
    aput-object v19, v17, v18

    const/16 v18, 0xa

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_4

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_4
    aput-object v19, v17, v18

    const/16 v18, 0xb

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getReplyTo()[Lcom/android/email/mail/Address;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/Address;->legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xc

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xd

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getMessageId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/email/mail/Flag;->X_STORE_1:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/email/mail/Flag;->X_STORE_2:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/email/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/email/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/email/mail/Message;Lcom/android/email/mail/Flag;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x13

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x14

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1337
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    if-ge v9, v7, :cond_5

    .line 1338
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/Part;

    .line 1339
    .local v5, attachment:Lcom/android/email/mail/Part;
    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-object v3, v5

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/email/mail/Part;Z)V

    .line 1337
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1299
    .end local v5           #attachment:Lcom/android/email/mail/Part;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v19

    goto/16 :goto_2

    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1341
    :catch_1
    move-exception v15

    move-object v8, v15

    .line 1342
    .restart local v8       #e:Ljava/lang/Exception;
    new-instance v15, Lcom/android/email/mail/MessagingException;

    const-string v16, "Error appending message"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 1344
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    return-void
.end method
