.class public Lcom/android/email/activity/setup/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;,
        Lcom/android/email/activity/setup/AccountSettings$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;
    }
.end annotation


# instance fields
.field private final CALENDER_SYNC_WINDOW:I

.field private final DEVICE_INFO_STATUS_COMPLETE:I

.field private final EMAIL_SYNC_WINDOW:I

.field private final EMAIL_TRUNC_SIZE:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountId:J

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountTextPreview:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

.field private mCalendarSyncWindow:Landroid/preference/ListPreference;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

.field private mConversationMode:Landroid/preference/CheckBoxPreference;

.field private mDInfo:Lcom/android/exchange/DeviceInformation;

.field mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEmailSize:Landroid/preference/ListPreference;

.field private mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPostEmptyTrash_0:Landroid/app/AlertDialog;

.field private mPostEmptyTrash_1:Landroid/app/AlertDialog;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRecentMessages:Landroid/preference/ListPreference;

.field private mSignature:Landroid/preference/EditTextPreference;

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

.field private mSyncWindow:Landroid/preference/ListPreference;

.field private mdInfoCallBack:Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;

.field private policiesList:Landroid/preference/PreferenceScreen;

.field private prefSmsSync:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 158
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    .line 159
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mdInfoCallBack:Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;

    .line 160
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDInfo:Lcom/android/exchange/DeviceInformation;

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    .line 196
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    .line 197
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_STATUS_COMPLETE:I

    .line 493
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_NO_STATUS:I

    .line 494
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 495
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_PROCESSING:I

    .line 496
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_GET_ERROR:I

    .line 497
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_SERVER_CONNECT:I

    .line 498
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_RESPONSE_PARSE:I

    .line 499
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_UNKNOWN_ERROR:I

    .line 501
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->DEVICE_INFO_STATUS_COMPLETE:I

    .line 508
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->EMAIL_SYNC_WINDOW:I

    .line 509
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->EMAIL_TRUNC_SIZE:I

    .line 510
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->CALENDER_SYNC_WINDOW:I

    .line 513
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$1;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mHandler:Landroid/os/Handler;

    .line 1955
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->convertEmailSizeToInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onSyncSchedule()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onIncomingSettings()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onOutgoingSettings()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onOutOfOffice()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/setup/AccountSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->changeSmsSettings(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->saveSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method private changeSmsSettings(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1920
    if-eqz p1, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1925
    :goto_0
    new-instance v0, Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v0, p0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1927
    if-eqz v0, :cond_0

    .line 1928
    invoke-virtual {v0, p0}, Lcom/android/exchange/EasSyncService;->setupAdhocService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1931
    const-wide/16 v1, 0x0

    .line 1933
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 1939
    :goto_1
    :try_start_1
    new-instance v3, Lcom/android/exchange/DeviceInformation;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/DeviceInformation;-><init>(D)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mDInfo:Lcom/android/exchange/DeviceInformation;

    .line 1941
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDInfo:Lcom/android/exchange/DeviceInformation;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    new-instance v1, Lcom/android/email/activity/setup/DeviceInformationTask;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mDInfo:Lcom/android/exchange/DeviceInformation;

    invoke-direct {v1, v2}, Lcom/android/email/activity/setup/DeviceInformationTask;-><init>(Lcom/android/exchange/DeviceInformation;)V

    .line 1943
    invoke-virtual {v1, p0, v0}, Lcom/android/email/activity/setup/DeviceInformationTask;->setUpService(Landroid/content/Context;Lcom/android/exchange/EasSyncService;)V

    .line 1944
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mdInfoCallBack:Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/DeviceInformationTask;->registerStatusCallBack(Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;)V

    .line 1945
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/DeviceInformationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1953
    :cond_0
    :goto_2
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto :goto_0

    .line 1935
    :catch_0
    move-exception v3

    .line 1936
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1947
    :catch_1
    move-exception v0

    .line 1948
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1949
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkStringLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x2e4

    .line 1378
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1379
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 1383
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1386
    if-le v2, v6, :cond_1

    .line 1389
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 1391
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1392
    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1393
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1395
    if-gt v4, v6, :cond_0

    .line 1397
    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1402
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private convertEmailSizeToInt(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 1814
    mul-int/lit16 p1, p1, 0x400

    .line 1815
    sparse-switch p1, :sswitch_data_0

    .line 1833
    const/16 v0, 0x9

    :goto_0
    return v0

    .line 1817
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1819
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1821
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1823
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1825
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1827
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1829
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 1831
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 1815
    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1400 -> :sswitch_3
        0x2800 -> :sswitch_4
        0x5000 -> :sswitch_5
        0xc800 -> :sswitch_6
        0x19000 -> :sswitch_7
    .end sparse-switch
.end method

.method private getCalenderSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1879
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f08026b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const v2, 0x7f08026c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f08026d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f08026e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const v2, 0x7f08026f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1885
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    if-le p1, v3, :cond_1

    const/16 v2, 0x8

    if-ge p1, v2, :cond_1

    .line 1889
    sub-int v2, p1, v3

    move v3, v4

    .line 1890
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1891
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1893
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 1894
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1896
    :cond_1
    return-object v0
.end method

.method private getCalenderSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1901
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6"

    aput-object v2, v0, v1

    const-string v1, "7"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 1903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1906
    if-le p1, v3, :cond_1

    const/16 v2, 0x8

    if-ge p1, v2, :cond_1

    .line 1907
    sub-int v2, p1, v3

    move v3, v4

    .line 1908
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1909
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1911
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 1912
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1914
    :cond_1
    return-object v0
.end method

.method private getEmailSizeAllowedEntries(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1838
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0801d8

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f0801d9

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0801da

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0801db

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0801dc

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0801dd

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0801de

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0801df

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0801e0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f0801e1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1849
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    move v2, v3

    .line 1852
    :goto_0
    if-gt v2, p1, :cond_0

    .line 1853
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1855
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1856
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1858
    :cond_1
    return-object v0
.end method

.method private getEmailSizeAllowedValues(I)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1863
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const-string v1, "9"

    aput-object v1, v0, v4

    .line 1865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    move v2, v3

    .line 1868
    :goto_0
    if-gt v2, p1, :cond_0

    .line 1869
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1871
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1872
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1874
    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1776
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0800cb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f0800cc

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0800cd

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0800ce

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0800cf

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    if-lez p1, :cond_1

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    move v2, v3

    .line 1786
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1787
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1789
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1790
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1792
    :cond_1
    return-object v0
.end method

.method private getSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1797
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 1799
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    if-lez p1, :cond_1

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    move v2, v3

    .line 1803
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1804
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1806
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1807
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    .line 1809
    :cond_1
    return-object v0
.end method

.method private onIncomingSettings()V
    .locals 5

    .prologue
    .line 1706
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    .line 1707
    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1709
    if-eqz v0, :cond_0

    .line 1717
    const-string v1, "actionEditIncomingSettings"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/email/provider/EmailContent$Account;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1719
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onOutOfOffice()V
    .locals 3

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->getOutOfOffice(J)V

    .line 1751
    return-void
.end method

.method private onOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 1768
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1769
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1770
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 1772
    return-void
.end method

.method private onOutgoingSettings()V
    .locals 5

    .prologue
    .line 1733
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 1734
    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1736
    if-eqz v0, :cond_0

    .line 1737
    const-string v1, "actionEditOutgoingSettings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/email/provider/EmailContent$Account;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1739
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSyncSchedule()V
    .locals 2

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->actionSyncSchedule(Landroid/app/Activity;Lcom/android/exchange/SyncScheduleData;I)V

    .line 1676
    return-void
.end method

.method private saveSettings()V
    .locals 17

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v11, 0x0

    const-string v15, "eas"

    const-string v12, "AccountSettings"

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    move-object v8, v0

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v9, v2, -0x44

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 1481
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 1483
    const-string v2, "eas"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1486
    const-string v5, "_sync_account=? AND _sync_account_type=?"

    .line 1487
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    aput-object v2, v6, v13

    const-string v2, "com.android.exchange"

    aput-object v2, v6, v14

    .line 1491
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "_id"

    aput-object v10, v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1494
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1495
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1496
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1497
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1498
    const-string v5, "displayName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1502
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1503
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1511
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object v2, v0

    if-eqz v2, :cond_3

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 1514
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object v2, v0

    if-eqz v2, :cond_4

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 1518
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setTextPreviewSize(I)V

    .line 1528
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v14

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setConversationMode(I)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v14

    :goto_1
    or-int/2addr v2, v9

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 1535
    if-eqz v8, :cond_12

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    .line 1538
    invoke-static {v3}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v4

    .line 1541
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v5

    .line 1542
    const-string v6, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plainTextSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v6

    div-int/lit16 v6, v6, 0x400

    .line 1544
    const-string v7, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "htmlSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v7

    .line 1546
    const-string v9, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isHtmlAllowed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    if-eqz v7, :cond_6

    if-lez v6, :cond_6

    move v5, v6

    .line 1552
    :cond_6
    if-lez v5, :cond_11

    .line 1553
    mul-int/lit16 v5, v5, 0x400

    .line 1556
    :goto_2
    if-ge v5, v4, :cond_7

    .line 1558
    const-string v4, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    if-lez v3, :cond_7

    .line 1560
    invoke-static {v5}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v3

    .line 1562
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4, v3}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    .line 1568
    :goto_3
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v3, v0

    if-eqz v3, :cond_9

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1572
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v4

    .line 1573
    if-nez v4, :cond_8

    .line 1574
    const/4 v4, 0x6

    .line 1575
    :cond_8
    if-ge v4, v3, :cond_13

    .line 1577
    const-string v3, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exchange IT Policy has restricted SyncLookback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1587
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "always"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1588
    or-int/lit8 v2, v2, 0x2

    .line 1596
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    const-string v5, "account_ringtone"

    invoke-interface {v3, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/email/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setFlags(I)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1601
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1605
    const-string v3, "com.android.calendar"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object v2, v0

    if-eqz v2, :cond_b

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V

    .line 1619
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 1626
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v2, v0

    if-eqz v2, :cond_d

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1631
    if-eqz v8, :cond_16

    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v3

    if-lez v3, :cond_16

    .line 1633
    if-eqz v2, :cond_c

    if-ge v3, v2, :cond_15

    .line 1635
    :cond_c
    const-string v2, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange IT Policy has restricted CalendarSyncLookback:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 1652
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1653
    invoke-static/range {p0 .. p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 1654
    return-void

    .line 1502
    :catchall_0
    move-exception v2

    move-object v3, v11

    :goto_7
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1503
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    :cond_f
    move v3, v13

    .line 1528
    goto/16 :goto_0

    :cond_10
    move v2, v13

    .line 1530
    goto/16 :goto_1

    .line 1555
    :cond_11
    const v5, 0x7fffffff

    goto/16 :goto_2

    .line 1565
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    goto/16 :goto_3

    .line 1582
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_4

    .line 1589
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "silent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1590
    or-int/lit8 v2, v2, 0x40

    goto/16 :goto_5

    .line 1640
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_6

    .line 1645
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_6

    .line 1502
    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_7
.end method

.method private setAccountIdFromAccountManagerIntent()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1408
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/accounts/Account;

    move-object v6, v0

    .line 1412
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v7

    const-string v4, "emailAddress=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1416
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1417
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1422
    return-void

    .line 1420
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1680
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1681
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1682
    if-ne p2, v2, :cond_0

    .line 1683
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1688
    if-ne p2, v2, :cond_2

    .line 1689
    if-eqz p3, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "SmimeOwnCertificateAlias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeOwnCertificate(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeEncryptAll(Z)V

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "SmimeSignAll"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeSignAll(Z)V

    .line 1693
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "SmimeSignAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeSignAlgorithm(I)V

    .line 1694
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "SmimeEncryptionAlgorithm"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSmimeEncryptionAlgorithm(I)V

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "account_servers"

    const-string v12, "eas"

    .line 610
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    .line 614
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 615
    const-string v2, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->setAccountIdFromAccountManagerIntent()V

    .line 624
    :goto_0
    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    .line 1375
    :cond_0
    :goto_1
    return-void

    .line 620
    :cond_1
    const-string v2, "account_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    goto :goto_0

    .line 629
    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 631
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v1, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_1

    .line 635
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 636
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 638
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_5

    .line 639
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_1

    .line 642
    :cond_5
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    .line 644
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->addPreferencesFromResource(I)V

    .line 646
    const-string v1, "account_settings"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceCategory;

    move-object v7, v0

    .line 647
    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 649
    const-string v1, "account_description"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 651
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$2;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 677
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$3;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 686
    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    .line 688
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$4;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 714
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$5;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 744
    const-string v1, "security_policy_list"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->policiesList:Landroid/preference/PreferenceScreen;

    .line 746
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$6;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 754
    const-string v1, "account_textpreview"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    .line 755
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 756
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_6

    .line 757
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_a

    .line 759
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 760
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$7;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 796
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    .line 797
    const-string v1, "account_check_frequency"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 798
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 799
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 801
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 815
    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$8;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 830
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_35

    .line 831
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v1

    .line 832
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plainTextSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    .line 834
    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htmlSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v3

    .line 836
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHtmlAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-eqz v3, :cond_7

    if-lez v2, :cond_7

    move v1, v2

    .line 843
    :cond_7
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->convertEmailSizeToInt(I)I

    move-result v2

    .line 849
    const-string v1, "account_email_size"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    .line 850
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedValues(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 852
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 855
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 856
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$9;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 869
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$10;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 883
    :goto_5
    const/4 v2, 0x6

    .line 884
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 885
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_34

    .line 886
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v1

    .line 887
    :goto_6
    if-nez v1, :cond_8

    .line 888
    const/4 v1, 0x6

    .line 892
    :cond_8
    iput-object v11, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    .line 893
    if-eqz v8, :cond_9

    iget v2, v8, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 894
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    .line 895
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 896
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 897
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 898
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 899
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSyncLookback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 902
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$11;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 915
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$12;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 924
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 931
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v2, v9

    .line 935
    :goto_7
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_f

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 784
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 792
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountTextPreview:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 805
    :cond_c
    if-eqz v8, :cond_d

    iget-boolean v1, v8, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    if-eqz v1, :cond_d

    .line 806
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 807
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 809
    :cond_d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 879
    :cond_e
    const-string v1, "account_email_size"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 939
    :cond_f
    if-eqz v1, :cond_10

    .line 940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_10
    const-string v1, "account_default"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 945
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    move v3, v10

    :goto_8
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 947
    if-eq v2, v10, :cond_11

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 948
    :cond_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 951
    :goto_9
    const-string v1, "account_notify"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 952
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    move v2, v10

    :goto_a
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 954
    const-string v1, "account_ringtone"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 958
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 959
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "account_ringtone"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 961
    const-string v1, "account_settings_vibrate_when"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 962
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    move v1, v10

    .line 963
    :goto_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1f

    move v2, v10

    .line 964
    :goto_c
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    if-eqz v1, :cond_20

    const-string v1, "always"

    :goto_d
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 969
    const-string v1, "account_sync_schedule"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 970
    const-string v2, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 971
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 972
    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$13;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$13;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 986
    :goto_e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    if-nez v1, :cond_12

    .line 987
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 988
    const v2, 0x7f0801e4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0801e8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 990
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    .line 992
    :cond_12
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    if-nez v1, :cond_13

    .line 993
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 994
    const v2, 0x7f0801e4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$14;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSettings$14;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    .line 1001
    :cond_13
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1002
    const-string v1, "account_empty_trash"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/EmptyTrashDialog;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 1003
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setAccountId(J)V

    .line 1005
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setController(Lcom/android/email/Controller;)V

    .line 1006
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setPositiveResultDialog(Landroid/app/Dialog;)V

    .line 1012
    :goto_f
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1013
    const-string v1, "incoming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 1017
    :goto_10
    const-string v1, "incoming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$15;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1026
    const-string v1, "outgoing"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1029
    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_33

    .line 1031
    invoke-virtual {v1}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1032
    if-eqz v1, :cond_25

    move v1, v10

    .line 1037
    :goto_11
    if-eqz v1, :cond_26

    .line 1038
    new-instance v1, Lcom/android/email/activity/setup/AccountSettings$16;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettings$16;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1051
    :goto_12
    const-string v1, "account_sync_contacts"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 1054
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1056
    const-string v1, "out_of_office"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$17;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1070
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpg-double v1, v1, v3

    if-gez v1, :cond_14

    .line 1071
    const-string v1, "out_of_office"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1103
    :cond_14
    :goto_13
    const-string v1, "account_sync_calendar"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 1111
    const-string v1, "account_conversation_mode"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    .line 1112
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1113
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.contacts"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1117
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    const-string v3, "com.android.calendar"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1135
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1136
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_29

    .line 1138
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getConversationMode()I

    move-result v2

    if-ne v10, v2, :cond_28

    move v2, v10

    :goto_14
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1139
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1163
    :cond_15
    :goto_15
    const-string v1, "account_recent_messages_limit"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    .line 1165
    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-static {p0, v1, v2, v9}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1166
    if-nez v1, :cond_2b

    .line 1168
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1187
    :goto_16
    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1189
    const-string v1, "common_settings"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1190
    const-string v2, "forward_with_files"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1191
    const-string v2, "account_recent_messages_limit"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1195
    :cond_16
    const-string v1, "signature"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    .line 1197
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1198
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1202
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1204
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1206
    const/16 v4, 0x23f

    if-le v3, v4, :cond_2c

    .line 1208
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1210
    :cond_17
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1211
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 1213
    const/16 v6, 0x23f

    if-gt v5, v6, :cond_17

    .line 1214
    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1215
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1222
    :goto_17
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$19;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$19;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1267
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$20;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$20;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1277
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_32

    .line 1278
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v1

    move v2, v1

    .line 1283
    :goto_18
    iput-object v11, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 1284
    if-eqz v8, :cond_18

    iget v1, v8, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    const-string v1, "eas"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1286
    const-string v1, "account_servers"

    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1288
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 1289
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v4, 0x7f08026a

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 1290
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const v4, 0x7f08026a

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 1291
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1293
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1294
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 1297
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettings$21;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettings$21;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1310
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettings$22;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSettings$22;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1319
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1323
    :cond_18
    const-string v1, "account_servers"

    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1325
    if-eqz v1, :cond_19

    .line 1326
    const-string v2, "account_sms_sync"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    .line 1328
    :cond_19
    const-string v2, "eas"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1329
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x4028333333333333L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2d

    .line 1334
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1335
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 939
    :catchall_0
    move-exception v1

    move-object v2, v11

    :goto_19
    if-eqz v2, :cond_1a

    .line 940
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v1

    :cond_1b
    move v3, v9

    .line 945
    goto/16 :goto_8

    .line 950
    :cond_1c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_1d
    move v2, v9

    .line 952
    goto/16 :goto_a

    :cond_1e
    move v1, v9

    .line 962
    goto/16 :goto_b

    :cond_1f
    move v2, v9

    .line 963
    goto/16 :goto_c

    .line 964
    :cond_20
    if-eqz v2, :cond_21

    const-string v1, "silent"

    goto/16 :goto_d

    :cond_21
    const-string v1, "never"

    goto/16 :goto_d

    .line 981
    :cond_22
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 1010
    :cond_23
    const-string v1, "account_empty_trash"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 1015
    :cond_24
    const-string v1, "incoming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_10

    :cond_25
    move v1, v9

    .line 1032
    goto/16 :goto_11

    .line 1034
    :catch_0
    move-exception v1

    move v1, v10

    goto/16 :goto_11

    .line 1046
    :cond_26
    const-string v1, "account_servers"

    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1048
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 1074
    :cond_27
    const-string v1, "out_of_office"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_13

    :cond_28
    move v2, v9

    .line 1138
    goto/16 :goto_14

    .line 1143
    :cond_29
    const-string v1, "account_servers"

    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1144
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 1150
    :cond_2a
    const-string v1, "account_servers"

    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 1152
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1153
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1159
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mConversationMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 1172
    :cond_2b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/email/activity/setup/AccountSettings$18;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/setup/AccountSettings$18;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/provider/EmailContent$Mailbox;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_16

    .line 1218
    :cond_2c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 1338
    :cond_2d
    const-string v1, "account_sms_sync"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    .line 1339
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2f

    move v1, v10

    .line 1341
    :goto_1a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1342
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eq v2, v1, :cond_2e

    .line 1343
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1344
    :cond_2e
    if-eqz v1, :cond_30

    .line 1345
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0802c3

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1350
    :goto_1b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/email/activity/setup/AccountSettings$23;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettings$23;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    :cond_2f
    move v1, v9

    .line 1339
    goto :goto_1a

    .line 1347
    :cond_30
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0802c4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1b

    .line 1371
    :cond_31
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1372
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->prefSmsSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 939
    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_19

    :cond_32
    move v2, v9

    goto/16 :goto_18

    :cond_33
    move v1, v10

    goto/16 :goto_11

    :cond_34
    move v1, v2

    goto/16 :goto_6

    :cond_35
    move v1, v9

    goto/16 :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1658
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1659
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$24;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$24;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings$24;->start()V

    .line 1669
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1463
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1464
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1465
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1426
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1429
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1430
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1431
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1439
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1445
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1449
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1450
    .local v0, refreshedAccount:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_3

    .line 1452
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_0

    .line 1455
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 1456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    goto :goto_0
.end method
