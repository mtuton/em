.class public Lcom/android/email/activity/setup/OoOSettings;
.super Landroid/app/Activity;
.source "OoOSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/OoOSettings$Listener;
    }
.end annotation


# static fields
.field public static final OOO_MSG_REQ_DATA_EXTERNAL_KNOWN:Ljava/lang/String; = "oooMsgReqDataExternalKnown"

.field public static final OOO_MSG_REQ_DATA_EXTERNAL_UNKNOWN:Ljava/lang/String; = "oooMsgReqDataInternalUnknown"

.field public static final OOO_MSG_REQ_DATA_INTERNAL:Ljava/lang/String; = "oooMsgReqDataInternal"

.field public static final OOO_MSG_REQ_TYPE:Ljava/lang/String; = "oooMsgReqType"


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

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/email/activity/setup/OoOSettings;->DATE_DIALOG_ID:I

    .line 36
    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->TIME_DIALOG_ID:I

    .line 37
    iput v3, p0, Lcom/android/email/activity/setup/OoOSettings;->REQUEST_FOR_INTERNAL_MESSAGES:I

    .line 38
    iput v4, p0, Lcom/android/email/activity/setup/OoOSettings;->REQUEST_FOR_EXTERNAL_MESSAGES:I

    .line 54
    iput-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    .line 83
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$1;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 104
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$2;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 121
    iput v2, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_STATUS_COMPLETE:I

    .line 122
    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_NO_STATUS:I

    .line 123
    iput v3, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 124
    iput v4, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_PROCESSING:I

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_SET_ERROR:I

    .line 126
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_GET_ERROR:I

    .line 127
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_SERVER_CONNECT:I

    .line 128
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_RESPONSE_PARSE:I

    .line 129
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/OoOSettings;->OOO_UNKNOWN_ERROR:I

    .line 132
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$Listener;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    .line 133
    new-instance v0, Lcom/android/email/activity/setup/OoOSettings$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/OoOSettings$3;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHandler:Landroid/os/Handler;

    .line 709
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/OoOSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->toggleAllUIState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareDateTimeButtons()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/OoOSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/OoOSettings;->onMessageClick(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->sendDataToExchange()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/OoOSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateStartDateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/OoOSettings;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateEndDateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/OoOSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/OoOSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsStartTime:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/OoOSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/OoOSettings;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/OoOSettings;->onSetOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method private onMessageClick(Z)V
    .locals 8
    .parameter "msgReq"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-class v7, Lcom/android/email/activity/setup/OoOSetMessage;

    const-string v6, "oooMsgReqDataExternalKnown"

    const-string v4, "oooMsgReqType"

    .line 591
    if-ne p1, v3, :cond_1

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 595
    const-string v1, "oooMsgReqDataInternal"

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 622
    :goto_0
    return-void

    .line 599
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 602
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    if-nez v1, :cond_4

    .line 604
    :cond_2
    const-string v1, "oooMsgReqDataInternalUnknown"

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    :cond_3
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 607
    :cond_4
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    if-ne v1, v3, :cond_3

    .line 608
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 610
    const-string v1, "oooMsgReqDataExternalKnown"

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 615
    :cond_5
    const-string v1, "oooMsgReqType"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 617
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

    .line 700
    sget-object v1, Lcom/android/email/activity/setup/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 701
    .local v0, resultData:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080205

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 705
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/OoOSettings;->setResult(I)V

    .line 706
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->finish()V

    .line 707
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080206

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private prepareDateTimeButtons()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 577
    .local v0, value:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 582
    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateStartDateTime()V

    .line 584
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->updateEndDateTime()V

    .line 586
    :cond_0
    return-void
.end method

.method private prepareStartUpUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 338
    .local v0, data:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 340
    .local v3, oodl:Lcom/android/exchange/OoODataList;
    if-eqz v0, :cond_0

    .line 341
    sget-object v5, Lcom/android/email/activity/setup/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #oodl:Lcom/android/exchange/OoODataList;
    check-cast v3, Lcom/android/exchange/OoODataList;

    .line 343
    .restart local v3       #oodl:Lcom/android/exchange/OoODataList;
    :cond_0
    if-eqz v3, :cond_c

    .line 344
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/exchange/OoODataList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 345
    invoke-virtual {v3, v1}, Lcom/android/exchange/OoODataList;->getItem(I)Lcom/android/exchange/OoOData;

    move-result-object v4

    .line 347
    .local v4, singleData:Lcom/android/exchange/OoOData;
    if-eqz v4, :cond_1

    .line 348
    iget v5, v4, Lcom/android/exchange/OoOData;->state:I

    packed-switch v5, :pswitch_data_0

    .line 344
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 351
    iput-boolean v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 352
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 354
    :pswitch_1
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_2

    .line 355
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 358
    :goto_2
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_1

    .line 357
    :cond_2
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_2

    .line 361
    :pswitch_2
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_3

    .line 362
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 363
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    :goto_3
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto :goto_1

    .line 366
    :cond_3
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_3

    .line 370
    :pswitch_3
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_4

    .line 371
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 372
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    :goto_4
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_1

    .line 375
    :cond_4
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_4

    .line 383
    :pswitch_4
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 384
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 385
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 387
    :pswitch_5
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_5

    .line 388
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 391
    :goto_5
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_1

    .line 390
    :cond_5
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_5

    .line 394
    :pswitch_6
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_6

    .line 395
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 396
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    :goto_6
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto :goto_1

    .line 399
    :cond_6
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_6

    .line 403
    :pswitch_7
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_7

    .line 404
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 405
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 409
    :goto_7
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_1

    .line 408
    :cond_7
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_7

    .line 416
    :pswitch_8
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    .line 417
    iput-boolean v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    .line 418
    if-nez v2, :cond_8

    .line 419
    iget-object v5, v4, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    .line 420
    iget-object v5, v4, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    .line 421
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    const/4 v2, 0x1

    .line 425
    :cond_8
    iget v5, v4, Lcom/android/exchange/OoOData;->type:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 427
    :pswitch_9
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_9

    .line 428
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    .line 433
    :goto_8
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 431
    :cond_9
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgState:I

    goto :goto_8

    .line 436
    :pswitch_a
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_a

    .line 437
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    .line 438
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 442
    :goto_9
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 441
    :cond_a
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalKnownMsgState:I

    goto :goto_9

    .line 445
    :pswitch_b
    iget v5, v4, Lcom/android/exchange/OoOData;->enabled:I

    if-ne v5, v6, :cond_b

    .line 446
    iput v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    .line 447
    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 451
    :goto_a
    iget-object v5, v4, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto/16 :goto_1

    .line 450
    :cond_b
    iput v7, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalUnKnownMsgState:I

    goto :goto_a

    .line 463
    .end local v1           #i:I
    .end local v4           #singleData:Lcom/android/exchange/OoOData;
    :cond_c
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->toggleAllUIState()V

    .line 464
    return-void

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 352
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 385
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 425
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

    .line 626
    const/4 v9, 0x0

    .line 628
    .local v9, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    .line 629
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 632
    iget-boolean v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofState:Z

    if-ne v4, v3, :cond_8

    .line 633
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    .line 634
    .local v0, oodl:Lcom/android/exchange/OoODataList;
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    const/4 v9, 0x1

    .line 636
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-gtz v4, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08020a

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 639
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 697
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-gtz v4, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08020a

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 645
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 650
    if-eqz v9, :cond_4

    .line 651
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 660
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 661
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 662
    if-eqz v9, :cond_5

    .line 663
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    move v1, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 687
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 688
    .local v7, accountID:J
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/exchange/OoODataList;)V

    goto :goto_0

    .line 656
    .end local v7           #accountID:J
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v4}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_1

    .line 668
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v12, v3, v3, v1}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 673
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 674
    if-eqz v9, :cond_7

    .line 675
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_2

    .line 680
    :cond_7
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 692
    .end local v0           #oodl:Lcom/android/exchange/OoODataList;
    :cond_8
    new-instance v0, Lcom/android/exchange/OoODataList;

    invoke-direct {v0}, Lcom/android/exchange/OoODataList;-><init>()V

    .line 693
    .restart local v0       #oodl:Lcom/android/exchange/OoODataList;
    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {v0, v1, v6, v6, v2}, Lcom/android/exchange/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 694
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 695
    .restart local v7       #accountID:J
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/exchange/OoODataList;)V

    goto/16 :goto_0
.end method

.method private toggleAllUIState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 468
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    iget-boolean v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mIsUIOn:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareDateTimeButtons()V

    .line 481
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    :cond_0
    return-void

    .line 477
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEndDateTime()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 514
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 515
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 517
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    .line 520
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 521
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    if-ge v1, v4, :cond_0

    .line 525
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

    .line 529
    :goto_0
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    if-ge v1, v4, :cond_1

    .line 530
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

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 535
    return-void

    .line 527
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

    .line 532
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
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 490
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    .line 491
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    .line 492
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    .line 493
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    .line 494
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    .line 496
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 497
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mHour:I

    if-ge v1, v4, :cond_0

    .line 501
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

    .line 505
    :goto_0
    iget v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mMinute:I

    if-ge v1, v4, :cond_1

    .line 506
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

    .line 510
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    return-void

    .line 503
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

    .line 508
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


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 558
    packed-switch p1, :pswitch_data_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    if-eqz p3, :cond_0

    .line 561
    const-string v0, "oooMsgReqDataInternal"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForInternalUsers:Ljava/lang/String;

    goto :goto_0

    .line 564
    :pswitch_1
    if-eqz p3, :cond_0

    .line 565
    const-string v0, "oooMsgReqDataExternalKnown"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 566
    const-string v0, "oooMsgReqDataInternalUnknown"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->setContentView(I)V

    .line 192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    .line 193
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    .line 194
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 195
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonths:[Ljava/lang/String;

    .line 200
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    .line 201
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOnButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$4;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mOofOffButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$5;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$6;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    const v0, 0x7f0700fe

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    .line 235
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$7;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndDateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$8;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mStartTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$9;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mEndTimeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$10;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mInternalMsgButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$11;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f070105

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$12;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v0, 0x7f070106

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mSetButton:Landroid/widget/Button;

    .line 288
    const v0, 0x7f070107

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mCancelButton:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mSetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$13;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$14;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$14;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f070104

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OoOSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mExternalMsgCB:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/email/activity/setup/OoOSettings$15;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/OoOSettings$15;-><init>(Lcom/android/email/activity/setup/OoOSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    invoke-direct {p0}, Lcom/android/email/activity/setup/OoOSettings;->prepareStartUpUI()V

    .line 314
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_0
    return-object v0

    .line 543
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/setup/OoOSettings;->mYear:I

    iget v4, p0, Lcom/android/email/activity/setup/OoOSettings;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/setup/OoOSettings;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 546
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 549
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

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings;->mListener:Lcom/android/email/activity/setup/OoOSettings$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 331
    :cond_1
    return-void
.end method
