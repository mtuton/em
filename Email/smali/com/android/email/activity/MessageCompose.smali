.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$Listener;,
        Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$MessageComposeHandler;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private DPMReceiver:Landroid/content/BroadcastReceiver;

.field private encryptedView:Landroid/widget/ImageView;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAction:Ljava/lang/String;

.field private mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

.field private mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

.field private mAddressButtonBar:Landroid/view/View;

.field private mAttachmentPossible:Z

.field private mAttachmentTotalSize:I

.field private mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsExpander:Landroid/widget/ToggleButton;

.field private mAttachmentsHeader:Landroid/widget/LinearLayout;

.field private mAttachments_layout:Landroid/widget/LinearLayout;

.field private mBccLayout:Landroid/widget/LinearLayout;

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcBccLayout:Landroid/widget/LinearLayout;

.field private mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcLayout:Landroid/widget/LinearLayout;

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCheckedAccountId:J

.field private mComposerTitle:Landroid/widget/TextView;

.field private mComposerTitleView:Landroid/widget/LinearLayout;

.field private mController:Lcom/android/email/Controller;

.field mDialog:Landroid/app/ProgressDialog;

.field private mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mDownloadSmimeAttachment:Z

.field private mDraft:Lcom/android/email/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mDummy_view:Landroid/widget/LinearLayout;

.field private mFlagOnSendButtonClicked:Z

.field private mFromAccountButton:Landroid/widget/Button;

.field private mFromAccountLayout:Landroid/widget/LinearLayout;

.field private mFromAccountView:Landroid/widget/Spinner;

.field private mFromAccountsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mGalButton:Landroid/widget/Button;

.field private mGroupButton:Landroid/widget/Button;

.field private mHandler:Lcom/android/email/activity/MessageCompose$MessageComposeHandler;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIgnoreDraftNeedsSaving:Z

.field private mInitialText:Ljava/lang/StringBuffer;

.field private mIsEAS:Z

.field private mIsEncryptChecked:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mIsOriginMsgEdited:Z

.field private mIsSignChecked:Z

.field private mListener:Lcom/android/email/activity/MessageCompose$Listener;

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;

.field private mLoadMessageTask:Landroid/os/AsyncTask;

.field private mLoadOriginalTextTask:Landroid/os/AsyncTask;

.field private mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageId:J

.field private mMessageLoaded:Z

.field private mOnAction:Z

.field private mOnCcAndBcc:Z

.field private mOnDiscard:Z

.field private mOnSend:Z

.field private mOnWatcher:Z

.field private mPhonebookButton:Landroid/widget/Button;

.field private mPriority:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQuotedText:Landroid/webkit/HtmlComposerView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageButton;

.field private mRecentButton:Landroid/widget/Button;

.field private mSaveMessageTask:Landroid/os/AsyncTask;

.field private mScrollView:Lcom/android/email/ExtendedScrollView;

.field private mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mSource:Lcom/android/email/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectLayout:Landroid/widget/LinearLayout;

.field private mSubjectView:Landroid/widget/EditText;

.field private mTempSubject:Ljava/lang/String;

.field private mToLayout:Landroid/widget/LinearLayout;

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;

.field private priorityView:Landroid/widget/ImageView;

.field private signView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 387
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data3"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageCompose;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 395
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 270
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTempSubject:Ljava/lang/String;

    .line 290
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 368
    new-instance v0, Lcom/android/email/activity/MessageCompose$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$Listener;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    .line 404
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    .line 405
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 452
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 453
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 464
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 465
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentPossible:Z

    .line 468
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 481
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 485
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 1030
    new-instance v0, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 6774
    return-void
.end method

.method private IsEAS()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "isEAS(): return - :"

    const-string v5, "Compose >>"

    .line 1061
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v1, :cond_0

    move v0, v7

    .line 1096
    :goto_0
    return v0

    .line 1065
    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 1076
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 1078
    if-nez v1, :cond_3

    .line 1079
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 1080
    const-string v0, "Compose >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 1068
    :cond_1
    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1069
    const-string v0, "Compose >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  NOT CHECKED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    goto :goto_1

    .line 1084
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 1087
    if-nez v0, :cond_4

    .line 1088
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 1089
    const-string v0, "Compose >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0

    .line 1093
    :cond_4
    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 1094
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 1095
    const-string v0, "Compose >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->priorityView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageCompose;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageCompose;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$MessageComposeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Lcom/android/email/activity/MessageCompose$MessageComposeHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object p1
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 588
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v1, i:Landroid/content/Intent;
    const-string v2, "account_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 594
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 608
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 611
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    .line 614
    :catch_0
    move-exception v0

    .line 617
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 662
    sput-object p0, Lcom/android/email/activity/MessageCompose;->mContext:Landroid/content/Context;

    .line 663
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mContext:Landroid/content/Context;

    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {v0, v1, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 664
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 639
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 640
    return-void
.end method

.method public static actionForward(Landroid/content/Context;JZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 651
    return-void

    .line 650
    :cond_0
    const-string v0, "com.android.email.intent.action.FORWARD"

    goto :goto_0
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 631
    return-void

    .line 630
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "address"

    .prologue
    .line 2449
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2450
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2456
    :goto_0
    return-void

    .line 2455
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V
    .locals 5
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 2430
    if-nez p2, :cond_1

    .line 2436
    :cond_0
    return-void

    .line 2433
    :cond_1
    move-object v1, p2

    .local v1, arr$:[Lcom/android/email/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 2434
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 2433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 2439
    if-nez p2, :cond_1

    .line 2445
    :cond_0
    return-void

    .line 2442
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2443
    .local v3, oneAddress:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 2442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAttachment(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v0, "android.intent.action.PICK"

    .line 3962
    if-eqz p2, :cond_0

    .line 3971
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3973
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3977
    packed-switch p1, :pswitch_data_0

    .line 4144
    :goto_0
    return-void

    .line 3982
    :pswitch_0
    const-string v0, "image/*"

    .line 3983
    const/16 v1, 0xa

    .line 3985
    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3989
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3990
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3992
    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3993
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4001
    :pswitch_2
    const-string v0, "video/*"

    .line 4002
    const/16 v1, 0xc

    .line 4004
    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 4013
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getVideoCaptureDurationLimit()I

    move-result v0

    .line 4014
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4015
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4016
    const-string v2, "android.intent.extra.sizeLimit"

    const/high16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4017
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4021
    const/16 v0, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4034
    :pswitch_4
    const-string v0, "/sdcard/Sounds"

    .line 4035
    const-string v1, "audio/*"

    .line 4036
    const/16 v2, 0xe

    .line 4037
    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 4043
    :pswitch_5
    const/16 v0, 0xf

    invoke-static {p0, v0, p2}, Lcom/android/email/activity/MessageCompose;->recordSound(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 4047
    :pswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V

    goto :goto_0

    .line 4053
    :pswitch_7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4054
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4055
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4057
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4065
    :pswitch_8
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4066
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4067
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4069
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 4077
    :pswitch_9
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4078
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4079
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 4081
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 3977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "attachment"

    .prologue
    .line 4285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 4287
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 4295
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v3, v0

    const-wide/32 v5, 0xa00000

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 4296
    const v3, 0x7f080069

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4435
    :goto_0
    return-void

    .line 4303
    :cond_0
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attachment.mSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move v3, v0

    int-to-long v3, v3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v5, v0

    add-long/2addr v3, v5

    const-wide/32 v5, 0xa00000

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 4309
    const v3, 0x7f080069

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4313
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move v3, v0

    int-to-long v3, v3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v5, v0

    add-long/2addr v3, v5

    long-to-int v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 4315
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 4316
    const v3, 0x7f0700ea

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4317
    const v4, 0x7f0700eb

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 4319
    if-eqz p2, :cond_2

    .line 4320
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4334
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 4336
    const-wide/16 v6, 0x0

    .line 4339
    const/4 v8, 0x0

    .line 4340
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 4343
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 4344
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 4346
    const/16 v9, 0xff

    :try_start_1
    new-array v9, v9, [B

    .line 4347
    :goto_1
    const/4 v12, -0x1

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 4349
    int-to-long v12, v13

    add-long/2addr v6, v12

    goto :goto_1

    .line 4351
    :cond_3
    move-wide v0, v6

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 4353
    const-string v9, "YohanTest"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total Elapsed time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v10, v12, v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4362
    move-wide v0, v6

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v9, v0

    long-to-float v7, v9

    invoke-static {v7}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4364
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 4375
    :goto_2
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4376
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 4377
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4420
    const v3, 0x7f0700e9

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 4422
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/MessageCompose;->getPreviewIcon(Lcom/android/email/provider/EmailContent$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4423
    if-eqz v3, :cond_6

    .line 4424
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4433
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    goto/16 :goto_0

    .line 4354
    :catch_0
    move-exception v9

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-wide v8, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    .line 4356
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4362
    move-wide v0, v8

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v8, v0

    long-to-float v8, v8

    invoke-static {v8}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4364
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 4357
    :catch_1
    move-exception v9

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-wide v8, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    .line 4359
    :goto_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4362
    move-wide v0, v8

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v8, v0

    long-to-float v8, v8

    invoke-static {v8}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4364
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 4362
    :catchall_0
    move-exception v4

    move-object v5, v8

    :goto_6
    move-wide v0, v6

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v7, v0

    long-to-float v7, v7

    invoke-static {v7}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4364
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .line 4368
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v7, v0

    long-to-float v7, v7

    invoke-static {v7}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4427
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->findExtensionIcon(Landroid/view/View;Lcom/android/email/provider/EmailContent$Attachment;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4428
    if-eqz v3, :cond_4

    .line 4429
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 4362
    :catchall_1
    move-exception v4

    move-object v5, v8

    goto :goto_6

    :catchall_2
    move-exception v4

    move-object v5, v7

    move-wide v6, v8

    goto/16 :goto_6

    .line 4357
    :catch_2
    move-exception v9

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-wide v8, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto/16 :goto_5

    .line 4354
    :catch_3
    move-exception v9

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-wide v8, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto/16 :goto_4
.end method

.method private arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6949
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6953
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6955
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    move v2, v7

    .line 6957
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 6959
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6961
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6957
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6967
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6969
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_2

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 6970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6974
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6975
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v4, v7, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6984
    :cond_3
    return-void
.end method

.method private arrangeAttachments()V
    .locals 8

    .prologue
    const v5, 0x7f0700eb

    const v4, 0x7f0700e8

    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 6990
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 6991
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6992
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6993
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6994
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6996
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 6997
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->setNextFocusUpId(I)V

    .line 6999
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7000
    const-wide/16 v1, 0x0

    move v7, v3

    move-wide v3, v1

    move v2, v7

    .line 7001
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 7002
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7003
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 7004
    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v3, v5

    .line 7001
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 7006
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachments ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-float v2, v3

    invoke-static {v2}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7029
    :goto_1
    return-void

    .line 7012
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7013
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7014
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7015
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7016
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7018
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 7019
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v5}, Landroid/webkit/HtmlComposerView;->setNextFocusUpId(I)V

    goto :goto_1

    .line 7022
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7023
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7024
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7026
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 7027
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusUpId(I)V

    goto :goto_1
.end method

.method private static cancelTask(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1248
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 1049
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x0

    .line 1056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private configureSmimeOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6437
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    .line 6438
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 6439
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6440
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v3, v0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 6441
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v3, v0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .line 6464
    :cond_0
    :goto_0
    return-void

    .line 6443
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setupSmimeOptions(Lcom/android/email/provider/EmailContent$Message;)V

    .line 6445
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_0

    .line 6447
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 6448
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6454
    :cond_3
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    .line 6455
    iget-boolean v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_0

    .line 6456
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 6148
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 12
    .parameter "textBody"
    .parameter "htmlBody"
    .parameter "messageId"

    .prologue
    .line 6157
    if-eqz p2, :cond_1

    const/4 v9, 0x1

    move v5, v9

    .line 6158
    .local v5, htmlTextFlag:Z
    :goto_0
    if-eqz v5, :cond_2

    move-object v8, p2

    .line 6159
    .local v8, text:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_5

    .line 6160
    if-eqz v5, :cond_3

    .line 6165
    :goto_2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6180
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v9, :cond_5

    .line 6181
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 6184
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 6187
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    if-eqz v2, :cond_4

    .line 6189
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v7, :cond_4

    aget-object v1, v0, v6

    .line 6191
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v9, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 6193
    const/4 v9, 0x1

    iget-object v10, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v9, v10, :cond_0

    .line 6195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6189
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6157
    .end local v0           #arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v2           #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v5           #htmlTextFlag:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #text:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    move v5, v9

    goto :goto_0

    .restart local v5       #htmlTextFlag:Z
    :cond_2
    move-object v8, p1

    .line 6158
    goto :goto_1

    .line 6160
    .restart local v8       #text:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 6202
    .restart local v2       #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v9, v10, v11}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v4

    .line 6206
    .local v4, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    move-object v3, v8

    .line 6208
    .local v3, finalQuotedText:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 6210
    new-instance v9, Lcom/android/email/activity/MessageCompose$20;

    invoke-direct {v9, p0, v3}, Lcom/android/email/activity/MessageCompose$20;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Long;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/MessageCompose;->mLoadOriginalTextTask:Landroid/os/AsyncTask;

    .line 6308
    .end local v2           #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v3           #finalQuotedText:Ljava/lang/String;
    .end local v4           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_5
    :goto_4
    return-void

    .line 6259
    .restart local v2       #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v3       #finalQuotedText:Ljava/lang/String;
    .restart local v4       #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_6
    new-instance v9, Lcom/android/email/activity/MessageCompose$21;

    invoke-direct {v9, p0, v3}, Lcom/android/email/activity/MessageCompose$21;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Long;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/MessageCompose;->mLoadOriginalTextTask:Landroid/os/AsyncTask;

    goto :goto_4
.end method

.method private findExtensionIcon(Landroid/view/View;Lcom/android/email/provider/EmailContent$Attachment;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    const-string v5, "Compose >>"

    const-string v4, ".tif"

    .line 4438
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4439
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 4441
    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4442
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4519
    :goto_0
    return-object v0

    .line 4444
    :cond_0
    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".pptx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4446
    :cond_1
    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4448
    :cond_2
    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4449
    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4451
    :cond_3
    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4453
    :cond_4
    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4455
    :cond_5
    const-string v2, ".eml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4456
    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4458
    :cond_6
    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ".xlsx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4460
    :cond_7
    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4462
    :cond_8
    const-string v2, ".gul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4463
    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4465
    :cond_9
    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4467
    :cond_a
    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4469
    :cond_b
    const-string v2, ".hwp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4470
    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4472
    :cond_c
    const-string v2, ".rtf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4473
    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4475
    :cond_d
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pxr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".sct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4489
    :cond_e
    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4491
    :cond_f
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".arj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".alz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tbz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tgz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".lzh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4501
    :cond_10
    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4504
    :cond_11
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_13

    .line 4505
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4507
    const-string v2, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment.mMimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    const-string v2, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4511
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4513
    :cond_12
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4514
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 4519
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;
    .locals 2
    .parameter "view"

    .prologue
    .line 2464
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 2465
    .local v0, addresses:[Lcom/android/email/mail/Address;
    return-object v0
.end method

.method private getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 17

    .prologue
    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 2670
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    const/4 v1, 0x0

    .line 2676
    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2678
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/EmailContent$Attachment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2681
    :try_start_1
    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2682
    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    const-string v5, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2684
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2685
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 2676
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    goto :goto_0

    .line 2692
    :catch_0
    move-exception v4

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    .line 2693
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    move-object v1, v4

    .line 2697
    :cond_0
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2703
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2704
    const-wide/16 v1, 0x0

    .line 2705
    const/4 v3, 0x0

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v4

    .line 2709
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v3

    move-wide v11, v1

    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/webkit/WebSubPart;

    move-object v7, v0

    .line 2710
    if-eqz v7, :cond_2

    .line 2713
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v1

    .line 2714
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2716
    const-string v1, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2718
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2719
    sget-object v3, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2721
    if-eqz v3, :cond_f

    .line 2723
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2724
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2725
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    .line 2726
    const-string v10, "Compose >>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentUri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2729
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    move-wide v13, v5

    move-wide v4, v13

    .line 2733
    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2741
    :goto_6
    if-nez v3, :cond_10

    .line 2742
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2744
    :goto_7
    if-nez v1, :cond_3

    .line 2745
    const-string v1, ""

    .line 2748
    :cond_3
    new-instance v3, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 2749
    iput-object v2, v3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2750
    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2751
    iput-wide v4, v3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2752
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2753
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v1

    const-string v6, "cid:"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2754
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v2

    move-wide v11, v4

    .line 2755
    goto/16 :goto_3

    .line 2729
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2736
    :cond_4
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v3

    .line 2737
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 2738
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    move-object v14, v1

    move-object v1, v13

    move-wide v15, v3

    move-wide v4, v15

    move-object v3, v14

    goto :goto_6

    .line 2760
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2763
    const-wide/16 v1, 0x0

    .line 2764
    const/4 v3, 0x0

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v4

    .line 2776
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v3

    move-wide v11, v1

    :cond_6
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/webkit/WebSubPart;

    move-object v7, v0

    .line 2777
    if-eqz v7, :cond_6

    .line 2780
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v1

    .line 2781
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2783
    const-string v1, "content"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2786
    sget-object v3, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2788
    if-eqz v3, :cond_c

    .line 2790
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2791
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2792
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    .line 2793
    const-string v10, "Compose >>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentUri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2796
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    move-wide v13, v5

    move-wide v4, v13

    .line 2799
    :goto_a
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2807
    :goto_b
    if-nez v3, :cond_d

    .line 2808
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 2810
    :goto_c
    if-nez v1, :cond_7

    .line 2811
    const-string v1, ""

    .line 2814
    :cond_7
    new-instance v3, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 2815
    iput-object v2, v3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2816
    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2817
    iput-wide v4, v3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2818
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2819
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v1

    const-string v6, "cid:"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2821
    if-eqz v3, :cond_8

    iget-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v1, v6, :cond_8

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 2828
    :cond_8
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v2

    move-wide v11, v4

    .line 2829
    goto/16 :goto_8

    .line 2796
    :catchall_1
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2802
    :cond_9
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v3

    .line 2803
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 2804
    invoke-virtual {v7}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    move-object v14, v1

    move-object v1, v13

    move-wide v15, v3

    move-wide v4, v15

    move-object v3, v14

    goto/16 :goto_b

    .line 2833
    :cond_a
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/email/provider/EmailContent$Attachment;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/email/provider/EmailContent$Attachment;

    return-object p0

    .line 2692
    :catch_1
    move-exception v1

    goto/16 :goto_2

    :cond_b
    move-object v4, v10

    move-wide v5, v11

    goto/16 :goto_9

    :cond_c
    move-object v3, v10

    move-wide v4, v11

    goto/16 :goto_a

    :cond_d
    move-object v2, v3

    goto/16 :goto_c

    :cond_e
    move-object v4, v10

    move-wide v5, v11

    goto/16 :goto_4

    :cond_f
    move-object v3, v10

    move-wide v4, v11

    goto/16 :goto_5

    :cond_10
    move-object v2, v3

    goto/16 :goto_7
.end method

.method public static getAvailableStorage()J
    .locals 7

    .prologue
    .line 4164
    const-string v0, "/data"

    .line 4165
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4166
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Storage Size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v0, "Query on "

    const-string v7, "Email"

    .line 3893
    .line 3897
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3899
    if-eqz v2, :cond_6

    .line 3901
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath: path= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3904
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is file"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3906
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3947
    :goto_0
    if-eqz v0, :cond_0

    .line 3948
    :try_start_1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath file path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3955
    :cond_0
    :goto_1
    return-object v0

    .line 3908
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3910
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is content"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3915
    if-nez v0, :cond_2

    .line 3918
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v8

    .line 3919
    goto :goto_1

    .line 3923
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3926
    :cond_3
    const-string v1, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns 0 or multiple rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3934
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v8

    goto :goto_1

    .line 3931
    :cond_4
    :try_start_5
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 3934
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v1

    .line 3936
    goto/16 :goto_0

    .line 3934
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3950
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 3951
    :goto_2
    const-string v2, "Email"

    const-string v2, "NullPointerException in getFilePath()"

    invoke-static {v7, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    .line 3939
    :cond_5
    :try_start_8
    const-string v0, "Email"

    const-string v1, "getFilePath URI path is not normal scheme"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 3944
    :cond_6
    const-string v0, "Email"

    const-string v1, "getFilePath: Uri is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v8

    goto/16 :goto_0

    .line 3950
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v0, "Query on "

    const-string v8, "Email"

    .line 3844
    .line 3847
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3849
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3879
    :goto_0
    if-eqz v0, :cond_0

    .line 3880
    :try_start_1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath file path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3887
    :cond_0
    :goto_1
    return-object v0

    .line 3851
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3853
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3856
    if-nez v0, :cond_2

    .line 3857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3882
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 3883
    :goto_2
    const-string v2, "Email"

    const-string v2, "NullPointerException in getFilePath()"

    invoke-static {v8, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 3862
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3863
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns 0 or multiple rows."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3871
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3868
    :cond_4
    :try_start_5
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 3871
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v1

    .line 3873
    goto/16 :goto_0

    .line 3876
    :cond_5
    :try_start_7
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath URI path is not file scheme - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v0, v7

    goto/16 :goto_0

    .line 3882
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2
.end method

.method private getOrCreateDraftId()J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2844
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    monitor-enter v1

    .line 2845
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2846
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    .line 2861
    :goto_0
    return-wide v1

    .line 2849
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2851
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v2, :cond_2

    .line 2852
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2855
    :cond_2
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v2, :cond_4

    .line 2856
    :cond_3
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 2858
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 2859
    .local v0, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    array-length v4, v0

    if-lez v4, :cond_5

    move v4, v7

    :goto_1
    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 2860
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V

    .line 2861
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    :cond_5
    move v4, v6

    .line 2859
    goto :goto_1

    .line 2862
    .end local v0           #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    .line 2459
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 2460
    .local v0, addresses:[Lcom/android/email/mail/Address;
    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPreviewIcon(Lcom/android/email/provider/EmailContent$Attachment;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "Compose >>"

    .line 4523
    .line 4530
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4532
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4533
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4535
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4536
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4539
    :goto_0
    if-nez v1, :cond_0

    .line 4540
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 4542
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4544
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 4560
    :goto_1
    return-object v0

    .line 4547
    :catch_0
    move-exception v0

    .line 4551
    const-string v1, "Compose >>"

    const-string v1, "Exception >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v4, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 4558
    goto :goto_1

    .line 4554
    :catch_1
    move-exception v0

    .line 4555
    const-string v1, "Compose >>"

    const-string v1, "Thumnail Out of Memory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v4, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v3

    .line 4557
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method private getUpdateContentValues(Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 2494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2495
    const-string v1, "accountKey"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2497
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2498
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2508
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2510
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2511
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2514
    const-string v1, "importance"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2517
    const-string v1, "conversationId"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    const-string v1, "smimeFlags"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2521
    return-object v0
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 3839
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v6, ""

    .line 1341
    const v0, 0x7f0700bf

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/ExtendedScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    .line 1342
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitleView:Landroid/widget/LinearLayout;

    .line 1343
    const v0, 0x7f0700be

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitle:Landroid/widget/TextView;

    .line 1345
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 1346
    const v0, 0x7f0700db

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 1348
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_0

    .line 1349
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1350
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1354
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1357
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1358
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1372
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 1376
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    .line 1377
    const v0, 0x7f0700c0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    .line 1378
    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    .line 1381
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1384
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/LinearLayout;

    .line 1385
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    .line 1386
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    .line 1387
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    .line 1388
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    .line 1390
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1391
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1392
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1393
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1394
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 1397
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->priorityView:Landroid/widget/ImageView;

    .line 1398
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->signView:Landroid/widget/ImageView;

    .line 1399
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->encryptedView:Landroid/widget/ImageView;

    .line 1401
    const v0, 0x7f0700d5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 1403
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 1426
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    .line 1428
    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 1429
    const v0, 0x7f0700d7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 1430
    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    .line 1432
    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 1433
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1435
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    .line 1437
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    .line 1440
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    .line 1441
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    .line 1442
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    .line 1444
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1446
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 1458
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1462
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusUpId(I)V

    .line 1466
    const v0, 0x7f0700d6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    .line 1467
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1470
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    .line 1471
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1472
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 1475
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1524
    new-instance v0, Lcom/android/email/activity/MessageCompose$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1570
    new-array v1, v7, [Landroid/text/InputFilter;

    aput-object v0, v1, v4

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x2710

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v1, v5

    .line 1581
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1582
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1583
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1589
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    if-ne v0, v5, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusDownId(I)V

    .line 1595
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setNextFocusUpId(I)V

    .line 1597
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 1600
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1602
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 1603
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 1605
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 1607
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1608
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1609
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1611
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1612
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1613
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1615
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1616
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1617
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1620
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1621
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1622
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1623
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1626
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1627
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1628
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1629
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1635
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1676
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1679
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1682
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1706
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1721
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 1722
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 1723
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 1725
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 1726
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 1728
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const/16 v1, 0x122

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWidthForCopiedImage(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/16 v1, 0x122

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWidthForCopiedImage(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1732
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1733
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1735
    new-instance v0, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1762
    new-instance v1, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1790
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1791
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1792
    return-void

    .line 1360
    :cond_0
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1361
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1364
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1365
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1368
    const v0, 0x7f0700e3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1369
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    goto/16 :goto_0

    .line 1594
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusDownId(I)V

    goto/16 :goto_1
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 6107
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6108
    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6112
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 6113
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6117
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6125
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6127
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6128
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 6130
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6131
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 6133
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6134
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 6136
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6138
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6141
    :cond_0
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 6143
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 6145
    :cond_1
    return-void

    .line 6115
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 6118
    :catch_0
    move-exception v0

    .line 6119
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while decoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6143
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private isNotFieldsAllEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3201
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 3227
    :goto_0
    return v0

    .line 3204
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3205
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3206
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v0, v5

    .line 3207
    goto :goto_0

    .line 3204
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3211
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3212
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 3213
    :goto_2
    if-nez v1, :cond_7

    .line 3217
    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 3212
    goto :goto_2

    .line 3219
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0

    .line 3223
    :catch_0
    move-exception v0

    .line 3224
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v4

    .line 3227
    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v9, "Compose >>"

    const-string v8, " : "

    .line 4227
    const-wide/16 v6, 0x0

    .line 4232
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4234
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 4235
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4236
    if-eqz v1, :cond_5

    .line 4237
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4238
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 4239
    invoke-static {v0}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4241
    const-string v5, "Compose >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4263
    :goto_0
    if-nez v2, :cond_0

    .line 4264
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 4266
    :cond_0
    if-nez v1, :cond_1

    .line 4267
    const-string v1, ""

    .line 4270
    :cond_1
    new-instance v5, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v5}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 4271
    iput-object v2, v5, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 4272
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 4273
    iput-wide v3, v5, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 4274
    iput-object v1, v5, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 4275
    iput-object v0, v5, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 4276
    return-object v5

    .line 4245
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4246
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4248
    if-eqz v1, :cond_4

    .line 4250
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4251
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4252
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 4253
    const-string v6, "Compose >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4256
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    .line 4260
    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    move-wide v10, v4

    move-wide v3, v10

    goto :goto_0

    .line 4256
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move-object v2, v3

    move-wide v4, v6

    goto :goto_1

    :cond_4
    move-object v1, v3

    move-wide v4, v6

    goto :goto_2

    :cond_5
    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    move-wide v3, v6

    goto :goto_0
.end method

.method private loadAttachments(Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "Compose >>"

    .line 5799
    const-string v0, "Compose >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5801
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 5804
    if-nez v0, :cond_0

    move v0, v7

    .line 5860
    :goto_0
    return v0

    .line 5812
    :cond_0
    const-string v1, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachments(): attachments.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5813
    array-length v1, v0

    move v2, v7

    move v3, v7

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    .line 5815
    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 5816
    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v6, "@namo.co.kr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v8, v5, :cond_1

    iget-object v5, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 5813
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5822
    :cond_2
    iget v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    .line 5823
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto :goto_2

    :cond_3
    move v3, v8

    .line 5827
    goto :goto_2

    .line 5850
    :cond_4
    if-eqz v3, :cond_5

    move v0, v7

    .line 5851
    goto :goto_0

    :cond_5
    move v0, v8

    .line 5860
    goto :goto_0
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2474
    const/4 v0, 0x0

    .line 2476
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v7

    aput-object p2, v1, v8

    aput-object p3, v1, v9

    array-length v2, v1

    move v3, v7

    move-object v4, v0

    move v0, v7

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 2477
    invoke-static {v5}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v5

    .line 2478
    array-length v6, v5

    add-int/2addr v3, v6

    .line 2479
    if-nez v4, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 2480
    aget-object v4, v5, v7

    .line 2476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2483
    :cond_1
    if-nez v3, :cond_3

    .line 2484
    const-string v0, ""

    .line 2490
    :cond_2
    :goto_1
    return-object v0

    .line 2486
    :cond_3
    invoke-virtual {v4}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v0

    .line 2487
    if-eq v3, v8, :cond_2

    .line 2490
    const v1, 0x7f08006a

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v7

    sub-int v0, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private onAddAttachmentFromMyfiles()V
    .locals 3

    .prologue
    .line 4213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4214
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.MultiSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4215
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4217
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4218
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    const/high16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4219
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4220
    return-void
.end method

.method private onAddCcBcc()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3603
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3604
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3607
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3608
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 3614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 3618
    return-void
.end method

.method private onAddText()V
    .locals 3

    .prologue
    .line 3650
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3651
    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3653
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 3654
    new-instance v1, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    .line 3656
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3663
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3664
    return-void
.end method

.method private onAddTextActivity(I)V
    .locals 4
    .parameter

    .prologue
    const-string v0, "android.intent.action.PICK"

    .line 3710
    packed-switch p1, :pswitch_data_0

    .line 3759
    :goto_0
    :pswitch_0
    return-void

    .line 3712
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3713
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3714
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3755
    :catch_0
    move-exception v0

    .line 3756
    const-string v1, "Compose >>"

    const-string v2, "ActivityNotFoundException in onAddTextActivity"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3725
    :pswitch_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3726
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3727
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3733
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3734
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3736
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3737
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onAdjustFieldHeight(Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 2419
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2420
    const v0, 0x30021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 2421
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2426
    :goto_0
    return-void

    .line 2423
    :cond_0
    const v0, 0x10021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 2424
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5478
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5479
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 5480
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 5481
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment del : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5485
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5486
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/resizeFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 5487
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5488
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 5493
    :cond_0
    iget v2, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5494
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 5496
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 5499
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5500
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 5503
    :cond_3
    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5507
    new-instance v0, Lcom/android/email/activity/MessageCompose$18;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$18;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v2, v6, [Ljava/lang/Long;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$18;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5515
    :cond_4
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 5517
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    const/high16 v1, 0xa0

    if-ge v0, v1, :cond_5

    .line 5519
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, v6}, Lcom/android/email/EmailTwSoftkeyItem;->setClickable(Z)V

    .line 5520
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, v6}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 5524
    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    .line 5526
    return-void
.end method

.method private onDiscard()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "Compose >>"

    .line 3540
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3543
    :try_start_1
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3544
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3552
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3553
    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3555
    iget-object v4, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3558
    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3559
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_resized"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 3561
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3553
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3546
    :catch_0
    move-exception v0

    .line 3547
    const-string v0, "Compose >>"

    const-string v1, "ClassCastException : "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3574
    :catch_1
    move-exception v0

    .line 3575
    const-string v1, "Compose >>"

    const-string v1, "Exception"

    invoke-static {v6, v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3578
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 3579
    return-void

    .line 3568
    :cond_2
    const v0, 0x7f08007d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 3572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private onDiscardPopup()V
    .locals 3

    .prologue
    .line 3516
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3518
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3519
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3520
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3521
    const v1, 0x7f080113

    new-instance v2, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3529
    const v1, 0x7f080114

    new-instance v2, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3535
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3536
    return-void
.end method

.method private onGalSearch()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 3494
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 3495
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/email/activity/GalSearchLookUp;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3496
    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 3497
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3498
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 3499
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 3501
    :cond_0
    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 3502
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 3503
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 3512
    :goto_0
    return-void

    .line 3506
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 3507
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 3510
    :cond_2
    const-string v3, "GalAccountID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3511
    const/16 v0, 0x64

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onGroup()V
    .locals 3

    .prologue
    .line 5205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5206
    const-string v1, "additional"

    const-string v2, "group-email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5207
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5208
    return-void
.end method

.method private onHideCcBcc()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3622
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3626
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3627
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3629
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3631
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 3634
    :cond_0
    return-void
.end method

.method private onPhonebook()V
    .locals 3

    .prologue
    .line 5195
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5196
    const-string v1, "additional"

    const-string v2, "email-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5197
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5203
    :goto_0
    return-void

    .line 5200
    :catch_0
    move-exception v0

    .line 5201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    goto :goto_0
.end method

.method private onPriority()V
    .locals 4

    .prologue
    .line 3670
    .line 3671
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0801c3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0801c5

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0801c4

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3673
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3674
    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3675
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    new-instance v3, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3704
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3705
    return-void
.end method

.method private onRecent()V
    .locals 2

    .prologue
    .line 5187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/RecentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5188
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5189
    return-void
.end method

.method private onSave()V
    .locals 1

    .prologue
    .line 3590
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3594
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 3595
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3598
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 3599
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 3600
    return-void
.end method

.method private onSend()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3248
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_2

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3250
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3253
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    .line 3302
    :goto_0
    return-void

    .line 3256
    :cond_1
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    .line 3257
    iget-boolean v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_2

    .line 3258
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3261
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    goto :goto_0

    .line 3265
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3267
    const v0, 0x7f080067

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showRecipientErrorDialog(I)V

    goto :goto_0

    .line 3268
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    .line 3271
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v1, 0x7f080066

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 3273
    const v0, 0x7f0801b1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showRecipientErrorDialog(I)V

    goto :goto_0

    .line 3275
    :cond_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    .line 3278
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3280
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onSend() >>>>> 2046"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3281
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3283
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 3285
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 3295
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 3296
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3297
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 3298
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 3299
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_0
.end method

.method private onShowSecurityPolicyDialog()V
    .locals 4

    .prologue
    .line 5531
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onShowSecurityPolicyDialog() >>>>> 3451"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5534
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5535
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5538
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5541
    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5544
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5547
    new-instance v2, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f03

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 5550
    new-instance v0, Lcom/android/email/activity/MessageCompose$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$19;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5569
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5570
    return-void
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3792
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3793
    if-eqz v0, :cond_0

    .line 3794
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3795
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3796
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3797
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3799
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3801
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 3782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3783
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 3784
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3785
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3787
    :cond_0
    return-void
.end method

.method public static recordSound(Landroid/content/Context;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3805
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3809
    const-string v1, "com.sec.android.app.voicerecorder"

    const-string v2, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3810
    const-string v1, "location"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3811
    const/high16 v1, 0xa0

    .line 3832
    const-string v2, "remain_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3834
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3836
    :cond_0
    return-void
.end method

.method private safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6317
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const/4 v0, 0x0

    .line 6318
    .local v0, added:Z
    invoke-static {p1}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v2

    .local v2, arr$:[Lcom/android/email/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 6320
    .local v1, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6321
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6322
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 6323
    const/4 v0, 0x1

    .line 6318
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6326
    .end local v1           #address:Lcom/android/email/mail/Address;
    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3175
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_0

    .line 3180
    :goto_0
    return-void

    .line 3178
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3179
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private sendOrSaveMessage(Z)V
    .locals 10
    .parameter "send"

    .prologue
    const/4 v9, 0x0

    .line 2873
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 2874
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v5, :cond_0

    .line 3024
    :goto_0
    return-void

    .line 2881
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 2883
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 2884
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 2883
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2887
    .end local v0           #arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    array-length v7, v2

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-direct {p0, v5, v6, v7, p1}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 2889
    new-instance v5, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;Z[Lcom/android/email/provider/EmailContent$Attachment;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSaveMessageTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v7, v9

    .line 2887
    goto :goto_2
.end method

.method private setAccount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 692
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 693
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 694
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 696
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 699
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 717
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 719
    :goto_1
    return v2

    .line 702
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 703
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_1

    .line 704
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 705
    cmp-long v2, v0, v3

    if-nez v2, :cond_3

    .line 708
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 712
    :cond_3
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0

    .line 719
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "data"

    .prologue
    const-string v4, ", "

    .line 1180
    if-eqz p2, :cond_1

    .line 1182
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v1, seq:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1184
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    :cond_0
    const-string v2, "GALResults"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, galResulAddress:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 1194
    .end local v0           #galResulAddress:Ljava/lang/String;
    .end local v1           #seq:Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method private setDraftNeedsSaving(Z)V
    .locals 0
    .parameter "needsSaving"

    .prologue
    .line 1336
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1339
    return-void
.end method

.method private setFromAccount()Z
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2054
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2059
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2062
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2064
    :cond_0
    const-string v2, "emailAddress"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2065
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 2070
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eq v2, v7, :cond_2

    .line 2072
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2076
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 2080
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_4

    move v3, v8

    move v4, v8

    .line 2082
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 2083
    new-instance v5, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v2, v3

    .line 2084
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    .line 2082
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    .line 2070
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eq v2, v7, :cond_3

    .line 2072
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    move v0, v8

    .line 2118
    :goto_2
    return v0

    .line 2093
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 2095
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2098
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v3, 0x7f0700c3

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2109
    :cond_6
    :goto_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03004b

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 2111
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f03004a

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2112
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2114
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 2116
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v0, v7

    .line 2118
    goto :goto_2

    .line 2100
    :cond_7
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    .line 2102
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 2103
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v3, 0x7f0700c2

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    goto :goto_3

    :cond_8
    move v0, v4

    goto :goto_1
.end method

.method private setNewMessageFocus()V
    .locals 1

    .prologue
    .line 6751
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 6752
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 6772
    :goto_0
    return-void

    .line 6753
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 6754
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 6756
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 1

    .prologue
    .line 1860
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 1861
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 1862
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 1871
    return-void
.end method

.method private setupSmimeOptions(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 6430
    return-void
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4176
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->getAvailableStorage()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 4177
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4178
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4201
    :goto_0
    return-void

    .line 4182
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4183
    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4184
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4187
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_1

    .line 4188
    new-instance v1, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 4192
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageCompose$17;

    invoke-direct {v2, p0, p1}, Lcom/android/email/activity/MessageCompose$17;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showRecipientErrorDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 3232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3234
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3235
    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3236
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3237
    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3244
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3245
    return-void
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-static {p0, p2, p3}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 669
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    const-string v2, "message_id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 671
    const-string v2, "message_signed"

    iget-boolean v3, v0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    const-string v2, "message_encrypted"

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v0, "content://logs/email"

    const-string v0, "@"

    .line 3070
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3073
    :try_start_0
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MsgCompose:LogProvider >>>time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | contactid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | messageid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | m_subject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3080
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3081
    const-string v1, "contactid"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3082
    const-string v1, "messageid"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3083
    const-string v1, "m_subject"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 3086
    const-string v1, "m_content"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x31

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    :goto_0
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3129
    array-length v2, v1

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 3132
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3133
    array-length v5, v4

    if-lez v5, :cond_0

    .line 3134
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3135
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3129
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3088
    :cond_1
    const-string v1, "m_content"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3167
    :catch_0
    move-exception v1

    .line 3170
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3171
    return-void

    .line 3142
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3144
    array-length v2, v1

    move v3, v7

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 3145
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3146
    array-length v5, v4

    if-lez v5, :cond_4

    .line 3147
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3148
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3144
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3154
    :cond_5
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3156
    array-length v2, v1

    move v3, v7

    :goto_3
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3157
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3158
    array-length v5, v4

    if-lez v5, :cond_6

    .line 3159
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3160
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3156
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2530
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2531
    :cond_0
    invoke-static {}, Lcom/android/email/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 2533
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 2534
    new-instance v0, Lcom/android/email/mail/Address;

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/mail/Address;->pack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 2536
    if-eqz p4, :cond_a

    .line 2537
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 2538
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 2539
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 2549
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 2568
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v0, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 2570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** importance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2575
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 2576
    if-nez v0, :cond_b

    .line 2577
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2578
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 2587
    :goto_1
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v2, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 2588
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)Z

    .line 2589
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 2590
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 2595
    :goto_2
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 2596
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 2598
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2601
    const/4 v0, 0x0

    iput-byte v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 2603
    iput-boolean p3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 2607
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 2609
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 2610
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .line 2613
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2614
    iget v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 2616
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 2617
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2620
    :cond_3
    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2621
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    .line 2632
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 2635
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2637
    :cond_6
    iget v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 2638
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 2639
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2640
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2641
    const v4, 0x7f080063

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    if-eqz v2, :cond_e

    move-object v1, v2

    :goto_4
    aput-object v1, v5, v0

    const/4 v0, 0x3

    if-eqz v3, :cond_f

    move-object v1, v3

    :goto_5
    aput-object v1, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 2650
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 2654
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTempSubject:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTempSubject:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2655
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 2656
    :cond_9
    return-void

    .line 2542
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 2543
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 2544
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    goto/16 :goto_0

    .line 2581
    :cond_b
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->plainText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2582
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto/16 :goto_1

    .line 2592
    :cond_c
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    goto/16 :goto_2

    .line 2624
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_3

    .line 2641
    :cond_e
    const-string v1, ""

    goto :goto_4

    :cond_f
    const-string v1, ""

    goto :goto_5

    .line 2644
    :cond_10
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2645
    :cond_11
    iget v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 2646
    const v1, 0x7f080064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto/16 :goto_6
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    const v1, 0x7f08000e

    .line 2123
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2126
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->setTitle(I)V

    .line 2127
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2134
    :goto_0
    return-void

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setTitle(Ljava/lang/CharSequence;)V

    .line 2132
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public IsOriginMsgEdited()Z
    .locals 1

    .prologue
    .line 7063
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Compose >>"

    const-string v4, "android.intent.extra.STREAM"

    .line 5960
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5961
    if-eqz v0, :cond_0

    .line 5962
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 5964
    :cond_0
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5965
    if-eqz v0, :cond_1

    .line 5966
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 5968
    :cond_1
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5969
    if-eqz v0, :cond_2

    .line 5970
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 5972
    :cond_2
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5973
    if-eqz v0, :cond_3

    .line 5974
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5982
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5983
    if-eqz v0, :cond_4

    .line 5984
    const-string v1, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5985
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 5996
    :cond_4
    :goto_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5997
    if-eqz v0, :cond_5

    .line 6000
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 6002
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 6008
    :cond_5
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6009
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 6010
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6011
    const-string v2, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6012
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 6031
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 6036
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 6042
    :cond_6
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6044
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6045
    if-eqz v0, :cond_7

    .line 6049
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6050
    check-cast v0, Landroid/net/Uri;

    .line 6051
    if-eqz v0, :cond_c

    .line 6052
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 6059
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 6061
    int-to-long v2, v2

    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 6063
    const/high16 v2, 0xa0

    if-le v0, v2, :cond_b

    .line 6087
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 6088
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 6090
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 6091
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 6093
    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 6095
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 6096
    return-void

    .line 5987
    :cond_a
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 5988
    if-eqz v0, :cond_4

    .line 5989
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6068
    :cond_b
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move v2, v0

    .line 6072
    goto :goto_1

    .line 6074
    :catch_0
    move-exception v0

    .line 6075
    const-string v1, "Compose >>"

    const-string v1, "Thumnail preview on multiple images Out of Memory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v7, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6076
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6079
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 6080
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_2

    :cond_c
    move v0, v2

    goto :goto_3
.end method

.method isAddressAllValid()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3186
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3187
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3188
    invoke-static {v4}, Lcom/android/email/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3189
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 3193
    :goto_1
    return v0

    .line 3186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    .line 3193
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const-string v6, "Email"

    .line 4642
    const/4 v1, 0x0

    .line 4644
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4646
    if-nez p3, :cond_1

    .line 5183
    :cond_0
    :goto_0
    return-void

    .line 4650
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 5138
    :cond_2
    :goto_1
    if-ne p2, v8, :cond_0

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 5178
    :cond_3
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 5181
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    goto :goto_0

    .line 4658
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 4659
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4660
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4661
    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4663
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4665
    const-string v3, "vcard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4667
    const-string v1, "content://com.android.contacts/contacts/as_vcard/"

    .line 4668
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4669
    const-string v2, "%3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4670
    array-length v2, v0

    move v3, v9

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4672
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4670
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4674
    :catch_0
    move-exception v4

    .line 4675
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 4679
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 4689
    :sswitch_1
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4690
    if-eqz v1, :cond_0

    .line 4696
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v9

    .line 4698
    :goto_4
    if-ge v3, v2, :cond_2

    .line 4699
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4700
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4701
    if-nez v0, :cond_5

    .line 4702
    const-string v0, "Email"

    const-string v0, "REQUEST_ATTACHMENT file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4705
    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4706
    if-eqz v4, :cond_6

    .line 4707
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 4698
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 4716
    :sswitch_2
    if-le v0, v8, :cond_2

    .line 4717
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 4718
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 4729
    :goto_5
    const-string v1, "recents"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 4731
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 4720
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 4721
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    goto :goto_5

    .line 4723
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 4724
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    goto :goto_5

    .line 4727
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    goto :goto_5

    .line 4738
    :sswitch_3
    if-le v0, v8, :cond_2

    .line 4739
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 4740
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    .line 4752
    :goto_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4753
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4760
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4762
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: an iterator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4764
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4765
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4766
    const-string v4, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->queryContactInfoById(J)Ljava/lang/String;

    move-result-object v3

    .line 4769
    const-string v4, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4773
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ">,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 4742
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 4743
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    goto/16 :goto_6

    .line 4745
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 4746
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    goto/16 :goto_6

    .line 4749
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    goto/16 :goto_6

    .line 4777
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 4786
    :sswitch_4
    if-le v0, v8, :cond_2

    .line 4787
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 4788
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 4789
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 4791
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 4792
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 4793
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 4795
    :cond_f
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4796
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 4797
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 4804
    :sswitch_5
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4805
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4809
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4811
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_10

    .line 4812
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4813
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4814
    :cond_10
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_11

    .line 4815
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4816
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4820
    :cond_11
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4821
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4827
    :sswitch_6
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4828
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4832
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4834
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_12

    .line 4835
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4836
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4837
    :cond_12
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_13

    .line 4838
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4839
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4843
    :cond_13
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4844
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4851
    :sswitch_7
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4852
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4856
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4858
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_14

    .line 4859
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4860
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4861
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v7, v1, :cond_15

    .line 4862
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4863
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4867
    :cond_15
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 4868
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 4875
    :sswitch_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4878
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 4879
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4880
    if-eqz v2, :cond_17

    .line 4881
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4882
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4883
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4884
    const/16 v1, 0x1e0

    .line 4885
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4886
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4887
    const/16 v4, 0xb4

    sub-int/2addr v1, v4

    .line 4888
    mul-int/lit16 v4, v2, 0x12c

    div-int/2addr v4, v3

    .line 4889
    if-le v1, v3, :cond_27

    move v1, v2

    move v2, v3

    .line 4894
    :goto_8
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v7, v3, :cond_16

    .line 4897
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 4902
    :cond_16
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 4905
    :cond_17
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_INSERT_IMAGE file not exist = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4914
    :sswitch_9
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4924
    array-length v1, v0

    move v2, v9

    :goto_9
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4925
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4926
    if-eqz v4, :cond_18

    .line 4929
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 4924
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4937
    :sswitch_a
    const-string v0, "Email"

    const-string v0, "onActivityResult: requestCode = REQUEST_CODE_ATTACH_IMAGE"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4940
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 4942
    if-nez v0, :cond_19

    .line 4944
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_IMAGE file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4948
    :cond_19
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_ATTACH_IMAGE file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4950
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4951
    if-eqz v1, :cond_1a

    .line 4952
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 4956
    :cond_1a
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4974
    :sswitch_b
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4975
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4977
    if-eqz v0, :cond_1e

    .line 4979
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4980
    if-eqz v0, :cond_1d

    .line 4982
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4983
    if-eqz v1, :cond_1c

    .line 4984
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 4985
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 4986
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4988
    :cond_1b
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 4989
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 4993
    :cond_1c
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_TAKE_PICTURE file = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4999
    :cond_1d
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5005
    :cond_1e
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5014
    :sswitch_c
    const-string v0, "Email"

    const-string v0, "onActivityResult: requestCode = REQUEST_CODE_ATTACH_VIDEO"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 5019
    if-nez v0, :cond_1f

    .line 5021
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_VIDEO file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5025
    :cond_1f
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_ATTACH_VIDEO file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5027
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5028
    if-eqz v1, :cond_21

    .line 5029
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 5030
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 5031
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5033
    :cond_20
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 5034
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 5038
    :cond_21
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_VIDEO file = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5046
    :sswitch_d
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5047
    if-eqz v0, :cond_24

    .line 5049
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5050
    if-eqz v0, :cond_23

    .line 5052
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5053
    if-eqz v1, :cond_22

    .line 5054
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 5058
    :cond_22
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_SOUND file = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5064
    :cond_23
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5070
    :cond_24
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5077
    :sswitch_e
    const-string v0, "Email"

    const-string v0, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5080
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 5082
    if-nez v0, :cond_25

    .line 5084
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_RECORD_SOUND file path = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5088
    :cond_25
    const-string v1, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_RECORD_SOUND file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5091
    if-eqz v1, :cond_26

    .line 5092
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 5096
    :cond_26
    const-string v0, "Email"

    const-string v0, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    move v2, v1

    move v1, v4

    goto/16 :goto_8

    .line 4650
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x11 -> :sswitch_8
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x20 -> :sswitch_7
        0x64 -> :sswitch_4
        0x3e9 -> :sswitch_9
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1198
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1200
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1203
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    if-eqz v0, :cond_3

    .line 1204
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1207
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v0, v1, :cond_4

    .line 1208
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscardPopup()V

    .line 1215
    :goto_0
    return-void

    .line 1212
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const v2, 0x7f0700dd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5407
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5287
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 5291
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 5295
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 5299
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 5303
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 5308
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    if-nez v0, :cond_0

    .line 5309
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    .line 5310
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    .line 5325
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 5332
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onBackPressed()V

    goto :goto_0

    .line 5337
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    .line 5341
    :pswitch_a
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 5343
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    if-ne v0, v4, :cond_2

    .line 5344
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusDownId(I)V

    .line 5347
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailTwSoftkeyItem;->setNextFocusUpId(I)V

    .line 5348
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailTwSoftkeyItem;->setNextFocusUpId(I)V

    .line 5349
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailTwSoftkeyItem;->setNextFocusUpId(I)V

    .line 5351
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5352
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v6}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 5354
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 5355
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v5, v0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 5356
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v5, v0, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 5357
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v5, v0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 5358
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    :cond_1
    move v1, v3

    .line 5362
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 5363
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5364
    const v2, 0x7f0700eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 5365
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5362
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5346
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setNextFocusDownId(I)V

    goto :goto_1

    .line 5368
    :cond_3
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto/16 :goto_0

    .line 5372
    :pswitch_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGalSearch()V

    goto/16 :goto_0

    .line 5377
    :pswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRecent()V

    goto/16 :goto_0

    .line 5382
    :pswitch_d
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto/16 :goto_0

    .line 5385
    :pswitch_e
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGroup()V

    goto/16 :goto_0

    .line 5388
    :pswitch_f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto/16 :goto_0

    .line 5398
    :pswitch_10
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 5399
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    .line 5400
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5401
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 5285
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700c2
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3029
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3031
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3034
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 3035
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3037
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 3038
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 3039
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 3041
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 3042
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 3054
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3055
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3058
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3063
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v4, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsKeyboardOpen:Z

    .line 3064
    return-void

    .line 3044
    :cond_0
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 3045
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mComposerTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3047
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_land:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 3048
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSoftKeyView_potrait:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 3049
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 3051
    const v0, 0x7f0700e3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 3052
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3063
    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 5712
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5762
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 5718
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->selectAll()V

    goto :goto_0

    .line 5724
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->setTextSelecitonAt(II)Z

    goto :goto_0

    .line 5730
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->paste()V

    goto :goto_0

    .line 5736
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->cut()V

    goto :goto_0

    .line 5742
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->copy()V

    goto :goto_0

    .line 5748
    :pswitch_6
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5750
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 5752
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 5712
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v10, "com.android.email.intent.action.EDIT_DRAFT"

    .line 734
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 736
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "inside message compose"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 741
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onCreate() >>>>> 506"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->requestWindowFeature(I)Z

    .line 746
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 747
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 748
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 750
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 752
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 755
    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Lcom/android/email/activity/MessageCompose$MessageComposeHandler;

    .line 758
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mFlagOnSendButtonClicked:Z

    .line 760
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    .line 761
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 762
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    .line 763
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 766
    if-eqz p1, :cond_16

    .line 768
    const-string v0, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 770
    const-string v0, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 773
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 774
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 776
    cmp-long v3, v0, v8

    if-eqz v3, :cond_0

    .line 780
    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v10, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 781
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-wide v0, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 783
    :cond_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 786
    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.SENDTO"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.SEND"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 791
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1027
    :cond_2
    :goto_1
    return-void

    .line 792
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 796
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 797
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 798
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 800
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v7, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 886
    :goto_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 890
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 944
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v0, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 984
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 986
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 998
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onCreate() >>>>> 688"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1002
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1006
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_14

    .line 1007
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 1008
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 1017
    :goto_4
    if-eqz v2, :cond_5

    const-string v0, "message_signed"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1018
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 1019
    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "message_encrypted"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1020
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 1024
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v7

    .line 801
    goto/16 :goto_2

    .line 804
    :cond_8
    const-string v3, "com.android.email.intent.action.REPLY"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.email.intent.action.REPLY_ALL"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 814
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 815
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 818
    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 819
    cmp-long v3, v0, v8

    if-eqz v3, :cond_a

    :goto_5
    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    .line 826
    :goto_6
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_15

    .line 827
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 830
    :goto_7
    if-nez v0, :cond_c

    .line 831
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_1

    .line 819
    :cond_a
    const-string v0, "message_id"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_5

    .line 822
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    goto :goto_6

    .line 854
    :cond_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 855
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_e

    .line 856
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_d

    .line 857
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 859
    :cond_d
    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 861
    :cond_e
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v6, [Ljava/lang/Long;

    iget-wide v3, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 864
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_8
    invoke-virtual {p0, v7, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    move-object v0, v7

    goto :goto_8

    .line 870
    :cond_10
    cmp-long v3, v0, v8

    if-eqz v3, :cond_11

    .line 871
    :goto_9
    cmp-long v3, v0, v8

    if-eqz v3, :cond_12

    .line 872
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 873
    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    invoke-direct {v3, p0, v7}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v4, v6, [Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 883
    :goto_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_b
    invoke-virtual {p0, v7, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 870
    :cond_11
    const-string v0, "message_id"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9

    .line 875
    :cond_12
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 881
    iput-boolean v6, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    goto :goto_a

    :cond_13
    move-object v0, v7

    .line 883
    goto :goto_b

    .line 1010
    :cond_14
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 1011
    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1012
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1013
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 1014
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    goto/16 :goto_4

    :cond_15
    move-object v0, v7

    goto/16 :goto_7

    :cond_16
    move-wide v0, v8

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5772
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5776
    const v0, 0x1040387

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 5778
    const v0, 0x102001f

    const v1, 0x104000d

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5780
    const v0, 0x1020028

    const v1, 0x1040380

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 5782
    const v0, 0x1020022

    const v1, 0x104000b

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5784
    const v0, 0x1020020

    const v1, 0x1040003

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x78

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5786
    const v0, 0x1020021

    const v1, 0x1040001

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 5790
    const/4 v0, 0x1

    const v1, 0x1020024

    const v2, 0x1040385

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 5792
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 5675
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 5676
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5677
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1256
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1260
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1261
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onDestroy() >>>>> 890"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1264
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 1266
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1267
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 1269
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1270
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 1271
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1272
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 1275
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadOriginalTextTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1276
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadOriginalTextTask:Landroid/os/AsyncTask;

    .line 1279
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1293
    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0700e4

    const v8, 0x7f0700c3

    const v7, 0x7f070099

    const v6, 0x7f0700c9

    const v5, 0x7f0700cb

    .line 2137
    if-nez p2, :cond_7

    .line 2139
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 2142
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_1

    .line 2150
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2152
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 2155
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2402
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_6

    .line 2403
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->onAdjustFieldHeight(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 2405
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2406
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2407
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 2408
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2409
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 2410
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2411
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 2415
    :cond_6
    return-void

    .line 2158
    :sswitch_0
    move-object v0, p1

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->ClearWebTextSelection()V

    goto :goto_0

    .line 2166
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 2270
    :goto_1
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2277
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onHideCcBcc()V

    goto/16 :goto_0

    .line 2174
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2175
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2177
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v9}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2179
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v9}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2180
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v5}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2181
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2182
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v7}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2184
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2185
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2186
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2187
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2189
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2190
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2191
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2192
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusDownId(I)V

    goto :goto_1

    .line 2196
    :sswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2197
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2198
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    goto/16 :goto_1

    .line 2202
    :sswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2203
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2205
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2207
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v8}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2208
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v9}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2209
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v9}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2210
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v7}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2212
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2213
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2214
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2215
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2217
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2218
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2219
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2220
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2221
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2222
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2223
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    goto/16 :goto_1

    .line 2228
    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2229
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2231
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2233
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v8}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2234
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v5}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2235
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusUpId(I)V

    .line 2236
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v9}, Landroid/widget/MultiAutoCompleteTextView;->setNextFocusDownId(I)V

    .line 2238
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2239
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2240
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2241
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 2243
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2244
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2245
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2246
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 2247
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2248
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2249
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    goto/16 :goto_1

    .line 2254
    :sswitch_6
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2258
    :sswitch_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2262
    :sswitch_8
    move-object v0, p1

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->hasWindowFocus()Z

    .line 2263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 2264
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2155
    :sswitch_data_0
    .sparse-switch
        0x7f0700d5 -> :sswitch_0
        0x7f0700da -> :sswitch_0
    .end sparse-switch

    .line 2166
    :sswitch_data_1
    .sparse-switch
        0x7f070099 -> :sswitch_6
        0x7f0700c3 -> :sswitch_2
        0x7f0700c7 -> :sswitch_3
        0x7f0700c9 -> :sswitch_4
        0x7f0700cb -> :sswitch_5
        0x7f0700d5 -> :sswitch_7
        0x7f0700da -> :sswitch_8
        0x7f0700e4 -> :sswitch_1
        0x7f0700e5 -> :sswitch_1
        0x7f0700e6 -> :sswitch_1
        0x7f0700e7 -> :sswitch_1
    .end sparse-switch

    .line 2270
    :pswitch_data_0
    .packed-switch 0x7f0700e4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 5255
    const/4 v3, 0x0

    .line 5257
    .local v3, length:I
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5258
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5259
    .local v2, bufToView:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 5260
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 5261
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5262
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 5265
    .end local v2           #bufToView:Ljava/lang/StringBuffer;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5266
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5267
    .local v1, bufCcView:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 5268
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 5269
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5270
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 5273
    .end local v1           #bufCcView:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5274
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5275
    .local v0, bufBccView:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 5276
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 5277
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5278
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 5281
    .end local v0           #bufBccView:Ljava/lang/StringBuffer;
    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5423
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5416
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 5417
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 5410
    :pswitch_data_0
    .packed-switch 0x7f0700d6
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 5629
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 5668
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 5670
    :goto_0
    return v0

    .line 5636
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    .line 5670
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5639
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPriority()V

    goto :goto_1

    .line 5664
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddText()V

    goto :goto_1

    .line 5629
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07012a -> :sswitch_1
        0x7f070194 -> :sswitch_0
        0x7f070196 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1221
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1242
    return-void

    .line 1224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f070195

    const/4 v2, 0x1

    .line 5684
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5686
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 5691
    :goto_0
    const v0, 0x7f070197

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 5693
    const v0, 0x7f070194

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 5694
    if-eqz v0, :cond_3

    .line 5695
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 5697
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v1, :cond_2

    .line 5698
    :cond_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 5700
    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5702
    :cond_3
    return v2

    .line 5688
    :cond_4
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "com.android.email.activity.MessageCompose.quotedTextShown"

    .line 1324
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1325
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    const-string v1, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    const-string v1, "com.android.email.activity.MessageCompose.bccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 1333
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1334
    return-void

    :cond_0
    move v1, v3

    .line 1325
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1327
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1329
    goto :goto_2

    :cond_3
    move v1, v3

    .line 1331
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 1113
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1139
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1304
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1312
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 1313
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1314
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1316
    :cond_0
    const-string v0, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1317
    const-string v0, "com.android.email.activity.MessageCompose.bccShown"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v5

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1318
    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1319
    const-string v0, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1320
    return-void

    :cond_1
    move v1, v4

    .line 1316
    goto :goto_0

    :cond_2
    move v1, v4

    .line 1317
    goto :goto_1

    :cond_3
    move v1, v4

    .line 1318
    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x1

    .line 5427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5429
    .local v0, action:I
    if-nez v0, :cond_1

    .line 5469
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 5432
    :cond_1
    if-ne v0, v2, :cond_0

    .line 5434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 5436
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 5441
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 5444
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    if-nez v1, :cond_4

    .line 5457
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0

    .line 5448
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    .line 5462
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 5463
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    goto :goto_0

    .line 5434
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700d5 -> :sswitch_0
        0x7f0700da -> :sswitch_1
    .end sparse-switch
.end method

.method processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0802a3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v2, "com.android.email.intent.action.FORWARD_OLD"

    const-string v9, " "

    .line 6499
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 6509
    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 6510
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6511
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;Z)V

    .line 6514
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6518
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 6519
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6559
    :goto_0
    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_6

    .line 6560
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6561
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6737
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTempSubject:Ljava/lang/String;

    .line 6739
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 6740
    return-void

    .line 6522
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_2

    .line 6566
    :cond_6
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 6568
    :cond_7
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6569
    :cond_8
    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6570
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->setupAddressViewsForwardOld(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 6571
    :cond_9
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6575
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 6576
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6618
    :goto_3
    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_10

    :cond_b
    iget-boolean v0, p1, Lcom/android/email/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_10

    .line 6619
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 6620
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6631
    :cond_c
    :goto_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6632
    const-string v1, "forward_with_files"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6634
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachments(Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6638
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6645
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Lcom/android/email/activity/MessageCompose$MessageComposeHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposeHandler;->sendEmptyMessage(I)Z

    .line 6649
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    goto/16 :goto_1

    .line 6579
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_f
    move-object v0, v6

    goto :goto_5

    .line 6625
    :cond_10
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 6676
    :cond_11
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6678
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6679
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 6682
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6683
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 6684
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 6685
    array-length v1, v0

    if-lez v1, :cond_12

    .line 6686
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 6687
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6689
    :cond_12
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 6690
    array-length v1, v0

    if-lez v1, :cond_13

    .line 6691
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 6692
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6695
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 6697
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6704
    :cond_15
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 6706
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 6708
    if-eqz v1, :cond_1a

    .line 6709
    if-eqz v0, :cond_1b

    .line 6710
    array-length v2, v0

    move-object v3, v1

    move v1, v8

    :goto_6
    if-ge v1, v2, :cond_17

    aget-object v4, v0, v1

    .line 6711
    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 6712
    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v7, v5, :cond_16

    .line 6713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6710
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    move-object v0, v3

    .line 6728
    :cond_18
    :goto_7
    if-eqz v0, :cond_19

    .line 6729
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6734
    :cond_19
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto/16 :goto_1

    .line 6720
    :cond_1a
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 6721
    if-eqz v0, :cond_18

    .line 6722
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1b
    move-object v0, v1

    goto :goto_7
.end method

.method processSourceMessageGuarded(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 6402
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v0, :cond_0

    .line 6403
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V

    .line 6404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 6413
    :cond_0
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6414
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 6416
    :cond_1
    return-void
.end method

.method public queryContactInfoById(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4589
    .line 4590
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 4592
    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4594
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4601
    if-nez v0, :cond_0

    .line 4602
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoById("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 4616
    :goto_0
    return-object v0

    .line 4609
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4610
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4613
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 4616
    goto :goto_0

    .line 4613
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move-object v1, v3

    goto :goto_1
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-string v3, "signature"

    const-string v5, "<br />"

    .line 5904
    const/4 v0, 0x0

    .line 5906
    if-eqz p1, :cond_0

    .line 5907
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 5908
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5911
    :cond_0
    if-nez p2, :cond_6

    .line 5912
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5914
    const-string v2, "add_signature"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5942
    :cond_1
    :goto_0
    return-void

    .line 5917
    :cond_2
    const-string v2, "signature"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5919
    const-string v2, "signature"

    const-string v2, ""

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5927
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5928
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v4, v2, :cond_1

    .line 5930
    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5931
    const-string v2, "\r"

    const-string v3, "<br />"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "<br />"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5933
    if-eqz v0, :cond_3

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    .line 5934
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    const-string v2, "\n\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5937
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    const-string v2, "-small_fontsize_start-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-small_fontsize_end-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5923
    :cond_5
    const v1, 0x7f080150

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, p2

    goto :goto_1
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1104
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1105
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1106
    return-void
.end method

.method setupAddressViews(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;Z)V
    .locals 9
    .parameter "message"
    .parameter "account"
    .parameter "toView"
    .parameter "ccView"
    .parameter "replyAll"

    .prologue
    .line 6344
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 6345
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 6346
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 6348
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 6350
    if-eqz p5, :cond_2

    .line 6352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6353
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 6355
    .local v5, ourAddress:Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Lcom/android/email/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 6356
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6359
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 6360
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6361
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 6364
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    .end local v2           #arr$:[Lcom/android/email/mail/Address;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ourAddress:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method setupAddressViewsForwardOld(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 9
    .parameter "message"
    .parameter "account"
    .parameter "toView"
    .parameter "ccView"

    .prologue
    .line 6380
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 6381
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 6382
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 6384
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 6387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6388
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 6390
    .local v5, ourAddress:Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Lcom/android/email/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 6391
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6394
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 6395
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6396
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 6398
    :cond_2
    return-void
.end method

.method public showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x3f666666

    const/high16 v2, 0x3f80

    .line 7034
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7038
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7040
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 7042
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7043
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7044
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7045
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7058
    :goto_0
    return-void

    .line 7048
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7050
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 7052
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7053
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    const v1, 0x3f59999a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7054
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 7055
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    goto :goto_0
.end method
