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

.field private mTimeFormat:Landroid/text/format/DateFormat;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;IJ)V
    .locals 1
    .parameter "c"
    .parameter "totalCountCursor"
    .parameter "context"
    .parameter "mailboxesCount"
    .parameter "defaultAccountId"

    .prologue
    .line 1147
    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    .line 1148
    iput-object p3, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mContext:Landroid/content/Context;

    .line 1149
    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1150
    iput p4, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    .line 1151
    iput p4, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    .line 1152
    iput-wide p5, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDefaultAccountId:J

    .line 1155
    iput-object p2, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mAccountTotalCount:Landroid/database/Cursor;

    .line 1156
    return-void
.end method

.method private bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 36
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 1279
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object/from16 v29, v0

    .line 1281
    .local v29, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v4, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountFolderList$AccountsAdapter;Z)V

    .line 1282
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    .line 1284
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1285
    .local v14, accountId:J
    const v4, 0x7f070009

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1290
    .local v20, chipView:Landroid/view/View;
    long-to-int v4, v14

    if-lez v4, :cond_5

    .line 1291
    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1600()[I

    move-result-object v4

    long-to-int v5, v14

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1600()[I

    move-result-object v6

    array-length v6, v6

    rem-int/2addr v5, v6

    aget v19, v4, v5

    .line 1295
    .local v19, chipResId:I
    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1296
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1299
    .local v33, text:Ljava/lang/String;
    if-eqz v33, :cond_0

    .line 1300
    const v4, 0x7f07000b

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1301
    .local v24, descriptionView:Landroid/widget/TextView;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1303
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    .end local v24           #descriptionView:Landroid/widget/TextView;
    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1307
    if-eqz v33, :cond_1

    .line 1308
    const v4, 0x7f07000d

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1309
    .local v25, emailView:Landroid/widget/TextView;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1310
    const/16 v4, 0x81

    const/16 v5, 0xbe

    const/16 v6, 0xe1

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    .line 1312
    .local v26, fontColor:I
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/high16 v8, -0x100

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v26, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1315
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1321
    .end local v25           #emailView:Landroid/widget/TextView;
    .end local v26           #fontColor:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1700()[Ljava/lang/String;

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

    .line 1327
    .local v16, cLast:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1330
    const/16 v4, 0x9

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1331
    .local v30, lastUpdate:J
    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-eqz v4, :cond_6

    .line 1333
    const v4, 0x7f070012

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1334
    .local v23, dateView:Landroid/widget/TextView;
    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, v22

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1336
    .local v22, date:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm, dd MMM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDateFormat:Ljava/text/DateFormat;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    .line 1338
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    const/16 v4, 0xa2

    const/16 v5, 0xa2

    const/16 v6, 0xa2

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    .line 1340
    .restart local v26       #fontColor:I
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/high16 v8, -0x100

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v26, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1343
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    .end local v22           #date:Ljava/util/Date;
    .end local v23           #dateView:Landroid/widget/TextView;
    .end local v26           #fontColor:I
    .end local v30           #lastUpdate:J
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1387
    const/16 v34, 0x0

    .line 1388
    .local v34, totalMessageCount:I
    const/16 v35, 0x0

    .line 1389
    .local v35, unreadMessageCount:I
    const/16 v17, 0x0

    .line 1390
    .local v17, c_total:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 1393
    .local v18, c_unread:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-wide v1, v14

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v27

    .line 1394
    .local v27, inboxMailboxId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey =? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1395
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

    .line 1400
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v34

    .line 1402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey =? AND flagRead =0 AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1405
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

    .line 1410
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v35

    .line 1414
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1415
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_3
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1417
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_4
    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    .line 1423
    .local v32, strMsgCount:Ljava/lang/StringBuffer;
    const v4, 0x7f070013

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1437
    .local v21, countView:Landroid/widget/TextView;
    if-gtz v34, :cond_9

    .line 1438
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1450
    :goto_2
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    const v4, 0x7f070011

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mDefaultAccountId:J

    move-wide v4, v0

    cmp-long v4, v14, v4

    if-nez v4, :cond_a

    .line 1456
    const v4, 0x7f07000e

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    :goto_3
    return-void

    .line 1293
    .end local v7           #selection_total:Ljava/lang/String;
    .end local v11           #selection_unread:Ljava/lang/String;
    .end local v16           #cLast:Landroid/database/Cursor;
    .end local v17           #c_total:Landroid/database/Cursor;
    .end local v18           #c_unread:Landroid/database/Cursor;
    .end local v19           #chipResId:I
    .end local v21           #countView:Landroid/widget/TextView;
    .end local v27           #inboxMailboxId:J
    .end local v32           #strMsgCount:Ljava/lang/StringBuffer;
    .end local v33           #text:Ljava/lang/String;
    .end local v34           #totalMessageCount:I
    .end local v35           #unreadMessageCount:I
    :cond_5
    invoke-static {}, Lcom/android/email/activity/AccountFolderList;->access$1600()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v19, v4, v5

    .restart local v19       #chipResId:I
    goto/16 :goto_0

    .line 1347
    .restart local v16       #cLast:Landroid/database/Cursor;
    .restart local v30       #lastUpdate:J
    .restart local v33       #text:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v4, "AccountFolderList >>"

    const-string v5, "TRY Last Updated else case"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1351
    .end local v30           #lastUpdate:J
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1414
    .restart local v17       #c_total:Landroid/database/Cursor;
    .restart local v18       #c_unread:Landroid/database/Cursor;
    .restart local v34       #totalMessageCount:I
    .restart local v35       #unreadMessageCount:I
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1415
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_7
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1417
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 1441
    .restart local v7       #selection_total:Ljava/lang/String;
    .restart local v11       #selection_unread:Ljava/lang/String;
    .restart local v21       #countView:Landroid/widget/TextView;
    .restart local v27       #inboxMailboxId:J
    .restart local v32       #strMsgCount:Ljava/lang/StringBuffer;
    :cond_9
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1458
    :cond_a
    const v4, 0x7f07000e

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 1208
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/AccountFolderListItem;

    move-object v7, v0

    .line 1209
    .local v7, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v14, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountFolderList$AccountsAdapter;Z)V

    .line 1212
    const v14, 0x7f070009

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1215
    .local v12, text:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1216
    const v14, 0x7f07000b

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1217
    .local v9, nameView:Landroid/widget/TextView;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1218
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/high16 v16, 0x3f80

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1223
    .local v13, tvParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    .end local v9           #nameView:Landroid/widget/TextView;
    .end local v13           #tvParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v14, "AccountFolderList >>"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MAILBOX_DISPLAY_NAME : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const/4 v12, 0x0

    .line 1230
    const v14, 0x7f07000d

    :try_start_0
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1231
    .local v10, statusView:Landroid/widget/TextView;
    if-eqz v12, :cond_1

    .line 1232
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    .end local v10           #statusView:Landroid/widget/TextView;
    :goto_0
    const v14, 0x7f070012

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1245
    .local v8, lastSyncView:Landroid/widget/TextView;
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1248
    .local v11, strMsgCount:Ljava/lang/StringBuffer;
    const v14, 0x7f070013

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1250
    .local v4, countView:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 1251
    .local v5, count_total:I
    const/4 v3, 0x0

    .line 1254
    .local v3, count:I
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, -0x2

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 1255
    const-wide/16 v14, -0x2

    move-object/from16 v0, p2

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->access$1400(Landroid/content/Context;J)I

    move-result v5

    .line 1256
    const-wide/16 v14, -0x2

    move-object/from16 v0, p2

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->access$1500(Landroid/content/Context;J)I

    move-result v3

    .line 1257
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    const v14, 0x7f070011

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    const v14, 0x7f07000e

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    return-void

    .line 1235
    .end local v3           #count:I
    .end local v4           #countView:Landroid/widget/TextView;
    .end local v5           #count_total:I
    .end local v8           #lastSyncView:Landroid/widget/TextView;
    .end local v11           #strMsgCount:Ljava/lang/StringBuffer;
    .restart local v10       #statusView:Landroid/widget/TextView;
    :cond_1
    const/16 v14, 0x8

    :try_start_1
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1238
    .end local v10           #statusView:Landroid/widget/TextView;
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 1240
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "AccountFolderList >>"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindMailboxItem exception :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1259
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #count:I
    .restart local v4       #countView:Landroid/widget/TextView;
    .restart local v5       #count_total:I
    .restart local v8       #lastSyncView:Landroid/widget/TextView;
    .restart local v11       #strMsgCount:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, -0x6

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 1260
    const-wide/16 v14, -0x6

    move-object/from16 v0, p2

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->access$1400(Landroid/content/Context;J)I

    move-result v5

    .line 1261
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1264
    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;J)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;
    .locals 8
    .parameter "mailboxesCursor"
    .parameter "accountsCursor"
    .parameter "totalCountCursor"
    .parameter "context"
    .parameter "defaultAccountId"

    .prologue
    .line 1139
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object p0, v7, v0

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 1140
    .local v7, cursors:[Landroid/database/Cursor;
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1141
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
    .line 1541
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 1549
    :goto_0
    return v0

    .line 1544
    :cond_0
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-gt p1, v0, :cond_1

    move v0, p1

    .line 1546
    goto :goto_0

    .line 1549
    :cond_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0
.end method


# virtual methods
.method public addOnDeletingAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1506
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

    .line 1198
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mMailboxesCount:I

    if-ge v0, v1, :cond_0

    .line 1199
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1529
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 1530
    .local v0, count:I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1532
    add-int/lit8 v0, v0, 0x1

    .line 1534
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1558
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
    .line 1566
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
    .line 1476
    iget v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v0, :cond_0

    .line 1477
    const/4 v0, -0x1

    .line 1479
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
    .line 1492
    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1495
    .local v0, view:Landroid/widget/TextView;
    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v0

    .line 1498
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
    .line 1163
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

    .line 1514
    iget v1, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    move v1, v3

    .line 1520
    :goto_0
    return v1

    .line 1516
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MergeCursor;

    invoke-virtual {v1, v3}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1518
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

    .line 1520
    goto :goto_0
.end method

.method public isMailbox(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1159
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
    .line 1171
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
    .line 1464
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
    .line 1180
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    .line 1181
    return-void
.end method
