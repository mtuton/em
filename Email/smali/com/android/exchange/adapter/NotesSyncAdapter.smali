.class public Lcom/android/exchange/adapter/NotesSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;,
        Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    }
.end annotation


# instance fields
.field mIsLooping:Z

.field mNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->committAccount()V

    .line 36
    return-void
.end method

.method private queryDBForDeletedNotes(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v15, 0x0

    .line 423
    .local v15, c_deleted:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 424
    .local v19, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "accountKey"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "server_id"

    aput-object v6, v7, v5

    .line 427
    .local v7, projectionDeletedNotes:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v11, v0

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 430
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    .line 432
    .end local v7           #projectionDeletedNotes:[Ljava/lang/String;
    .local v18, nextRow:Z
    :goto_0
    if-eqz v18, :cond_1

    .line 433
    new-instance v8, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v19           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .local v8, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v5, 0x2

    :try_start_1
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    .line 437
    const/4 v5, 0x3

    invoke-virtual {v8, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 438
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v16, cv:Landroid/content/ContentValues;
    const-string v5, "flag_sync_needed"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    sget-object v5, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 443
    .local v20, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v17, cv_acc:Landroid/content/ContentValues;
    const-string v5, "syncNeeded"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v5, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 448
    .local v21, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    move-object/from16 v19, v8

    .line 454
    .end local v8           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v19       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto/16 :goto_0

    .line 456
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #cv_acc:Landroid/content/ContentValues;
    .end local v18           #nextRow:Z
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uri_acc:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    move-object/from16 v8, v19

    .end local v19           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v8       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :goto_1
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 457
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_0
    throw v5

    .end local v8           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v18       #nextRow:Z
    .restart local v19       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 457
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_2
    return-object p1

    .line 456
    .end local v19           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v8       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private queryDBForLocalChanges()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    const/16 v20, 0x0

    .line 326
    .local v20, c:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 327
    .local v22, c_msg:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 329
    .local v21, c_body:Landroid/database/Cursor;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v27, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v12, 0x0

    .line 332
    .local v12, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/16 v5, 0x8

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v19, v5

    const/4 v5, 0x1

    const-string v6, "accountKey"

    aput-object v6, v19, v5

    const/4 v5, 0x2

    const-string v6, "clientId"

    aput-object v6, v19, v5

    const/4 v5, 0x3

    const-string v6, "subject"

    aput-object v6, v19, v5

    const/4 v5, 0x4

    const-string v6, "last_modified_date"

    aput-object v6, v19, v5

    const/4 v5, 0x5

    const-string v6, "categories"

    aput-object v6, v19, v5

    const/4 v5, 0x6

    const-string v6, "flag_sync_needed"

    aput-object v6, v19, v5

    const/4 v5, 0x7

    const-string v6, "server_id"

    aput-object v6, v19, v5

    .line 345
    .local v19, NEW_CLIENT_MESSAGE_PROJECTION:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "accountKey"

    aput-object v6, v7, v5

    .line 347
    .local v7, projection:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v11, v0

    iget-wide v13, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 350
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    .local v25, nextRow:Z
    move-object/from16 v26, v12

    .line 352
    .end local v7           #projection:[Ljava/lang/String;
    .end local v12           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .local v26, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :goto_0
    if-eqz v25, :cond_4

    .line 354
    :try_start_1
    sget-object v5, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/Long;

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 355
    .local v9, uri_msg:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v19

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 357
    sget-object v5, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/Long;

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 358
    .local v11, uri_body:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Landroid/provider/Notes$Body;->BODY_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 360
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 363
    new-instance v12, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    .end local v26           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v12       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v5, 0x2

    :try_start_2
    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmClientID(Ljava/lang/String;)V

    .line 368
    const/4 v5, 0x3

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmSubject(Ljava/lang/String;)V

    .line 369
    const/4 v5, 0x4

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmLastModifyDate(Ljava/lang/String;)V

    .line 370
    const/4 v5, 0x5

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmCategories(Ljava/lang/String;)V

    .line 371
    const/4 v5, 0x6

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 372
    const/4 v5, 0x7

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    .line 374
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    const/4 v5, 0x2

    move-object/from16 v0, v21

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyData(Ljava/lang/String;)V

    .line 377
    const/4 v5, 0x4

    move-object/from16 v0, v21

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyType(I)V

    .line 382
    :cond_0
    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v23, cv:Landroid/content/ContentValues;
    const-string v5, "flag_sync_needed"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    sget-object v5, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 387
    .local v28, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v24, cv_acc:Landroid/content/ContentValues;
    const-string v5, "syncNeeded"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    sget-object v5, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 392
    .local v29, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    .end local v23           #cv:Landroid/content/ContentValues;
    .end local v24           #cv_acc:Landroid/content/ContentValues;
    .end local v28           #uri:Landroid/net/Uri;
    .end local v29           #uri_acc:Landroid/net/Uri;
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    move-object/from16 v26, v12

    .line 397
    .end local v12           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v26       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto/16 :goto_0

    .line 400
    .end local v9           #uri_msg:Landroid/net/Uri;
    .end local v11           #uri_body:Landroid/net/Uri;
    .end local v25           #nextRow:Z
    .end local v26           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v12       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 401
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_1
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 404
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_2
    if-eqz v22, :cond_3

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 407
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_3
    throw v5

    .end local v12           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v25       #nextRow:Z
    .restart local v26       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_4
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 401
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_5
    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 404
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_6
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 407
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter;->queryDBForDeletedNotes(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v27

    .line 413
    return-object v27

    .line 400
    :catchall_1
    move-exception v5

    move-object/from16 v12, v26

    .end local v26           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v12       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto :goto_2

    .end local v12           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v9       #uri_msg:Landroid/net/Uri;
    .restart local v11       #uri_body:Landroid/net/Uri;
    .restart local v26       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_8
    move-object/from16 v12, v26

    .end local v26           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v12       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "flag_sync_needed=?"

    .line 42
    const/4 v8, 0x0

    .line 43
    .local v8, count:I
    const/4 v6, 0x0

    .line 44
    .local v6, c_deleted:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 45
    .local v7, c_updated:Landroid/database/Cursor;
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 49
    .local v4, argument:[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 52
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 55
    .local v9, nextRow:Z
    :goto_0
    if-eqz v9, :cond_0

    .line 56
    sget-object v0, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 57
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    sget-object v0, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 60
    .local v11, uri2:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 63
    goto :goto_0

    .line 66
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #uri2:Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 69
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 74
    :goto_1
    if-eqz v9, :cond_1

    .line 75
    sget-object v0, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 76
    .restart local v10       #uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "flag_sync_needed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v12, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 80
    goto :goto_1

    .line 83
    .end local v10           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 86
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_3
    return-void

    .line 86
    .end local v9           #nextRow:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_5
    throw v0
.end method

.method public committAccount()V
    .locals 8

    .prologue
    .line 301
    const-wide/16 v1, -0x1

    .line 303
    .local v1, rowId:J
    iget-object v4, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter;->isAccountPresent(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string v4, "accountKey"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string v4, "mailBoxId"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string v4, "accountType"

    const-string v5, "com.android.exchange"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v4, "emailAddress"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v4, "displayName"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v4, "newMessageCount"

    iget-object v5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    iget-object v4, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 315
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 316
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_0

    .line 317
    const-string v4, "Notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account Added -- Account ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Notes Mailbox ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "IPM.StickyNote"

    return-object v0
.end method

.method public isAccountPresent(J)Z
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 278
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 279
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 280
    .local v7, flag:Z
    const/4 v6, 0x0

    .line 283
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_0

    .line 287
    const/4 v7, 0x1

    .line 290
    :cond_0
    if-eqz v6, :cond_5

    move v0, v8

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v8

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_1
    return v7

    .line 290
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    move v1, v8

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v8

    :goto_3
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    throw v0

    :cond_3
    move v1, v9

    goto :goto_2

    :cond_4
    move v3, v9

    goto :goto_3

    :cond_5
    move v0, v9

    goto :goto_0

    :cond_6
    move v1, v9

    goto :goto_1
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/NotesSyncAdapter;)V

    .line 116
    .local v0, p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parse()Z

    move-result v1

    .line 117
    .local v1, res:Z
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    .line 118
    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 14
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1d

    const/16 v12, 0xd

    const/4 v11, 0x0

    const/4 v10, -0x1

    const-string v9, "Notes"

    .line 124
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v11

    .line 273
    :goto_0
    return v6

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->queryDBForLocalChanges()Ljava/util/ArrayList;

    move-result-object v5

    .line 129
    .local v5, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v4, 0x0

    .line 130
    .local v4, noteIndex:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, listSize:I
    if-lez v1, :cond_1

    .line 133
    const/16 v6, 0x16

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 136
    :cond_1
    :goto_1
    if-ge v4, v1, :cond_e

    .line 138
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 140
    .local v3, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v2, 0x0

    .line 142
    .local v2, multiCategories:[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 143
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_2
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getSyncNeededFlag()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 266
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 267
    goto :goto_1

    .line 150
    :pswitch_0
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_3

    .line 151
    const-string v6, "Notes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send local NEW Note --  Account ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Client ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmClientID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmClientID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 156
    invoke-virtual {p1, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 161
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v6

    if-eq v6, v10, :cond_4

    .line 164
    const/16 v6, 0x44a

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x446

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x44b

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 173
    :cond_4
    if-eqz v2, :cond_6

    array-length v6, v2

    if-lez v6, :cond_6

    .line 174
    const/16 v6, 0x5c8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 176
    const/16 v6, 0x5c9

    aget-object v7, v2, v0

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 178
    :cond_5
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 187
    .end local v0           #i:I
    :cond_6
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 188
    const/16 v6, 0x5c5

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 193
    :cond_7
    const/16 v6, 0x5c6

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 195
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 197
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 203
    :pswitch_1
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_8

    .line 204
    const-string v6, "Notes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send local MODIFIED Note --  Account ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Server ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_8
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 209
    invoke-virtual {p1, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 212
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 214
    const/16 v6, 0x44a

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x446

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x44b

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 226
    :cond_9
    array-length v6, v2

    if-lez v6, :cond_b

    .line 227
    const/16 v6, 0x5c8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 228
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    array-length v6, v2

    if-ge v0, v6, :cond_a

    .line 229
    const/16 v6, 0x5c9

    aget-object v7, v2, v0

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 231
    :cond_a
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 240
    .end local v0           #i:I
    :cond_b
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 241
    const/16 v6, 0x5c5

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 246
    :cond_c
    const/16 v6, 0x5c6

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 248
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 250
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 256
    :pswitch_2
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_d

    .line 257
    const-string v6, "Notes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send local DELETED Note --  Account ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Server ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_d
    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 269
    .end local v2           #multiCategories:[Ljava/lang/String;
    .end local v3           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_e
    if-lez v1, :cond_f

    .line 270
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 273
    :cond_f
    if-lez v1, :cond_10

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_10
    move v6, v11

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
