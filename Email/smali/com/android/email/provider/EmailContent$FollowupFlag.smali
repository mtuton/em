.class public final Lcom/android/email/provider/EmailContent$FollowupFlag;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$FollowupFlagColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FollowupFlag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;,
        Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    }
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final MESSAGE_CONTENT_URI:Landroid/net/Uri;

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;

.field private static defaultFollowup:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;


# instance fields
.field public CompleteTime:J

.field public DateCompleted:J

.field public DueDate:J

.field public FlagType:Ljava/lang/String;

.field public MsgId:J

.field public MsgSyncServerId:Ljava/lang/String;

.field public OrdinalDate:J

.field public ReminderSet:Ljava/lang/Boolean;

.field public ReminderTime:J

.field public RingtoneUri:Landroid/net/Uri;

.field public StartDate:J

.field public Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

.field public SubOrdinalDate:Ljava/lang/String;

.field public TaskId:J

.field public TaskSyncServerId:Ljava/lang/String;

.field public UTCDueDate:J

.field public UTCStartDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/followupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 1454
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "messageSyncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "taskKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "taskSyncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "completeTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dateCompleted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dueDate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "UTCStartDate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "UTCDueDate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "reminderSet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "reminderTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ordinalDate"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sub_ordinaldate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1513
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->THIS_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->defaultFollowup:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1516
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 1492
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1493
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1494
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1495
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1496
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1497
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1498
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1499
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 1500
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1501
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1502
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1503
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 1506
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 1507
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 1508
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 1509
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 1510
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 1517
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mBaseUri:Landroid/net/Uri;

    .line 1518
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    .line 1519
    return-void
.end method

.method public static restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageKey=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1609
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    const-class v1, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    check-cast p0, Lcom/android/email/provider/EmailContent$FollowupFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1644
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mBaseUri:Landroid/net/Uri;

    .line 1645
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    .line 1648
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1652
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1661
    :goto_0
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1662
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1663
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1664
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1665
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1666
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1667
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 1668
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1669
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1670
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1671
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 1674
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 1675
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 1676
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 1677
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 1678
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, ringtone:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1680
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 1682
    :cond_0
    return-object p0

    .line 1655
    .end local v0           #ringtone:Ljava/lang/String;
    :pswitch_0
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    .line 1658
    :pswitch_1
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    :cond_1
    move v1, v4

    .line 1668
    goto :goto_1

    .line 1648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v0

    return-object v0
.end method

.method public setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 11
    .parameter "FollowupStatus"
    .parameter "context"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 1718
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1721
    .local v1, now:Ljava/util/Calendar;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Follow Up"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1723
    sget-object v3, Lcom/android/email/provider/EmailContent$1;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagDefaultState:[I

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1727
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1728
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1729
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1730
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1731
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1784
    :goto_0
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1785
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 1786
    .local v2, rem:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1788
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1789
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1790
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1794
    const/16 v3, 0xb

    const/16 v4, 0x11

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    div-int/lit16 v5, v5, 0xe10

    sub-int/2addr v4, v5

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    div-int/lit16 v5, v5, 0xe10

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1797
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1801
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #rem:Ljava/util/Calendar;
    :cond_0
    iget-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_1

    .line 1802
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1804
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/email/provider/EmailContent$FollowupFlag;->storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 1734
    :pswitch_0
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1735
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 1736
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1737
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1738
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1739
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto :goto_0

    .line 1742
    :pswitch_1
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1743
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1744
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1745
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1746
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1747
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1750
    :pswitch_2
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1751
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 1752
    const/4 v3, 0x2

    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1753
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1754
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1755
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1756
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1757
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1760
    :pswitch_3
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1761
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1762
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1763
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1764
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1767
    :pswitch_4
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1768
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1769
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1770
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1771
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1772
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1773
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1776
    :pswitch_5
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1777
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1778
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1779
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1780
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1723
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 1686
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1688
    .local v0, retval:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1689
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    move-result v1

    .line 1690
    .local v1, tmp:I
    if-eqz v1, :cond_0

    .line 1691
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1698
    .end local v1           #tmp:I
    :cond_0
    :goto_0
    return-object v0

    .line 1693
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 1694
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1695
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-string v8, "flagType"

    const-string v3, "status"

    .line 1523
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1526
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/email/provider/EmailContent$1;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1531
    const-string v1, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1533
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1534
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1535
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1536
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1545
    :goto_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1546
    const-string v1, "flagType"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :goto_1
    const-string v1, "dateCompleted"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1550
    const-string v1, "completeTime"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    const-string v1, "startDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1552
    const-string v1, "dueDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1553
    const-string v1, "UTCStartDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1554
    const-string v1, "UTCDueDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1555
    const-string v1, "reminderSet"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    const-string v1, "reminderTime"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1557
    const-string v1, "ordinalDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    const-string v1, "sub_ordinaldate"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1562
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1563
    const-string v1, "messageSyncServerId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_0
    const-string v1, "taskKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1565
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1566
    const-string v1, "taskSyncServerId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_1
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 1568
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :goto_3
    return-object v0

    .line 1539
    :pswitch_0
    const-string v1, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1542
    :pswitch_1
    const-string v1, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1548
    :cond_2
    const-string v1, "flagType"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v2, v7

    .line 1555
    goto :goto_2

    .line 1570
    :cond_4
    const-string v1, "ringtoneUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    .line 1526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
