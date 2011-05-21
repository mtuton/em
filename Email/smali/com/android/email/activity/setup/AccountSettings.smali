.class public Lcom/android/email/activity/setup/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettings$ControllerResults;,
        Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountID"

.field private static final ACCOUNT_MANAGER_EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACTION_ACCOUNT_MANAGER_ENTRY:Ljava/lang/String; = "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

.field public static final ACTION_EMPTY_TRASH_COMPLETE:Ljava/lang/String; = "com.android.email.activity.setup.AccountSettings.EMPTY_TRASH_COMPLETE"

.field private static final EMPTYTRASH_FAILURE:I = 0x1

.field private static final EMPTYTRASH_SUCCESS:I = 0x0

.field private static final EMPTYTRASH_TIMEOUT:I = 0x3

.field private static final EMPTYTRASH_UNSUPPORTED:I = 0x2

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final EXTRA_EMPTY_TRASH_SUCCESS:Ljava/lang/String; = "com.android.email.activity.setup.AccountSettings_empty_trash_success"

.field public static final EXTRA_TRASH_ID:Ljava/lang/String; = "com.android.email.activity.setup.AccountSettings_trash_id"

.field private static final PREFERENCE_DEFAULT:Ljava/lang/String; = "account_default"

.field private static final PREFERENCE_DESCRIPTION:Ljava/lang/String; = "account_description"

.field private static final PREFERENCE_EMAIL_SIZE:Ljava/lang/String; = "account_email_size"

.field private static final PREFERENCE_EMPTY_TRASH:Ljava/lang/String; = "account_empty_trash"

.field private static final PREFERENCE_FREQUENCY:Ljava/lang/String; = "account_check_frequency"

.field private static final PREFERENCE_INCOMING:Ljava/lang/String; = "incoming"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "account_name"

.field private static final PREFERENCE_NOTIFY:Ljava/lang/String; = "account_notify"

.field private static final PREFERENCE_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PREFERENCE_OUT_OF_OFFICE:Ljava/lang/String; = "out_of_office"

.field private static final PREFERENCE_RECENT_MESSAGES:Ljava/lang/String; = "account_recent_messages_limit"

.field private static final PREFERENCE_RINGTONE:Ljava/lang/String; = "account_ringtone"

.field private static final PREFERENCE_SERVER_CATERGORY:Ljava/lang/String; = "account_servers"

.field private static final PREFERENCE_SIGNATURE:Ljava/lang/String; = "account_signature"

.field private static final PREFERENCE_SYNC_CALENDAR:Ljava/lang/String; = "account_sync_calendar"

.field private static final PREFERENCE_SYNC_CONTACTS:Ljava/lang/String; = "account_sync_contacts"

.field private static final PREFERENCE_SYNC_SCHEDULE:Ljava/lang/String; = "account_sync_schedule"

.field private static final PREFERENCE_TOP_CATEGORY:Ljava/lang/String; = "account_settings"

.field private static final PREFERENCE_VALUE_VIBRATE_WHEN_ALWAYS:Ljava/lang/String; = "always"

.field private static final PREFERENCE_VALUE_VIBRATE_WHEN_NEVER:Ljava/lang/String; = "never"

.field private static final PREFERENCE_VALUE_VIBRATE_WHEN_SILENT:Ljava/lang/String; = "silent"

.field private static final PREFERENCE_VIBRATE_WHEN:Ljava/lang/String; = "account_settings_vibrate_when"

.field static final RETURN_FROM_SYNC_SCHEDULE_CODE:I = 0x1


# instance fields
.field private final CALENDER_SYNC_WINDOW:I

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

.field private final TAG:Ljava/lang/String;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountId:J

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

.field private mCalendarSyncWindow:Landroid/preference/ListPreference;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    .line 151
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    .line 152
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    .line 185
    const-string v0, "AccountSettings"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->TAG:Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_STATUS_COMPLETE:I

    .line 390
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_NO_STATUS:I

    .line 391
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 392
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_PROCESSING:I

    .line 393
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_GET_ERROR:I

    .line 394
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_SERVER_CONNECT:I

    .line 395
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_RESPONSE_PARSE:I

    .line 396
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->OOO_UNKNOWN_ERROR:I

    .line 397
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->EMAIL_SYNC_WINDOW:I

    .line 398
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->EMAIL_TRUNC_SIZE:I

    .line 399
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettings;->CALENDER_SYNC_WINDOW:I

    .line 402
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$1;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->convertEmailSizeToInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onSyncSchedule()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onIncomingSettings()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onOutgoingSettings()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->onOutOfOffice()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettings;->saveSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAsHandler:Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 2
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private checkStringLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "summary"

    .prologue
    const/16 v7, 0x2e4

    .line 998
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 999
    .local v2, strBuff:Ljava/lang/StringBuffer;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 1000
    .local v4, textPaint:Landroid/text/TextPaint;
    const/4 v1, 0x0

    .line 1001
    .local v1, measuredTextWidth:I
    const/4 v3, 0x0

    .line 1003
    .local v3, strBuffLen:I
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 1006
    if-le v1, v7, :cond_1

    .line 1007
    const/4 v0, 0x0

    .line 1009
    .local v0, measureStrBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #measureStrBuf:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1012
    .restart local v0       #measureStrBuf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1013
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 1015
    if-gt v1, v7, :cond_0

    .line 1017
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1022
    .end local v0           #measureStrBuf:Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    :cond_1
    move-object v5, p1

    goto :goto_0
.end method

.method private convertEmailSizeToInt(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 1351
    mul-int/lit16 p1, p1, 0x400

    .line 1352
    sparse-switch p1, :sswitch_data_0

    .line 1370
    const/16 v0, 0x9

    :goto_0
    return v0

    .line 1354
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1356
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1358
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1360
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1362
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1364
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1366
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 1368
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 1352
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
    .locals 7
    .parameter "restrictedWindow"

    .prologue
    const/4 v6, 0x3

    .line 1416
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f08023c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const v5, 0x7f08023d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const v5, 0x7f08023e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const v4, 0x7f08023f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    const/4 v4, 0x4

    const v5, 0x7f080240

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 1422
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-le p1, v6, :cond_1

    const/16 v4, 0x8

    if-ge p1, v4, :cond_1

    .line 1426
    sub-int/2addr p1, v6

    .line 1427
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1428
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1430
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1431
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1433
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private getCalenderSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 7
    .parameter "restrictedWindow"

    .prologue
    const/4 v6, 0x3

    .line 1438
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "4"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "5"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "6"

    aput-object v5, v1, v4

    const-string v4, "7"

    aput-object v4, v1, v6

    const/4 v4, 0x4

    const-string v5, "0"

    aput-object v5, v1, v4

    .line 1440
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-le p1, v6, :cond_1

    const/16 v4, 0x8

    if-ge p1, v4, :cond_1

    .line 1444
    sub-int/2addr p1, v6

    .line 1445
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1446
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1449
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1451
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private getEmailSizeAllowedEntries(I)[Ljava/lang/String;
    .locals 7
    .parameter "restrictedSize"

    .prologue
    const/16 v6, 0x9

    .line 1375
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0801b1

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const v5, 0x7f0801b2

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const v5, 0x7f0801b3

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const v5, 0x7f0801b4

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const v5, 0x7f0801b5

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const v5, 0x7f0801b6

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const v5, 0x7f0801b7

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const v5, 0x7f0801b8

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const v5, 0x7f0801b9

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const v4, 0x7f0801ba

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 1386
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ltz p1, :cond_1

    if-ge p1, v6, :cond_1

    .line 1389
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 1390
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1393
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1395
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private getEmailSizeAllowedValues(I)[Ljava/lang/String;
    .locals 7
    .parameter "restrictedSize"

    .prologue
    const/16 v6, 0x9

    .line 1400
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "3"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "4"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "5"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "6"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "7"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "8"

    aput-object v5, v1, v4

    const-string v4, "9"

    aput-object v4, v1, v6

    .line 1402
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ltz p1, :cond_1

    if-ge p1, v6, :cond_1

    .line 1405
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 1406
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1408
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1409
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1411
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    .locals 6
    .parameter "restrictedWindow"

    .prologue
    .line 1313
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0800c1

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const v5, 0x7f0800c2

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const v5, 0x7f0800c3

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const v5, 0x7f0800c4

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const v5, 0x7f0800c5

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 1319
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez p1, :cond_1

    const/4 v4, 0x6

    if-ge p1, v4, :cond_1

    .line 1323
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1324
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1327
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1329
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private getSyncWindowAllowedValues(I)[Ljava/lang/String;
    .locals 6
    .parameter "restrictedWindow"

    .prologue
    .line 1334
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "3"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "4"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "5"

    aput-object v5, v1, v4

    .line 1336
    .local v1, entries:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez p1, :cond_1

    const/4 v4, 0x6

    if-ge p1, v4, :cond_1

    .line 1340
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1341
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1343
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    .line 1344
    .local v0, ent:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    .line 1346
    .end local v0           #ent:[Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    move-object v4, v1

    goto :goto_1
.end method

.method private onIncomingSettings()V
    .locals 8

    .prologue
    .line 1257
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v4, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1258
    .local v3, store:Lcom/android/email/mail/Store;
    if-eqz v3, :cond_0

    .line 1259
    invoke-virtual {v3}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v2

    .line 1260
    .local v2, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v2, :cond_0

    .line 1268
    const-string v4, "actionEditIncomingSettings"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Activity;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/android/email/provider/EmailContent$Account;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1270
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .end local v1           #m:Ljava/lang/reflect/Method;
    .end local v2           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3           #store:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1278
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "Error while trying to invoke store settings."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onOutOfOffice()V
    .locals 3

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->getOutOfOffice(J)V

    .line 1302
    return-void
.end method

.method private onOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/OoOSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1306
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1307
    const-string v1, "accountID"

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1308
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 1309
    return-void
.end method

.method private onOutgoingSettings()V
    .locals 8

    .prologue
    .line 1284
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v2

    .line 1285
    .local v2, sender:Lcom/android/email/mail/Sender;
    if-eqz v2, :cond_0

    .line 1286
    invoke-virtual {v2}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v3

    .line 1287
    .local v3, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v3, :cond_0

    .line 1288
    const-string v4, "actionEditOutgoingSettings"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Activity;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/android/email/provider/EmailContent$Account;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1290
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v1           #m:Ljava/lang/reflect/Method;
    .end local v2           #sender:Lcom/android/email/mail/Sender;
    .end local v3           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_0
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1295
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "Error while trying to invoke sender settings."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSyncSchedule()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->actionSyncSchedule(Landroid/app/Activity;Lcom/android/exchange/SyncScheduleData;I)V

    .line 1243
    return-void
.end method

.method private saveSettings()V
    .locals 19

    .prologue
    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "device_policy"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 1092
    .local v8, mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v16

    and-int/lit8 v9, v16, -0x44

    .line 1096
    .local v9, newFlags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 1099
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 1102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 1105
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 1108
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x1

    :goto_0
    or-int v9, v9, v16

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 1113
    if-eqz v8, :cond_e

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 1116
    .local v5, currentSizeByte:B
    invoke-static {v5}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v4

    .line 1119
    .local v4, currentSize:I
    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v10

    .line 1120
    .local v10, plainTextSize:I
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plainTextSize = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v16

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x400

    move v6, v0

    .line 1122
    .local v6, htmlSize:I
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "htmlSize = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v7

    .line 1124
    .local v7, isHtmlAllowed:Z
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isHtmlAllowed = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    if-eqz v7, :cond_c

    if-lez v6, :cond_c

    .line 1126
    move v12, v6

    .line 1130
    .local v12, restrictedSize:I
    :goto_1
    if-lez v12, :cond_d

    .line 1131
    mul-int/lit16 v12, v12, 0x400

    .line 1134
    :goto_2
    if-ge v12, v4, :cond_4

    .line 1136
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bytes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    if-lez v5, :cond_4

    .line 1138
    invoke-static {v12}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v5

    .line 1140
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    .line 1146
    .end local v4           #currentSize:I
    .end local v5           #currentSizeByte:B
    .end local v6           #htmlSize:I
    .end local v7           #isHtmlAllowed:Z
    .end local v10           #plainTextSize:I
    .end local v12           #restrictedSize:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1148
    const/4 v13, 0x6

    .line 1149
    .local v13, restrictedWindow:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1150
    .local v14, setWindow:I
    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v13

    .line 1151
    if-nez v13, :cond_5

    .line 1152
    const/4 v13, 0x6

    .line 1153
    :cond_5
    if-eqz v8, :cond_f

    if-ge v13, v14, :cond_f

    .line 1155
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exchange IT Policy has restricted SyncLookback:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1165
    .end local v13           #restrictedWindow:I
    .end local v14           #setWindow:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    const-string v17, "always"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1166
    or-int/lit8 v9, v9, 0x2

    .line 1174
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1175
    .local v11, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    const-string v17, "account_ringtone"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setFlags(I)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "eas"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1179
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "com.android.exchange"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .local v3, acct:Landroid/accounts/Account;
    const-string v16, "com.android.contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    move-object v0, v3

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1183
    const-string v16, "com.android.calendar"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    move-object v0, v3

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V

    .line 1189
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 1195
    .end local v3           #acct:Landroid/accounts/Account;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1199
    .local v15, window:I
    const/4 v13, 0x0

    .line 1200
    .restart local v13       #restrictedWindow:I
    if-eqz v8, :cond_12

    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v13

    if-lez v13, :cond_12

    .line 1202
    if-eqz v15, :cond_9

    if-ge v13, v15, :cond_11

    .line 1204
    :cond_9
    const-string v16, "AccountSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exchange IT Policy has restricted CalendarSyncLookback:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 1219
    .end local v13           #restrictedWindow:I
    .end local v15           #window:I
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1220
    invoke-static/range {p0 .. p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 1221
    return-void

    .line 1108
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1128
    .restart local v4       #currentSize:I
    .restart local v5       #currentSizeByte:B
    .restart local v6       #htmlSize:I
    .restart local v7       #isHtmlAllowed:Z
    .restart local v10       #plainTextSize:I
    :cond_c
    move v12, v10

    .restart local v12       #restrictedSize:I
    goto/16 :goto_1

    .line 1133
    :cond_d
    const v12, 0x7fffffff

    goto/16 :goto_2

    .line 1143
    .end local v4           #currentSize:I
    .end local v5           #currentSizeByte:B
    .end local v6           #htmlSize:I
    .end local v7           #isHtmlAllowed:Z
    .end local v10           #plainTextSize:I
    .end local v12           #restrictedSize:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    goto/16 :goto_3

    .line 1160
    .restart local v13       #restrictedWindow:I
    .restart local v14       #setWindow:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_4

    .line 1167
    .end local v13           #restrictedWindow:I
    .end local v14           #setWindow:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    const-string v17, "silent"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1168
    or-int/lit8 v9, v9, 0x40

    goto/16 :goto_5

    .line 1209
    .restart local v11       #prefs:Landroid/content/SharedPreferences;
    .restart local v13       #restrictedWindow:I
    .restart local v15       #window:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_6

    .line 1214
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_6
.end method

.method private setAccountIdFromAccountManagerIntent()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    .line 1032
    .local v6, acct:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "emailAddress=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1036
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1042
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1246
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1247
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1248
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1249
    const-string v0, "com.android.email.SyncScheduleExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 1252
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 40
    .parameter "savedInstanceState"

    .prologue
    .line 458
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 463
    .local v19, i:Landroid/content/Intent;
    const-string v4, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->setAccountIdFromAccountManagerIntent()V

    .line 472
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    move-wide v4, v0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    .line 995
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 468
    .restart local p1
    :cond_1
    const-string v4, "account_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    goto :goto_0

    .line 477
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    if-nez v4, :cond_3

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_1

    .line 483
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v4, :cond_5

    .line 487
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_1

    .line 490
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    .line 492
    const v4, 0x7f050001

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->addPreferencesFromResource(I)V

    .line 494
    const-string v4, "account_settings"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/PreferenceCategory;

    .line 495
    .local v39, topCategory:Landroid/preference/PreferenceCategory;
    const v4, 0x7f0800d2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    const-string v4, "account_description"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 501
    .local v13, checkedSummary1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$2;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 516
    const-string v4, "account_name"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->checkStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountName:Landroid/preference/EditTextPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$3;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v20

    .line 558
    .local v20, info:Lcom/android/email/mail/Store$StoreInfo;
    const-string v4, "account_check_frequency"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$4;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 586
    const/16 v28, 0x0

    .line 587
    .local v28, restrictedEmailSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    if-eqz v4, :cond_6

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v25

    .line 590
    .local v25, plainTextSize:I
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plainTextSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v4

    move v0, v4

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    .line 592
    .local v18, htmlSize:I
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "htmlSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v21

    .line 594
    .local v21, isHtmlAllowed:Z
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHtmlAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz v21, :cond_c

    if-lez v18, :cond_c

    .line 596
    move/from16 v28, v18

    .line 601
    .end local v18           #htmlSize:I
    .end local v21           #isHtmlAllowed:Z
    .end local v25           #plainTextSize:I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->convertEmailSizeToInt(I)I

    move-result v28

    .line 607
    const-string v4, "account_email_size"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getEmailSizeAllowedValues(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$5;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$5;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmailSize:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$6;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$6;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 641
    :goto_4
    const/16 v29, 0x6

    .line 642
    .local v29, restrictedWindow:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v29

    .line 645
    :cond_7
    if-nez v29, :cond_8

    .line 646
    const/16 v29, 0x6

    .line 650
    :cond_8
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    .line 651
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 652
    new-instance v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f0800c0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f0800c0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncLookback()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$7;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$7;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$8;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 686
    :cond_9
    const/4 v15, 0x0

    .line 687
    .local v15, currentAccountsCount:I
    const/4 v12, 0x0

    .line 689
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 693
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_e

    .line 694
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 563
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #currentAccountsCount:I
    .end local v28           #restrictedEmailSize:I
    .end local v29           #restrictedWindow:I
    :cond_a
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 567
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 598
    .restart local v18       #htmlSize:I
    .restart local v21       #isHtmlAllowed:Z
    .restart local v25       #plainTextSize:I
    .restart local v28       #restrictedEmailSize:I
    :cond_c
    move/from16 v28, v25

    goto/16 :goto_3

    .line 637
    .end local v18           #htmlSize:I
    .end local v21           #isHtmlAllowed:Z
    .end local v25           #plainTextSize:I
    :cond_d
    const-string v4, "account_email_size"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 697
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v15       #currentAccountsCount:I
    .restart local v29       #restrictedWindow:I
    :cond_e
    if-eqz v12, :cond_f

    .line 698
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_f
    const-string v4, "account_default"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_17

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 705
    const/4 v4, 0x1

    if-ne v15, v4, :cond_18

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 709
    :goto_7
    const-string v4, "account_notify"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 712
    const-string v4, "account_ringtone"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/RingtonePreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v27

    .line 717
    .local v27, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "account_ringtone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    const-string v4, "account_settings_vibrate_when"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 721
    .local v16, flagsVibrate:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 722
    .local v17, flagsVibrateSilent:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object v4, v0

    if-eqz v16, :cond_1c

    const-string v5, "always"

    :goto_b
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 727
    const-string v4, "account_sync_schedule"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    .line 728
    .local v37, syncSchedulePref:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 730
    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$9;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$9;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 744
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    move-object v4, v0

    if-nez v4, :cond_10

    .line 745
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0801bd

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0801c1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    .line 750
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    move-object v4, v0

    if-nez v4, :cond_11

    .line 751
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 752
    .restart local v11       #builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0801bd

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Ok"

    new-instance v6, Lcom/android/email/activity/setup/AccountSettings$10;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$10;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_1:Landroid/app/AlertDialog;

    .line 759
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 760
    const-string v4, "account_empty_trash"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/email/activity/setup/EmptyTrashDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setAccountId(J)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setController(Lcom/android/email/Controller;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mEmptyTrash:Lcom/android/email/activity/setup/EmptyTrashDialog;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mPostEmptyTrash_0:Landroid/app/AlertDialog;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/EmptyTrashDialog;->setPositiveResultDialog(Landroid/app/Dialog;)V

    .line 770
    :goto_d
    const-string v4, "incoming"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$11;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$11;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 779
    const-string v4, "outgoing"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 780
    .local v26, prefOutgoing:Landroid/preference/Preference;
    const/16 v34, 0x1

    .line 782
    .local v34, showOutgoing:Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v31

    .line 783
    .local v31, sender:Lcom/android/email/mail/Sender;
    if-eqz v31, :cond_12

    .line 784
    invoke-virtual/range {v31 .. v31}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v33

    .line 785
    .local v33, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v33, :cond_20

    const/4 v4, 0x1

    move/from16 v34, v4

    .line 790
    .end local v31           #sender:Lcom/android/email/mail/Sender;
    .end local v33           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_12
    :goto_e
    if-eqz v34, :cond_21

    .line 791
    new-instance v4, Lcom/android/email/activity/setup/AccountSettings$12;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$12;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 804
    :goto_f
    const-string v4, "account_sync_contacts"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 809
    const-string v4, "out_of_office"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$13;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$13;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 821
    :goto_10
    const-string v4, "account_sync_calendar"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 823
    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v10, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .local v10, acct:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    const-string v5, "com.android.contacts"

    invoke-static {v10, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    const-string v5, "com.android.calendar"

    invoke-static {v10, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 836
    .end local v10           #acct:Landroid/accounts/Account;
    :goto_11
    const-string v4, "account_recent_messages_limit"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    .line 838
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountId:J

    move-wide v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v22

    .line 839
    .local v22, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v22, :cond_24

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 860
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 862
    const-string v4, "common_settings"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 863
    .local v14, commonCategory:Landroid/preference/PreferenceCategory;
    const-string v4, "forward_with_files"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 864
    const-string v4, "account_recent_messages_limit"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    .end local v14           #commonCategory:Landroid/preference/PreferenceCategory;
    :cond_13
    const-string v4, "signature"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    .line 870
    new-instance v35, Ljava/lang/StringBuffer;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    .line 871
    .local v35, strBuff:Ljava/lang/StringBuffer;
    new-instance v38, Landroid/text/TextPaint;

    invoke-direct/range {v38 .. v38}, Landroid/text/TextPaint;-><init>()V

    .line 872
    .local v38, textPaint:Landroid/text/TextPaint;
    const/16 v24, 0x0

    .line 873
    .local v24, measuredTextWidth:I
    const/16 v36, 0x0

    .line 875
    .local v36, strBuffLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 877
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v24, v0

    .line 879
    const/16 v4, 0x23f

    move/from16 v0, v24

    move v1, v4

    if-le v0, v1, :cond_25

    .line 880
    const/16 v23, 0x0

    .line 881
    .local v23, measureStrBuf:Ljava/lang/StringBuffer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->length()I

    move-result v36

    .line 883
    :cond_14
    new-instance v23, Ljava/lang/StringBuffer;

    .end local v23           #measureStrBuf:Ljava/lang/StringBuffer;
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 884
    .restart local v23       #measureStrBuf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v35

    move v1, v4

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v24, v0

    .line 886
    const/16 v4, 0x23f

    move/from16 v0, v24

    move v1, v4

    if-gt v0, v1, :cond_14

    .line 887
    const-string v4, "..."

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 895
    .end local v23           #measureStrBuf:Ljava/lang/StringBuffer;
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$15;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$15;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$16;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$16;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 949
    const/16 v30, 0x0

    .line 950
    .local v30, restrictedWindowCalender:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    if-eqz v4, :cond_15

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v30

    .line 956
    :cond_15
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 957
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    const-string v4, "account_servers"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceCategory;

    .line 961
    .local v32, serverCategory:Landroid/preference/PreferenceCategory;
    new-instance v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f08023b

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const v5, 0x7f08023b

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedEntries(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->getCalenderSyncWindowAllowedValues(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$17;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$17;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$18;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettings$18;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mCalendarSyncWindow:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 697
    .end local v16           #flagsVibrate:Z
    .end local v17           #flagsVibrateSilent:Z
    .end local v22           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v24           #measuredTextWidth:I
    .end local v26           #prefOutgoing:Landroid/preference/Preference;
    .end local v27           #prefs:Landroid/content/SharedPreferences;
    .end local v30           #restrictedWindowCalender:I
    .end local v32           #serverCategory:Landroid/preference/PreferenceCategory;
    .end local v34           #showOutgoing:Z
    .end local v35           #strBuff:Ljava/lang/StringBuffer;
    .end local v36           #strBuffLen:I
    .end local v37           #syncSchedulePref:Landroid/preference/Preference;
    .end local v38           #textPaint:Landroid/text/TextPaint;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_16

    .line 698
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v4

    .line 703
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 708
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 710
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 720
    .restart local v27       #prefs:Landroid/content/SharedPreferences;
    :cond_1a
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_9

    .line 721
    .restart local v16       #flagsVibrate:Z
    :cond_1b
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_a

    .line 722
    .restart local v17       #flagsVibrateSilent:Z
    :cond_1c
    if-eqz v17, :cond_1d

    const-string v5, "silent"

    goto/16 :goto_b

    :cond_1d
    const-string v5, "never"

    goto/16 :goto_b

    .line 739
    .restart local v37       #syncSchedulePref:Landroid/preference/Preference;
    :cond_1e
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 768
    :cond_1f
    const-string v4, "account_empty_trash"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 785
    .restart local v26       #prefOutgoing:Landroid/preference/Preference;
    .restart local v31       #sender:Lcom/android/email/mail/Sender;
    .restart local v33       #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v34       #showOutgoing:Z
    :cond_20
    const/4 v4, 0x0

    move/from16 v34, v4

    goto/16 :goto_e

    .line 799
    .end local v31           #sender:Lcom/android/email/mail/Sender;
    .end local v33           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_21
    const-string v4, "account_servers"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceCategory;

    .line 801
    .restart local v32       #serverCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 819
    .end local v32           #serverCategory:Landroid/preference/PreferenceCategory;
    :cond_22
    const-string v4, "out_of_office"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 830
    :cond_23
    const-string v4, "account_servers"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/PreferenceCategory;

    .line 832
    .restart local v32       #serverCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object v4, v0

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_11

    .line 845
    .end local v32           #serverCategory:Landroid/preference/PreferenceCategory;
    .restart local v22       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mRecentMessages:Landroid/preference/ListPreference;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/setup/AccountSettings$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings$14;-><init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/provider/EmailContent$Mailbox;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_12

    .line 891
    .restart local v24       #measuredTextWidth:I
    .restart local v35       #strBuff:Ljava/lang/StringBuffer;
    .restart local v36       #strBuffLen:I
    .restart local v38       #textPaint:Landroid/text/TextPaint;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettings;->mSignature:Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_13

    .line 787
    .end local v22           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v24           #measuredTextWidth:I
    .end local v35           #strBuff:Ljava/lang/StringBuffer;
    .end local v36           #strBuffLen:I
    .end local v38           #textPaint:Landroid/text/TextPaint;
    :catch_0
    move-exception v4

    goto/16 :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1226
    new-instance v0, Lcom/android/email/activity/setup/AccountSettings$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettings$19;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings$19;->start()V

    .line 1236
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1083
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1085
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1049
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1051
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mControllerCallback:Lcom/android/email/activity/setup/AccountSettings$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1059
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1065
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 1069
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1070
    .local v0, refreshedAccount:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    if-nez v1, :cond_3

    .line 1072
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    goto :goto_0

    .line 1075
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 1076
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettings;->mAccountDirty:Z

    goto :goto_0
.end method
