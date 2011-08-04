.class Lcom/android/email/activity/AccountFolderList$AccountsAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsAdapter"
.end annotation


# instance fields
.field private mAccountTotalCount:Landroid/database/Cursor;

.field private final mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDefaultAccountId:J

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMailboxesCount:I

.field private final mOnDeletingAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparatorPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;IJ)V
    .locals 1
    .parameter "c"
    .parameter "totalCountCursor"
    .parameter "context"
    .parameter "mailboxesCount"
    .parameter "defaultAccountId"

    .prologue
    .line 1174
    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    .line 1175
    iput-object p3, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mContext:Landroid/content/Context;

    .line 1176
    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1177
    iput p4, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    .line 1178
    iput p4, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    .line 1179
    iput-wide p5, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDefaultAccountId:J

    .line 1182
    iput-object p2, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mAccountTotalCount:Landroid/database/Cursor;

    .line 1183
    return-void
.end method

.method private bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 1276
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object/from16 v28, v0

    .line 1278
    .local v28, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountFolderList$AccountsAdapter;Z)V

    .line 1279
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    .line 1281
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1282
    .local v14, accountId:J
    const v4, 0x7f070009

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1287
    .local v20, chipView:Landroid/view/View;
    long-to-int v4, v14

    if-lez v4, :cond_5

    .line 1288
    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1700()[I

    move-result-object v4

    long-to-int v5, v14

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1700()[I

    move-result-object v6

    array-length v6, v6

    rem-int/2addr v5, v6

    aget v19, v4, v5

    .line 1292
    .local v19, chipResId:I
    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1293
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    const v4, 0x7f07000a

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    const v4, 0x7f07000d

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1299
    .local v32, text:Ljava/lang/String;
    if-eqz v32, :cond_0

    .line 1300
    const v4, 0x7f07000f

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1302
    .local v24, descriptionView:Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    .end local v24           #descriptionView:Landroid/widget/TextView;
    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1306
    if-eqz v32, :cond_1

    .line 1307
    const v4, 0x7f070013

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1313
    .local v25, emailView:Landroid/widget/TextView;
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    .end local v25           #emailView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1800()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "accountKey =? AND type = 0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1324
    .local v16, cLast:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1327
    const/16 v4, 0x9

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1328
    .local v29, lastUpdate:J
    const-wide/16 v4, 0x0

    cmp-long v4, v29, v4

    if-eqz v4, :cond_6

    .line 1330
    const v4, 0x7f070010

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1331
    .local v23, dateView:Landroid/widget/TextView;
    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, v22

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1333
    .local v22, date:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDateFormat:Ljava/text/DateFormat;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    .line 1335
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    .end local v22           #date:Ljava/util/Date;
    .end local v23           #dateView:Landroid/widget/TextView;
    .end local v29           #lastUpdate:J
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1382
    const/16 v33, 0x0

    .line 1383
    .local v33, totalMessageCount:I
    const/16 v34, 0x0

    .line 1384
    .local v34, unreadMessageCount:I
    const/16 v17, 0x0

    .line 1385
    .local v17, c_total:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 1388
    .local v18, c_unread:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-wide v1, v14

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v26

    .line 1389
    .local v26, inboxMailboxId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey =? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1390
    .local v7, selection_total:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1395
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v33

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey =? AND flagRead =0 AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1400
    .local v11, selection_unread:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1405
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v34

    .line 1409
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1410
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_3
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1412
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1417
    :cond_4
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 1418
    .local v31, strMsgCount:Ljava/lang/StringBuffer;
    const v4, 0x7f070015

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1432
    .local v21, countView:Landroid/widget/TextView;
    if-gtz v33, :cond_9

    .line 1433
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    :goto_2
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDefaultAccountId:J

    move-wide v4, v0

    cmp-long v4, v14, v4

    if-nez v4, :cond_a

    .line 1448
    const v4, 0x7f070014

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1452
    :goto_3
    return-void

    .line 1290
    .end local v7           #selection_total:Ljava/lang/String;
    .end local v11           #selection_unread:Ljava/lang/String;
    .end local v16           #cLast:Landroid/database/Cursor;
    .end local v17           #c_total:Landroid/database/Cursor;
    .end local v18           #c_unread:Landroid/database/Cursor;
    .end local v19           #chipResId:I
    .end local v21           #countView:Landroid/widget/TextView;
    .end local v26           #inboxMailboxId:J
    .end local v31           #strMsgCount:Ljava/lang/StringBuffer;
    .end local v32           #text:Ljava/lang/String;
    .end local v33           #totalMessageCount:I
    .end local v34           #unreadMessageCount:I
    :cond_5
    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1700()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v19, v4, v5

    .restart local v19       #chipResId:I
    goto/16 :goto_0

    .line 1342
    .restart local v16       #cLast:Landroid/database/Cursor;
    .restart local v29       #lastUpdate:J
    .restart local v32       #text:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v4, "AccountFolderList >>"

    const-string v5, "TRY Last Updated else case"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1346
    .end local v29           #lastUpdate:J
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1409
    .restart local v17       #c_total:Landroid/database/Cursor;
    .restart local v18       #c_unread:Landroid/database/Cursor;
    .restart local v33       #totalMessageCount:I
    .restart local v34       #unreadMessageCount:I
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1410
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_7
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1412
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 1436
    .restart local v7       #selection_total:Ljava/lang/String;
    .restart local v11       #selection_unread:Ljava/lang/String;
    .restart local v21       #countView:Landroid/widget/TextView;
    .restart local v26       #inboxMailboxId:J
    .restart local v31       #strMsgCount:Ljava/lang/StringBuffer;
    :cond_9
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1450
    :cond_a
    const v4, 0x7f070014

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 1235
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object v4, v0

    .line 1236
    .local v4, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v8, 0x0

    invoke-virtual {v4, p0, v8}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountFolderList$AccountsAdapter;Z)V

    .line 1239
    const v8, 0x7f070009

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    const v8, 0x7f07000a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    const v8, 0x7f07000d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1244
    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1245
    const v8, 0x7f07000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1246
    .local v5, nameView:Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    .end local v5           #nameView:Landroid/widget/TextView;
    :cond_0
    const-string v8, "AccountFolderList >>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MAILBOX_DISPLAY_NAME : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1251
    .local v6, strMsgCount:Ljava/lang/StringBuffer;
    const v8, 0x7f07000c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1253
    .local v2, countView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 1254
    .local v3, count_total:I
    const/4 v1, 0x0

    .line 1257
    .local v1, count:I
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, -0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1258
    const-wide/16 v8, -0x2

    invoke-static {p2, v8, v9}, Lcom/android/email/activity/AccountFolderList;->access$1500(Landroid/content/Context;J)I

    move-result v3

    .line 1259
    const-wide/16 v8, -0x2

    invoke-static {p2, v8, v9}, Lcom/android/email/activity/AccountFolderList;->access$1600(Landroid/content/Context;J)I

    move-result v1

    .line 1260
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    return-void

    .line 1262
    :cond_1
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, -0x6

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 1263
    const-wide/16 v8, -0x6

    invoke-static {p2, v8, v9}, Lcom/android/email/activity/AccountFolderList;->access$1500(Landroid/content/Context;J)I

    move-result v3

    .line 1264
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1267
    :cond_2
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;J)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;
    .locals 8
    .parameter "mailboxesCursor"
    .parameter "accountsCursor"
    .parameter "totalCountCursor"
    .parameter "context"
    .parameter "defaultAccountId"

    .prologue
    .line 1166
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object p0, v7, v0

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 1167
    .local v7, cursors:[Landroid/database/Cursor;
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1168
    .local v1, mc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;IJ)V

    return-object v0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 1533
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 1541
    :goto_0
    return v0

    .line 1536
    :cond_0
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-gt p1, v0, :cond_1

    move v0, p1

    .line 1538
    goto :goto_0

    .line 1541
    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1225
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    if-ge v0, v1, :cond_0

    .line 1226
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1230
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1521
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 1522
    .local v0, count:I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1524
    add-int/lit8 v0, v0, 0x1

    .line 1526
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1550
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 1558
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1468
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v0, :cond_0

    .line 1469
    const/4 v0, -0x1

    .line 1471
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1484
    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1487
    .local v0, view:Landroid/widget/TextView;
    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v0

    .line 1490
    .end local v0           #view:Landroid/widget/TextView;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getRealPosition(I)I

    move-result v1

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isAccount(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1190
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1506
    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    move v1, v3

    .line 1512
    :goto_0
    return v1

    .line 1508
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MergeCursor;

    invoke-virtual {v1, v3}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1510
    .local v0, id:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .end local v0           #id:Ljava/lang/Long;
    :cond_2
    move v1, v4

    .line 1512
    goto :goto_0
.end method

.method public isMailbox(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1186
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnDeletingAccountView(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V
    .locals 3
    .parameter "itemView"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    .line 1208
    return-void
.end method
