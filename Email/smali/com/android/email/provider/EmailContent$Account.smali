.class public final Lcom/android/email/provider/EmailContent$Account;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$AccountColumns;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri; = null

.field public static final CALENDAR_SYNC_WINDOW_1_MONTH:I = 0x5

.field public static final CALENDAR_SYNC_WINDOW_2_WEEKS:I = 0x4

.field public static final CALENDAR_SYNC_WINDOW_3_MONTH:I = 0x6

.field public static final CALENDAR_SYNC_WINDOW_6_MONTH:I = 0x7

.field public static final CALENDAR_SYNC_WINDOW_ALL:I = 0x0

.field public static final CHECK_INTERVAL_NEVER:I = -0x1

.field public static final CHECK_INTERVAL_PUSH:I = -0x2

.field public static final CHECK_ROAMING_MANUAL:I = 0x0

.field public static final CHECK_ROAMING_SYNC_SCHEDULE:I = 0x1

.field public static final CONTENT_CALENDAR_SYNC_LOOKBACK_COLUMN:I = 0x1a

.field public static final CONTENT_COMPATIBILITY_UUID_COLUMN:I = 0xa

.field public static final CONTENT_DISPLAY_MODE:I = 0x13

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_EMAIL_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_HOST_AUTH_KEY_RECV_COLUMN:I = 0x6

.field public static final CONTENT_HOST_AUTH_KEY_SEND_COLUMN:I = 0x7

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_IS_DEFAULT_COLUMN:I = 0x9

.field public static final CONTENT_MAILBOX_TYPE_COLUMN:I = 0x1

.field public static final CONTENT_NEW_MESSAGE_COUNT_COLUMN:I = 0xe

.field public static final CONTENT_OFF_PEAK_SCHEDULE_COLUMN:I = 0x18

.field public static final CONTENT_PEAK_DAYS_COLUMN:I = 0x14

.field public static final CONTENT_PEAK_END_MINUTE_COLUMN:I = 0x16

.field public static final CONTENT_PEAK_SCHEDULE_COLUMN:I = 0x17

.field public static final CONTENT_PEAK_START_MINUTE_COLUMN:I = 0x15

.field public static final CONTENT_POLICY_KEY_COLUMN:I = 0x12

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_PROTOCOL_VERSION_COLUMN:I = 0xd

.field public static final CONTENT_RINGTONE_URI_COLUMN:I = 0xc

.field public static final CONTENT_ROAMING_SCHEDULE_COLUMN:I = 0x19

.field public static final CONTENT_SECURITY_FLAGS_COLUMN:I = 0xf

.field public static final CONTENT_SECURITY_SYNC_KEY_COLUMN:I = 0x10

.field public static final CONTENT_SENDER_NAME_COLUMN:I = 0xb

.field public static final CONTENT_SIGNATURE_COLUMN:I = 0x11

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x5

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x4

.field public static final CONTENT_TEXT_SIZE:I = 0x1b

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final DEFAULT_PEAK_DAYS:I = 0x3e

.field public static final DEFAULT_PEAK_END_MINUTE:I = 0x3fc

.field public static final DEFAULT_PEAK_START_MINUTE:I = 0x1e0

.field public static final DELETE_POLICY_7DAYS:I = 0x1

.field public static final DELETE_POLICY_NEVER:I = 0x0

.field public static final DELETE_POLICY_ON_DELETE:I = 0x2

.field public static final EX_PROTOCOL_VERSION_12_0:D = 12.0

.field public static final EX_PROTOCOL_VERSION_12_1:D = 12.1

.field public static final EX_PROTOCOL_VERSION_2_0:D = 2.0

.field public static final EX_PROTOCOL_VERSION_2_5:D = 2.5

.field public static final FLAGS_BCC_MYSELF:I = 0x100

.field public static final FLAGS_CC_MYSELF:I = 0x80

.field public static final FLAGS_DELETE_POLICY_MASK:I = 0xc

.field public static final FLAGS_DELETE_POLICY_SHIFT:I = 0x2

.field public static final FLAGS_INCOMPLETE:I = 0x10

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_SECURITY_HOLD:I = 0x20

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_SELECTION:Ljava/lang/String; = "mailboxKey =?"

.field public static final POLICY_TYPES:[Ljava/lang/String; = null

.field public static final SYNC_WINDOW_USER:I = -0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "Account"

.field public static final UNREAD_COUNT_SELECTION:Ljava/lang/String; = "mailboxKey =? and flagRead= 0"

.field public static final UUID_SELECTION:Ljava/lang/String; = "compatibilityUuid =?"


# instance fields
.field public mCalendarSyncLookback:I

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayMode:I

.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailSize:B

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

.field public transient mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

.field public mIsDefault:Z

.field public mIsInPeakPeriod:Z

.field public mNewMessageCount:I

.field public mPolicyKey:Ljava/lang/String;

.field public mProtocolVersion:Ljava/lang/String;

.field public mRingtoneUri:Ljava/lang/String;

.field public mSecurityFlags:I

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

.field public mTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "isDefault"

    const-string v6, "_id"

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 1572
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MS-WAP-Provisioning-XML"

    aput-object v1, v0, v3

    const-string v1, "MS-EAS-Provisioning-WBXML"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->POLICY_TYPES:[Ljava/lang/String;

    .line 1658
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v7, v0, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "displayMode"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "peakDays"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "peakStartMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "peakEndMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "peakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "offPeakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "roamingSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "calendarSyncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "textSize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1684
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 1699
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "isDefault"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    .line 2539
    new-instance v0, Lcom/android/email/provider/EmailContent$Account$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Account$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1706
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 1707
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mBaseUri:Landroid/net/Uri;

    .line 1711
    const-string v0, "content://settings/system/notification_sound"

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 1715
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 1716
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1717
    iput v7, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1718
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1727
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 1729
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 1731
    new-instance v0, Lcom/android/exchange/SyncScheduleData;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 1732
    iput-boolean v4, p0, Lcom/android/email/provider/EmailContent$Account;->mIsInPeakPeriod:Z

    .line 1736
    iput v4, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 1737
    iput v7, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 1740
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1741
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2607
    invoke-direct {p0, v5}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 2608
    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mBaseUri:Landroid/net/Uri;

    .line 2609
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 2613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 2614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 2615
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 2616
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 2617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2618
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 2621
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 2623
    .local v0, b:B
    or-int/lit8 v1, v0, 0x0

    .line 2624
    .local v1, val:I
    shr-int/lit8 v2, v1, 0x4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 2625
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_3

    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 2627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 2628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 2629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 2630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 2631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    .line 2632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    .line 2633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 2634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 2636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 2638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 2640
    const-class v2, Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/SyncScheduleData;

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 2643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 2647
    iput-object v5, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2648
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2649
    new-instance v2, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v2, p1}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2652
    :cond_0
    iput-object v5, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2653
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2654
    new-instance v2, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v2, p1}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2656
    :cond_1
    return-void

    .end local v0           #b:B
    .end local v1           #val:I
    :cond_2
    move v2, v6

    .line 2618
    goto/16 :goto_0

    .restart local v0       #b:B
    .restart local v1       #val:I
    :cond_3
    move v2, v6

    .line 2625
    goto :goto_1
.end method

.method public static getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v9, -0x1

    const/4 v5, 0x0

    .line 2208
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.provider"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v9

    .line 2239
    :goto_0
    return-wide v0

    .line 2213
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 2214
    .local v8, ps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "account"

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-wide v0, v9

    .line 2215
    goto :goto_0

    .line 2219
    :cond_3
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2224
    .local v7, id:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 2225
    :catch_0
    move-exception v0

    .line 2230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "compatibilityUuid =?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2233
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    .line 2239
    goto :goto_0

    .line 2237
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 2256
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v0

    .line 2258
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2259
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 2261
    :cond_0
    return-wide v0
.end method

.method private static getDefaultAccountIdv2(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 2267
    const-string v0, "isDefault IN (1, 17, 33, 49, 65, 81, 97, 113, 129, 145)"

    invoke-static {p0, v0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 2165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2169
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2175
    :goto_0
    return-wide v0

    .line 2173
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2175
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2173
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getId(Landroid/net/Uri;)J
    .locals 2
    .parameter "u"

    .prologue
    .line 1847
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uuid"

    .prologue
    .line 2194
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2297
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2303
    :goto_0
    return v0

    .line 2301
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2303
    goto :goto_0

    .line 2301
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Account;
    .locals 7
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v4, 0x0

    .line 1766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emailAddress=\'"

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

    .line 1770
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    const-class v0, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
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

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 1744
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1746
    .local v1, u:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1748
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    const-class v0, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    if-eqz v6, :cond_0

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 1759
    .restart local p0
    :cond_1
    if-eqz v6, :cond_2

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    goto :goto_0

    .line 1755
    .end local p0
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1756
    .local v7, iae:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "EmailContent >>"

    const-string v2, "restoreAccountWithId IllegalArgumentException >>>"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    if-eqz v6, :cond_3

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    .line 1759
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2533
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarSyncLookback()I
    .locals 1

    .prologue
    .line 1955
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    return v0
.end method

.method public getDeletePolicy()I
    .locals 1

    .prologue
    .line 2047
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 2274
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailSize()B
    .locals 1

    .prologue
    .line 1898
    iget-byte v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 1982
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    return v0
.end method

.method public getLocalStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2086
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 2087
    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2090
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 2091
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, senderUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2096
    .end local v0           #senderUri:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getShortcutSafeUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/provider/EmailContent$Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2066
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 2067
    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2070
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 2071
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 2072
    .local v0, storeUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2076
    .end local v0           #storeUri:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getSyncInterval()I
    .locals 1

    .prologue
    .line 1921
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    .prologue
    .line 1940
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 2283
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1785
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1788
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1789
    invoke-virtual {p0, v6}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    if-eqz v6, :cond_0

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1795
    :cond_0
    return-void

    .line 1791
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;
    .locals 6
    .parameter "cursor"

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1800
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 1801
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mBaseUri:Landroid/net/Uri;

    .line 1802
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 1803
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 1804
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1805
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1806
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 1807
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 1808
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 1809
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1812
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1813
    .local v0, val:I
    shr-int/lit8 v1, v0, 0x4

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 1814
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 1816
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1817
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 1818
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 1819
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 1820
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    .line 1823
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1825
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setPeakDay(I)V

    .line 1826
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setStartMinute(I)V

    .line 1827
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setEndMinute(I)V

    .line 1828
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 1829
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x18

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 1830
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x19

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setRoamingSchedule(I)V

    .line 1832
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    .line 1833
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1834
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 1835
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 1837
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 1840
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1841
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 1843
    return-object p0

    :cond_0
    move v1, v4

    .line 1814
    goto/16 :goto_0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 20
    .parameter "context"

    .prologue
    .line 2368
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2369
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v18

    .line 2373
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "eas"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 2385
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 2386
    invoke-super/range {p0 .. p1}, Lcom/android/email/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    .line 2480
    :goto_0
    return-object v18

    .line 2389
    :cond_2
    const/4 v8, 0x0

    .line 2390
    .local v8, index:I
    const/4 v14, -0x1

    .line 2391
    .local v14, recvIndex:I
    const/16 v16, -0x1

    .line 2395
    .local v16, sendIndex:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2396
    .local v13, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2397
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .local v9, index:I
    move v14, v8

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 2402
    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 2403
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .restart local v9       #index:I
    move/from16 v16, v8

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 2411
    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2419
    invoke-static/range {p1 .. p1}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v4

    .local v4, currentDefaultAccountId:J
    const-wide/16 v18, -0x1

    cmp-long v18, v4, v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_5

    .line 2422
    add-int/lit8 v8, v8, 0x1

    .line 2424
    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v10

    .line 2427
    .local v10, modifyMe:Lcom/android/email/provider/EmailContent$Account;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2432
    .local v7, cv1:Landroid/content/ContentValues;
    const-string v18, "isDefault"

    move-object v0, v10

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2433
    sget-object v18, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    .end local v4           #currentDefaultAccountId:J
    .end local v7           #cv1:Landroid/content/ContentValues;
    .end local v10           #modifyMe:Lcom/android/email/provider/EmailContent$Account;
    :cond_5
    const/4 v6, 0x0

    .line 2441
    .local v6, cv:Landroid/content/ContentValues;
    if-gez v14, :cond_6

    if-ltz v16, :cond_8

    .line 2442
    :cond_6
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #cv:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2443
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-ltz v14, :cond_7

    .line 2444
    const-string v18, "hostAuthKeyRecv"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2446
    :cond_7
    if-ltz v16, :cond_8

    .line 2447
    const-string v18, "hostAuthKeySend"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2451
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 2452
    .local v3, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2453
    if-eqz v6, :cond_9

    .line 2454
    invoke-virtual {v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2456
    :cond_9
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "com.android.email.provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v15

    .line 2462
    .local v15, results:[Landroid/content/ContentProviderResult;
    if-ltz v14, :cond_a

    .line 2463
    aget-object v18, v15, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 2464
    .local v11, newId:J
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-wide v0, v11

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 2467
    .end local v11           #newId:J
    :cond_a
    if-ltz v16, :cond_b

    .line 2468
    aget-object v18, v15, v16

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 2469
    .restart local v11       #newId:J
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v18, v0

    move-wide v0, v11

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 2472
    .end local v11           #newId:J
    :cond_b
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 2473
    .local v17, u:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v17

    .line 2474
    goto/16 :goto_0

    .line 2477
    .end local v15           #results:[Landroid/content/ContentProviderResult;
    .end local v17           #u:Landroid/net/Uri;
    :catch_0
    move-exception v18

    .line 2480
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2475
    :catch_1
    move-exception v18

    goto :goto_1
.end method

.method public setCalendarSyncLookback(I)Z
    .locals 3
    .parameter "days"

    .prologue
    const/4 v2, 0x4

    .line 1959
    if-eq p1, v2, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 1964
    :cond_0
    const/4 v0, 0x1

    .line 1965
    .local v0, success:Z
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1971
    :goto_0
    return v0

    .line 1967
    .end local v0           #success:Z
    :cond_1
    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1968
    const/4 v0, 0x0

    .restart local v0       #success:Z
    goto :goto_0
.end method

.method public setDefaultAccount(Z)V
    .locals 0
    .parameter "newDefaultState"

    .prologue
    .line 2158
    iput-boolean p1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 2159
    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2
    .parameter "newPolicy"

    .prologue
    .line 2038
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2039
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2040
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2278
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 2279
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 1863
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 1878
    return-void
.end method

.method public setEmailSize(B)V
    .locals 0
    .parameter "emailSize"

    .prologue
    .line 1902
    iput-byte p1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 1903
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "newFlags"

    .prologue
    .line 1993
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1994
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0
    .parameter "newUri"

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 2009
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 1893
    return-void
.end method

.method public setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "senderUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 2131
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2132
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 2141
    :cond_1
    return-void

    .line 2134
    :cond_2
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 1912
    return-void
.end method

.method public setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "storeUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 2109
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2110
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 2117
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 2119
    :cond_1
    return-void

    .line 2112
    :cond_2
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    goto :goto_0
.end method

.method public setSyncInterval(I)V
    .locals 0
    .parameter "minutes"

    .prologue
    .line 1931
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 1932
    return-void
.end method

.method public setSyncLookback(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1950
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1951
    return-void
.end method

.method public setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V
    .locals 2
    .parameter "syncScheduleData"

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setPeakDay(I)V

    .line 2018
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setStartMinute(I)V

    .line 2019
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setEndMinute(I)V

    .line 2020
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 2021
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 2022
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setRoamingSchedule(I)V

    .line 2023
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2024
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2025
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2026
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2027
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2028
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2030
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2287
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 2288
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const-string v5, "isDefault"

    const-string v4, "policyKey"

    .line 2485
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2486
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2490
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2491
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2492
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2493
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2494
    const-string v1, "isDefault"

    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2497
    const-string v1, "isDefault"

    iget-byte v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iget-boolean v2, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2499
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const-string v1, "securityFlags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2506
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    const-string v1, "displayMode"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2515
    const-string v1, "peakDays"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2516
    const-string v1, "peakStartMinute"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2517
    const-string v1, "peakEndMinute"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2518
    const-string v1, "peakSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2519
    const-string v1, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2520
    const-string v1, "roamingSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2523
    const-string v1, "calendarSyncLookback"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2524
    const-string v1, "textSize"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2526
    return-object v0

    .line 2497
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2664
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2668
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2669
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2670
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2672
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2674
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 9
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v8, 0x1

    const-string v7, "isDefault"

    .line 2319
    const-string v5, "isDefault"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "isDefault"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v8, :cond_1

    .line 2321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v0

    .local v0, currentDefaultAccountId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 2329
    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2332
    .local v3, modifyMe:Lcom/android/email/provider/EmailContent$Account;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2338
    .local v2, cv1:Landroid/content/ContentValues;
    const-string v5, "isDefault"

    iget-byte v5, v3, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    or-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2339
    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    .end local v2           #cv1:Landroid/content/ContentValues;
    .end local v3           #modifyMe:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.email.provider"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    .line 2358
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    return v5

    .line 2353
    .restart local v0       #currentDefaultAccountId:J
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v5

    .line 2356
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2358
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/email/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v5

    goto :goto_0

    .line 2351
    .restart local v0       #currentDefaultAccountId:J
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2555
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2556
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2557
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2559
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2562
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2563
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2564
    iget-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2567
    iget-byte v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    shl-int/lit8 v0, v0, 0x4

    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2569
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2570
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2572
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2573
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2574
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2575
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2576
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2578
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2580
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2582
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2585
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2587
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_2

    .line 2590
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2591
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2596
    :goto_2
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_3

    .line 2597
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2598
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2602
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 2564
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2567
    goto :goto_1

    .line 2593
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 2600
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3
.end method
