.class public final Lcom/android/email/provider/EmailContent$Account;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/email/provider/EmailContent$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String;

.field public static DEVICE_IS_ALLOWED:I

.field public static DEVICE_IS_BLOCKED:I

.field public static DEVICE_IS_QUARANTINED:I

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final POLICY_TYPES:[Ljava/lang/String;


# instance fields
.field public mCalendarSyncLookback:I

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mConversationMode:I

.field public mDeviceInfoSent:I

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

.field public mSmimeEncryptAll:Z

.field public mSmimeEncryptionAlgorithm:I

.field public mSmimeOwnCertificateAlias:Ljava/lang/String;

.field public mSmimeSignAlgorithm:I

.field public mSmimeSignAll:Z

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

.field public mTextPreviewSize:I

.field public mTextSize:I

.field public mdeviceBlockedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "isDefault"

    const-string v6, "_id"

    .line 1890
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

    .line 1891
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

    .line 1927
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MS-WAP-Provisioning-XML"

    aput-object v1, v0, v3

    const-string v1, "MS-EAS-Provisioning-WBXML"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->POLICY_TYPES:[Ljava/lang/String;

    .line 2003
    sput v3, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    .line 2004
    sput v4, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    .line 2005
    sput v5, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_QUARANTINED:I

    .line 2063
    const/16 v0, 0x24

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

    const/16 v1, 0x1c

    const-string v2, "smimeOwnCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smimeOptionsFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "smimeSignAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "smimeEncryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "conversationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "textPreview"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "deviceInfoSent"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "deviceBlockedType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 2108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 2123
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "isDefault"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    .line 3134
    new-instance v0, Lcom/android/email/provider/EmailContent$Account$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Account$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 2130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 2131
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 2135
    const-string v0, "content://settings/system/notification_sound"

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 2139
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 2140
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 2141
    iput v7, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 2151
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 2153
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 2155
    new-instance v0, Lcom/android/exchange/SyncScheduleData;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 2156
    iput-boolean v4, p0, Lcom/android/email/provider/EmailContent$Account;->mIsInPeakPeriod:Z

    .line 2160
    iput v4, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 2161
    iput v7, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 2164
    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2166
    iput v4, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    .line 2169
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 2172
    iput v4, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 2174
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3210
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3211
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 3212
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 3213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 3214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 3215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 3216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 3217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 3218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 3219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 3220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 3221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 3224
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 3226
    or-int/lit8 v0, v0, 0x0

    .line 3227
    shr-int/lit8 v1, v0, 0x4

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 3228
    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 3230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 3231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 3232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 3233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 3234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    .line 3235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    .line 3236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 3237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 3239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 3241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 3243
    const-class v0, Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 3246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 3248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 3250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    .line 3253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 3256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 3258
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 3259
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3260
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 3263
    :cond_0
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 3264
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3265
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 3267
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 3221
    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 3228
    goto/16 :goto_1
.end method

.method public static getDefaultAccountId(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 2812
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v0

    .line 2814
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2815
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 2817
    :cond_0
    return-wide v0
.end method

.method private static getDefaultAccountIdv2(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 2823
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

    .line 2721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2725
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2726
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2729
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2731
    :goto_0
    return-wide v0

    .line 2729
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2731
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2729
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getId(Landroid/net/Uri;)J
    .locals 2
    .parameter "u"

    .prologue
    .line 2301
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
    .line 2750
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Account;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2201
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

    move-result-object v0

    .line 2205
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2206
    const-class v1, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    check-cast p0, Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
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

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2177
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2180
    if-nez p0, :cond_0

    move-object v0, v6

    .line 2195
    :goto_0
    return-object v0

    .line 2183
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2185
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2186
    const-class v1, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    check-cast p0, Lcom/android/email/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2194
    if-eqz v0, :cond_1

    .line 2195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p0

    goto :goto_0

    .line 2194
    :cond_2
    if-eqz v0, :cond_3

    .line 2195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 2190
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 2191
    :goto_1
    :try_start_2
    const-string v1, "EmailContent >>"

    const-string v2, "restoreAccountWithId IllegalArgumentException >>>"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2194
    if-eqz v0, :cond_4

    .line 2195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 2194
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    .line 2195
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2194
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 2190
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3128
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarSyncLookback()I
    .locals 1

    .prologue
    .line 2437
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    return v0
.end method

.method public getConversationMode()I
    .locals 1

    .prologue
    .line 2523
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    return v0
.end method

.method public getDeletePolicy()I
    .locals 1

    .prologue
    .line 2603
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeviceInfoSent()I
    .locals 1

    .prologue
    .line 2384
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    return v0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 2830
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailSize()B
    .locals 1

    .prologue
    .line 2352
    iget-byte v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2538
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    return v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2642
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 2643
    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2646
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 2647
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, senderUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2652
    .end local v0           #senderUri:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeEncryptionAlgorithm()I
    .locals 1

    .prologue
    .line 2501
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    return v0
.end method

.method public getSmimeFlags()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3049
    const/4 v0, 0x0

    .line 3050
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    shl-int/lit8 v0, v1, 0x0

    .line 3051
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 3052
    return v0

    :cond_0
    move v1, v2

    .line 3050
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3051
    goto :goto_1
.end method

.method public getSmimeOwnCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeSignAlgorithm()I
    .locals 1

    .prologue
    .line 2485
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    return v0
.end method

.method public getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_0

    .line 2623
    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2626
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1

    .line 2627
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 2628
    .local v0, storeUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2632
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
    .line 2403
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    .prologue
    .line 2422
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    return-object v0
.end method

.method public getTextPreviewSize()I
    .locals 1

    .prologue
    .line 2369
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 2839
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2223
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2224
    invoke-virtual {p0, v6}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2226
    if-eqz v6, :cond_0

    .line 2227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2230
    :cond_0
    return-void

    .line 2226
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 2227
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

    .line 2235
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 2236
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 2237
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2238
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2239
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 2240
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 2241
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 2242
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 2243
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 2244
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2247
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2248
    .local v0, val:I
    shr-int/lit8 v1, v0, 0x4

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 2249
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 2251
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 2252
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 2253
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 2254
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 2255
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    .line 2258
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2260
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    .line 2262
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 2265
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setPeakDay(I)V

    .line 2266
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setStartMinute(I)V

    .line 2267
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setEndMinute(I)V

    .line 2268
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 2269
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x18

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 2270
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x19

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/SyncScheduleData;->setRoamingSchedule(I)V

    .line 2272
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    .line 2273
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 2274
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 2275
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 2277
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    .line 2280
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2281
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    .line 2284
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 2287
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeFlags(I)V

    .line 2288
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 2289
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 2292
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 2295
    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Account;->mdeviceBlockedType:I

    .line 2297
    return-object p0

    :cond_0
    move v1, v4

    .line 2249
    goto/16 :goto_0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1888
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 21
    .parameter "context"

    .prologue
    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2925
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v19

    .line 2943
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 2944
    invoke-super/range {p0 .. p1}, Lcom/android/email/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v19

    .line 3040
    :goto_0
    return-object v19

    .line 2947
    :cond_1
    const/4 v8, 0x0

    .line 2948
    .local v8, index:I
    const/4 v15, -0x1

    .line 2949
    .local v15, recvIndex:I
    const/16 v17, -0x1

    .line 2953
    .local v17, sendIndex:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2954
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 2955
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .local v9, index:I
    move v15, v8

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 2960
    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2961
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .restart local v9       #index:I
    move/from16 v17, v8

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 2969
    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2977
    invoke-static/range {p1 .. p1}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v4

    .local v4, currentDefaultAccountId:J
    const-wide/16 v19, -0x1

    cmp-long v19, v4, v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    cmp-long v19, v4, v19

    if-eqz v19, :cond_4

    .line 2980
    add-int/lit8 v8, v8, 0x1

    .line 2982
    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 2985
    .local v11, modifyMe:Lcom/android/email/provider/EmailContent$Account;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2990
    .local v7, cv1:Landroid/content/ContentValues;
    const-string v19, "isDefault"

    move-object v0, v11

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2991
    sget-object v19, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2998
    .end local v4           #currentDefaultAccountId:J
    .end local v7           #cv1:Landroid/content/ContentValues;
    .end local v11           #modifyMe:Lcom/android/email/provider/EmailContent$Account;
    :cond_4
    const/4 v6, 0x0

    .line 2999
    .local v6, cv:Landroid/content/ContentValues;
    if-gez v15, :cond_5

    if-ltz v17, :cond_7

    .line 3000
    :cond_5
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #cv:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3001
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-ltz v15, :cond_6

    .line 3002
    const-string v19, "hostAuthKeyRecv"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3004
    :cond_6
    if-ltz v17, :cond_7

    .line 3005
    const-string v19, "hostAuthKeySend"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3009
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3010
    .local v3, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3011
    if-eqz v6, :cond_8

    .line 3012
    invoke-virtual {v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3014
    :cond_8
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "com.android.email.provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v16

    .line 3020
    .local v16, results:[Landroid/content/ContentProviderResult;
    if-ltz v15, :cond_9

    .line 3021
    aget-object v19, v16, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 3022
    .local v12, newId:J
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-wide v0, v12

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent;->mId:J

    .line 3025
    .end local v12           #newId:J
    :cond_9
    if-ltz v17, :cond_a

    .line 3026
    aget-object v19, v16, v17

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 3027
    .restart local v12       #newId:J
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-wide v0, v12

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent;->mId:J

    .line 3030
    .end local v12           #newId:J
    :cond_a
    aget-object v19, v16, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 3031
    .local v18, u:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent;->mId:J

    .line 3032
    new-instance v10, Landroid/content/Intent;

    const-string v19, "com.android.email.action.ACCOUNT_UPDATED"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3033
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v18

    .line 3034
    goto/16 :goto_0

    .line 3037
    .end local v10           #intent:Landroid/content/Intent;
    .end local v16           #results:[Landroid/content/ContentProviderResult;
    .end local v18           #u:Landroid/net/Uri;
    :catch_0
    move-exception v19

    .line 3040
    :goto_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3035
    :catch_1
    move-exception v19

    goto :goto_1
.end method

.method public setCalendarSyncLookback(I)Z
    .locals 3
    .parameter "days"

    .prologue
    const/4 v2, 0x4

    .line 2441
    if-eq p1, v2, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 2446
    :cond_0
    const/4 v0, 0x1

    .line 2447
    .local v0, success:Z
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2453
    :goto_0
    return v0

    .line 2449
    .end local v0           #success:Z
    :cond_1
    iput v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 2450
    const/4 v0, 0x0

    .restart local v0       #success:Z
    goto :goto_0
.end method

.method public setConversationMode(I)V
    .locals 0
    .parameter "conv_mode"

    .prologue
    .line 2526
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    .line 2527
    return-void
.end method

.method public setDefaultAccount(Z)V
    .locals 0
    .parameter "newDefaultState"

    .prologue
    .line 2714
    iput-boolean p1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    .line 2715
    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2
    .parameter "newPolicy"

    .prologue
    .line 2594
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2595
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2596
    return-void
.end method

.method public setDeviceInfoSent(I)V
    .locals 0
    .parameter "devInfo"

    .prologue
    .line 2393
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 2394
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2317
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2332
    return-void
.end method

.method public setEmailSize(B)V
    .locals 0
    .parameter "emailSize"

    .prologue
    .line 2356
    iput-byte p1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 2357
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "newFlags"

    .prologue
    .line 2549
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 2550
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0
    .parameter "newUri"

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 2565
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 2347
    return-void
.end method

.method public setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "senderUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 2687
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2688
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2694
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 2695
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 2697
    :cond_1
    return-void

    .line 2690
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
    .line 2365
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 2366
    return-void
.end method

.method public setSmimeEncryptAll(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2481
    iput-boolean p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 2482
    return-void
.end method

.method public setSmimeEncryptionAlgorithm(I)V
    .locals 0
    .parameter "encryptionAlgorithm"

    .prologue
    .line 2516
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 2517
    return-void
.end method

.method public setSmimeFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3060
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 3061
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 3062
    return-void

    :cond_0
    move v0, v1

    .line 3060
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3061
    goto :goto_1
.end method

.method public setSmimeOwnCertificate(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 2464
    return-void
.end method

.method public setSmimeSignAlgorithm(I)V
    .locals 0
    .parameter "signAlgorithm"

    .prologue
    .line 2497
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 2498
    return-void
.end method

.method public setSmimeSignAll(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2473
    iput-boolean p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 2474
    return-void
.end method

.method public setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "storeUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v0, :cond_0

    .line 2665
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2666
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1

    .line 2673
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 2675
    :cond_1
    return-void

    .line 2668
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
    .line 2413
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .line 2414
    return-void
.end method

.method public setSyncLookback(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2432
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 2433
    return-void
.end method

.method public setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V
    .locals 2
    .parameter "syncScheduleData"

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setPeakDay(I)V

    .line 2574
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setStartMinute(I)V

    .line 2575
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setEndMinute(I)V

    .line 2576
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 2577
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 2578
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setRoamingSchedule(I)V

    .line 2579
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2580
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2581
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2582
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2583
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2584
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 2586
    return-void
.end method

.method public setTextPreviewSize(I)V
    .locals 0
    .parameter "textPreview"

    .prologue
    .line 2373
    iput p1, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 2374
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const-string v5, "isDefault"

    const-string v4, "policyKey"

    .line 3067
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3068
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3072
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3073
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3074
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3075
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3076
    const-string v1, "isDefault"

    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3079
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

    .line 3081
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    const-string v1, "securityFlags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3088
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    const-string v1, "policyKey"

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    const-string v1, "displayMode"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3097
    const-string v1, "peakDays"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3098
    const-string v1, "peakStartMinute"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3099
    const-string v1, "peakEndMinute"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3100
    const-string v1, "peakSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3101
    const-string v1, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3102
    const-string v1, "roamingSchedule"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3105
    const-string v1, "calendarSyncLookback"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3106
    const-string v1, "textSize"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3108
    const-string v1, "smimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    const-string v1, "smimeOptionsFlags"

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3113
    const-string v1, "conversationMode"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3116
    const-string v1, "textPreview"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3119
    const-string v1, "deviceInfoSent"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3121
    return-object v0

    .line 3079
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3275
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3279
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3280
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3281
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3282
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3283
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3284
    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3285
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

    .line 2875
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

    .line 2877
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2881
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountIdv2(Landroid/content/Context;)J

    move-result-wide v0

    .local v0, currentDefaultAccountId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/android/email/provider/EmailContent;->mId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 2885
    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2888
    .local v3, modifyMe:Lcom/android/email/provider/EmailContent$Account;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2894
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

    .line 2895
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

    .line 2901
    .end local v2           #cv1:Landroid/content/ContentValues;
    .end local v3           #modifyMe:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2905
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.email.provider"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    .line 2914
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    return v5

    .line 2909
    .restart local v0       #currentDefaultAccountId:J
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v5

    .line 2912
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2914
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/email/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v5

    goto :goto_0

    .line 2907
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

    .line 3150
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3151
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3152
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3153
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3154
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3155
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3157
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3158
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    iget-boolean v0, p0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3162
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

    .line 3164
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3165
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3166
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3167
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3168
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecurityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3170
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3173
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3175
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3177
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3180
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3184
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3187
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    iget v0, p0, Lcom/android/email/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3192
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_2

    .line 3193
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3194
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3199
    :goto_2
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_3

    .line 3200
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3201
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3205
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 3159
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3162
    goto :goto_1

    .line 3196
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 3203
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3
.end method
