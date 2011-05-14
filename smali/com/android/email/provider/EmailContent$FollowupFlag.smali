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
.field public static final CONTENT_COMPLETE_TIME_COLUMN:I = 0x8

.field public static final CONTENT_DATE_COMPLETED_COLUMN:I = 0x9

.field public static final CONTENT_DUE_DATE_COLUMN:I = 0xb

.field public static final CONTENT_FLAG_TYPE_COLUMN:I = 0x7

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MESSAGE_KEY_COLUMN:I = 0x1

.field public static final CONTENT_MESSAGE_SYNC_SERVER_ID:I = 0x2

.field public static final CONTENT_ORDINAL_DATE_COLUMN:I = 0x10

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_REMINDER_SET_COLUMN:I = 0xe

.field public static final CONTENT_REMINDER_TIME_COLUMN:I = 0xf

.field public static final CONTENT_RINGTONE_URI_COLUMN:I = 0x5

.field public static final CONTENT_START_DATE_COLUMN:I = 0xa

.field public static final CONTENT_STATUS_COLUMN:I = 0x6

.field public static final CONTENT_SUB_ORDINAL_DATE_COLUMN:I = 0x11

.field public static final CONTENT_TASK_KEY_COLUMN:I = 0x3

.field public static final CONTENT_TASK_SYNC_SERVER_ID:I = 0x4

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_UTC_DUE_DATE_COLUMN:I = 0xd

.field public static final CONTENT_UTC_START_DATE_COLUMN:I = 0xc

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "FollowupFlag_Deletes"

.field public static final MESSAGE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "FollowupFlag"

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "FollowupFlag_Updates"

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
    .line 1119
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

    .line 1120
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

    .line 1122
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

    .line 1123
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

    .line 1124
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

    .line 1145
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

    .line 1204
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->THIS_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->defaultFollowup:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1207
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 1183
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1184
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1185
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1186
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1187
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1188
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1189
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1190
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 1191
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1192
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1193
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1194
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 1197
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 1198
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 1199
    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 1200
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 1201
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 1208
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mBaseUri:Landroid/net/Uri;

    .line 1209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    .line 1210
    return-void
.end method

.method public static restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 7
    .parameter "context"
    .parameter "MsgId"

    .prologue
    const/4 v4, 0x0

    .line 1295
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

    move-result-object v6

    .line 1300
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    const-class v0, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$FollowupFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreFollowupFlagWithEmailSyncId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 7
    .parameter "context"
    .parameter "MsgSyncId"

    .prologue
    const/4 v4, 0x0

    .line 1317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageSyncServerId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1322
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    const-class v0, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$FollowupFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreFollowupFlagWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1273
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1274
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1278
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    const-class v0, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$FollowupFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public changeDefaultState(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;)Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    .locals 1
    .parameter "state"

    .prologue
    .line 1395
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->defaultFollowup:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1397
    .local v0, prev:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    sput-object p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->defaultFollowup:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1398
    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1335
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mBaseUri:Landroid/net/Uri;

    .line 1336
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    .line 1339
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1343
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1352
    :goto_0
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1353
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1354
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1355
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1356
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1357
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1358
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 1359
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1360
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1361
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1362
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 1365
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 1366
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 1367
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 1368
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 1369
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, ringtone:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1371
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 1373
    :cond_0
    return-object p0

    .line 1346
    .end local v0           #ringtone:Ljava/lang/String;
    :pswitch_0
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    .line 1349
    :pswitch_1
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    :cond_1
    move v1, v4

    .line 1359
    goto :goto_1

    .line 1339
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
    .line 1113
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

    .line 1409
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1412
    .local v1, now:Ljava/util/Calendar;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Follow Up"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1414
    sget-object v3, Lcom/android/email/provider/EmailContent$1;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagDefaultState:[I

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1418
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1419
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1420
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1421
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1422
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1475
    :goto_0
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1476
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 1477
    .local v2, rem:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1479
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1480
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1481
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1485
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

    .line 1488
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1492
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #rem:Ljava/util/Calendar;
    :cond_0
    iget-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_1

    .line 1493
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 1495
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/email/provider/EmailContent$FollowupFlag;->storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 1425
    :pswitch_0
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1426
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 1427
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1428
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1429
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1430
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto :goto_0

    .line 1433
    :pswitch_1
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1434
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1435
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1436
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1437
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1438
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1441
    :pswitch_2
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1442
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 1443
    const/4 v3, 0x2

    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1444
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1445
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1446
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1447
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1448
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1451
    :pswitch_3
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1452
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1453
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1454
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1455
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1458
    :pswitch_4
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1459
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1460
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1461
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1462
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 1463
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 1464
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1467
    :pswitch_5
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1468
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1469
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 1470
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1471
    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 1414
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

    .line 1377
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1379
    .local v0, retval:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1380
    sget-object v3, Lcom/android/email/provider/EmailContent$FollowupFlag;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->mId:J

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    move-result v1

    .line 1381
    .local v1, tmp:I
    if-eqz v1, :cond_0

    .line 1382
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1389
    .end local v1           #tmp:I
    :cond_0
    :goto_0
    return-object v0

    .line 1384
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 1385
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1386
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

    .line 1214
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1217
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/email/provider/EmailContent$1;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1222
    const-string v1, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 1224
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 1225
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 1226
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 1227
    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v5, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 1236
    :goto_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1237
    const-string v1, "flagType"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :goto_1
    const-string v1, "dateCompleted"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1241
    const-string v1, "completeTime"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1242
    const-string v1, "startDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1243
    const-string v1, "dueDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    const-string v1, "UTCStartDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    const-string v1, "UTCDueDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1246
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

    .line 1247
    const-string v1, "reminderTime"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    const-string v1, "ordinalDate"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1249
    const-string v1, "sub_ordinaldate"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1253
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1254
    const-string v1, "messageSyncServerId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    const-string v1, "taskKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1256
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1257
    const-string v1, "taskSyncServerId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 1259
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_3
    return-object v0

    .line 1230
    :pswitch_0
    const-string v1, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1233
    :pswitch_1
    const-string v1, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1239
    :cond_2
    const-string v1, "flagType"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v2, v7

    .line 1246
    goto :goto_2

    .line 1261
    :cond_4
    const-string v1, "ringtoneUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    .line 1217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
