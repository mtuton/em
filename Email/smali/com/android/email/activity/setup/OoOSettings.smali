.class public Lcom/android/email/activity/setup/OoOSettings;
.super Landroid/app/Activity;
.source "OoOSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/OoOSettings$Listener;
    }
.end annotation


# instance fields
.field private final DATE_DIALOG_ID:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_SET_ERROR:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private final REQUEST_FOR_EXTERNAL_MESSAGES:I

.field private final REQUEST_FOR_INTERNAL_MESSAGES:I

.field private final TIME_DIALOG_ID:I

.field private mCancelButton:Landroid/widget/Button;

.field private mController:Lcom/android/email/Controller;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEnableDateTimeCB:Landroid/widget/CheckBox;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mExternalKnownMsgState:I

.field private mExternalMsgButton:Landroid/widget/Button;

.field private mExternalMsgCB:Landroid/widget/CheckBox;

.field private mExternalUnKnownMsgState:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mInternalMsgButton:Landroid/widget/Button;

.field private mInternalMsgState:I

.field private mIsStartDate:Z

.field private mIsStartTime:Z

.field mIsUIOn:Z

.field private mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

.field private mMessageForExternalKnownUsers:Ljava/lang/String;

.field private mMessageForExternalUnknownUsers:Ljava/lang/String;

.field private mMessageForInternalUsers:Ljava/lang/String;

.field private mMinute:I

.field private mMonth:I

.field private mMonths:[Ljava/lang/String;

.field private mOofOffButton:Landroid/widget/Button;

.field private mOofOnButton:Landroid/widget/Button;

.field private mOofState:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mSetButton:Landroid/widget/Button;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v2, p0, Lcom/android/email/activity/setup/OoOSettings;->DATE_DIALOG_ID:I

    .line 38
    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->TIME_DIALOG_ID:I

    .line 39
    iput v3, p0, Lcom/android/email/activity/setup/OoOSettings;->REQUEST_FOR_INTERNAL_MESSAGES:I

    .line 40
    iput v4, p0, Lcom/android/email/activity/setup/OoOSettings;->REQUEST_FOR_EXTERNAL_MESSAGES:I

    .line 56
    iput-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    .line 85
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$1;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 106
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$2;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 123
    iput v2, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_STATUS_COMPLETE:I

    .line 124
    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_NO_STATUS:I

    .line 125
    iput v3, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 126
    iput v4, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_PROCESSING:I

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_SET_ERROR:I

    .line 128
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_GET_ERROR:I

    .line 129
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_SERVER_CONNECT:I

    .line 130
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_RESPONSE_PARSE:I

    .line 131
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_UNKNOWN_ERROR:I

    .line 134
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$Listener;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    .line 135
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$3;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHandler:Landroid/os/Handler;

    .line 786
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/OoOSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->toggleAllUIState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareDateTimeButtons()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateDate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/OoOSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/OoOSettings;->onMessageClick(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->sendDataToExchange()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/OoOSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateStartDateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateEndDateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/OoOSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/OoOSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/OoOSettings;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/OoOSettings;->onSetOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method private onMessageClick(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-class v7, Lcom/android/email/activity/setup/OoOSetMessage;

    const-string v6, "oooMsgReqDataExternalKnown"

    const-string v4, "oooMsgReqType"

    .line 663
    if-ne p1, v3, :cond_1

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 665
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 667
    const-string v1, "oooMsgReqDataInternal"

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 694
    :goto_0
    return-void

    .line 671
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 674
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    if-nez v1, :cond_4

    .line 676
    :cond_2
    const-string v1, "oooMsgReqDataInternalUnknown"

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 692
    :cond_3
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 679
    :cond_4
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    if-ne v1, v3, :cond_3

    .line 680
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 682
    const-string v1, "oooMsgReqDataExternalKnown"

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 687
    :cond_5
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 688
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 689
    const-string v1, "oooMsgReqDataExternalKnown"

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private onSetOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0x64

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, resultData:Z
    if-eqz p1, :cond_0

    .line 776
    sget-object v1, Lcom/android/email/activity/setup/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 778
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080234

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 782
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->setResult(I)V

    .line 783
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->finish()V

    .line 784
    return-void

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080235

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private prepareDateTimeButtons()V
    .locals 2

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 649
    .local v0, value:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 650
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 651
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 652
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 654
    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateStartDateTime()V

    .line 656
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateEndDateTime()V

    .line 658
    :cond_0
    return-void
.end method

.method private prepareStartUpUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, data:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 353
    .local v3, oodl:Lcom/android/exchange/OoODataList;
    if-eqz v0, :cond_0

    .line 354
    sget-object v5, Lcom/android/email/activity/setup/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #oodl:Lcom/android/exchange/OoODataList;
    check-cast v3, Lcom/android/exchange/OoODataList;

    .line 356
    .restart local v3       #oodl:Lcom/android/exchange/OoODataList;
    :cond_0
    if-eqz v3, :cond_c

    .line 357
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/exchange/OoODataList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 358
    invoke-virtual {v3, v1}, Lcom/android/exchange/OoODataList;->getItem(I)Lcom/android/exchange/OoOData;

    move-result-object v4

    .line 360
    .local v4, singleData:Lcom/android/exchange/OoOData;
    if-eqz v4, :cond_1

    .line 361
    iget v5, v4, Lcom/android/exchange/OoOData;->state:I

    packed-switch v5, :pswitch_data_0

    .line 357
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 364
    iput-boolean v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 365
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 367
    :pswitch_1
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_2

    .line 368
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 371
    :goto_2
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_1

    .line 370
    :cond_2
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_2

    .line 374
    :pswitch_2
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_3

    .line 375
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 376
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 380
    :goto_3
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto :goto_1

    .line 379
    :cond_3
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_3

    .line 383
    :pswitch_3
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_4

    .line 384
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 385
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 389
    :goto_4
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_1

    .line 388
    :cond_4
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_4

    .line 396
    :pswitch_4
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 397
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 398
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 400
    :pswitch_5
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_5

    .line 401
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 404
    :goto_5
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_1

    .line 403
    :cond_5
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_5

    .line 407
    :pswitch_6
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_6

    .line 408
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 409
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 413
    :goto_6
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto :goto_1

    .line 412
    :cond_6
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_6

    .line 416
    :pswitch_7
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_7

    .line 417
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 418
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    :goto_7
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_1

    .line 421
    :cond_7
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_7

    .line 429
    :pswitch_8
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 430
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 431
    if-nez v2, :cond_8

    .line 432
    iget-object v5, v4, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    .line 433
    iget-object v5, v4, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    .line 434
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 435
    const/4 v2, 0x1

    .line 438
    :cond_8
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 440
    :pswitch_9
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_9

    .line 441
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 446
    :goto_8
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 444
    :cond_9
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_8

    .line 449
    :pswitch_a
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_a

    .line 450
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 451
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    :goto_9
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 454
    :cond_a
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_9

    .line 458
    :pswitch_b
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_b

    .line 459
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 460
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 464
    :goto_a
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 463
    :cond_b
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_a

    .line 476
    .end local v1           #i:I
    .end local v4           #singleData:Lcom/android/exchange/OoOData;
    :cond_c
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->toggleAllUIState()V

    .line 477
    return-void

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 365
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 398
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 438
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private sendDataToExchange()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 698
    const/4 v9, 0x0

    .line 700
    .local v9, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    .line 701
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 704
    iget-boolean v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    if-ne v4, v3, :cond_8

    .line 705
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    .line 706
    .local v0, oodl:Lcom/android/exchange/OoODataList;
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    const/4 v9, 0x1

    .line 708
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-gtz v4, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080239

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 711
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 769
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-gtz v4, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080239

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 717
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0

    .line 721
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 722
    if-eqz v9, :cond_4

    .line 723
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 732
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 733
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 734
    if-eqz v9, :cond_5

    .line 735
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    move v1, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 759
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 760
    .local v7, accountID:J
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/exchange/OoODataList;)V

    goto :goto_0

    .line 728
    .end local v7           #accountID:J
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_1

    .line 740
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v12, v3, v3, v1}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 745
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 746
    if-eqz v9, :cond_7

    .line 747
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_2

    .line 752
    :cond_7
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 764
    .end local v0           #oodl:Lcom/android/exchange/OoODataList;
    :cond_8
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    .line 765
    .restart local v0       #oodl:Lcom/android/exchange/OoODataList;
    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {v0, v1, v6, v6, v2}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 767
    .restart local v7       #accountID:J
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/exchange/OoODataList;)V

    goto/16 :goto_0
.end method

.method private toggleAllUIState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 481
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareDateTimeButtons()V

    .line 494
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 499
    :cond_0
    return-void

    .line 490
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDate()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 567
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 568
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    .line 576
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 573
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 574
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    goto :goto_0
.end method

.method private updateEndDateTime()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 541
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 542
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    .line 543
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 544
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 545
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    .line 547
    const-string v0, ""

    .line 548
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/OoOSettings;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 550
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    if-ge v1, v3, :cond_0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_0
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    if-ge v1, v3, :cond_1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    return-void

    .line 553
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateStartDateTime()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 519
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    .line 520
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 521
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 522
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    .line 524
    const-string v0, ""

    .line 525
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/OoOSettings;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 527
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    if-ge v1, v3, :cond_0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    if-ge v1, v3, :cond_1

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    return-void

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 582
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 587
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 630
    packed-switch p1, :pswitch_data_0

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 632
    :pswitch_0
    if-eqz p3, :cond_0

    .line 633
    const-string v0, "oooMsgReqDataInternal"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_0

    .line 636
    :pswitch_1
    if-eqz p3, :cond_0

    .line 637
    const-string v0, "oooMsgReqDataExternalKnown"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 638
    const-string v0, "oooMsgReqDataInternalUnknown"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->setContentView(I)V

    .line 194
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    .line 195
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    .line 196
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Date;->setDate(I)V

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 198
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    .line 202
    const v1, 0x7f07014d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$4;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v1, 0x7f07014e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    .line 215
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$5;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v1, 0x7f07014f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    .line 227
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$6;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    const v1, 0x7f070151

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    .line 237
    const v1, 0x7f070154

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    .line 239
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$7;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$8;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    :cond_0
    const-string v0, "MM-dd-yyyy"

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v1, 0x7f070152

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    .line 265
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$9;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f070155

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    .line 275
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$10;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v1, 0x7f070156

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    .line 285
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$11;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v1, 0x7f070158

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    .line 293
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$12;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v1, 0x7f070159

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mSetButton:Landroid/widget/Button;

    .line 301
    const v1, 0x7f07015a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mCancelButton:Landroid/widget/Button;

    .line 303
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mSetButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$13;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$13;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$14;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$14;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v1, 0x7f070157

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    .line 319
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/email/activity/setup/OoOSettings$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/OoOSettings$15;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareStartUpUI()V

    .line 327
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 607
    :goto_0
    return-object v0

    .line 597
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    iget v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 600
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 603
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    iget v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 344
    :cond_1
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 612
    packed-switch p1, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 614
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v1, v0

    .line 615
    .local v1, datePicker:Landroid/app/DatePickerDialog;
    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    iget v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 619
    .end local v1           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v2, v0

    .line 620
    .local v2, timePicker:Landroid/app/TimePickerDialog;
    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    iget v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    invoke-virtual {v2, v3, v4}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V
    .locals 7
    .parameter "button"
    .parameter "date"

    .prologue
    const-string v6, ", "

    const-string v5, " "

    .line 502
    const-string v1, ""

    .line 503
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void

    .line 508
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 510
    :cond_3
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
