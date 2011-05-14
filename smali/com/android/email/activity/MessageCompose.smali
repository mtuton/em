.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$Listener;,
        Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_DRAFT:Ljava/lang/String; = "com.android.email.intent.action.EDIT_DRAFT"

.field private static final ACTION_FORWARD:Ljava/lang/String; = "com.android.email.intent.action.FORWARD"

.field private static final ACTION_FORWARD_OLD:Ljava/lang/String; = "com.android.email.intent.action.FORWARD_OLD"

.field private static final ACTION_REPLY:Ljava/lang/String; = "com.android.email.intent.action.REPLY"

.field private static final ACTION_REPLY_ALL:Ljava/lang/String; = "com.android.email.intent.action.REPLY_ALL"

.field private static final ACTIVITY_REQUEST_PHONEBOOK:I = 0x3

.field private static final ACTIVITY_REQUEST_PICK_ATTACHMENT:I = 0x1

.field private static final ACTIVITY_REQUEST_RECENT_RECIPIENT:I = 0x2

.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String; = null

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final DO_GAL_SEARCH:I = 0x64

.field private static final EMAIL_ADDRESS_MULTI_LINE:I = 0x30021

.field private static final EMAIL_ADDRESS_SINGLE_LINE:I = 0x10021

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final MSG_PROGRESS_OFF:I = 0x2

.field private static final MSG_PROGRESS_ON:I = 0x1

.field private static final MSG_SKIPPED_ATTACHMENTS:I = 0x4

.field private static final MSG_UPDATE_TITLE:I = 0x3

.field public static final MYFILES_ACCESS_CLASS:Ljava/lang/String; = "com.sec.android.app.myfiles.ExternelAccessActivity"

.field public static final MYFILES_ACTION_PICK:Ljava/lang/String; = "com.sec.android.app.myfiles.PICK_DATA "

.field public static final MYFILES_PKG_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final REQUEST_ATTACHMENT_FROM_EMAIL:I = 0x3e9

.field private static final REQUEST_CODE_ADD_CALENDAR:I = 0x1f

.field private static final REQUEST_CODE_ADD_MEMO:I = 0x20

.field private static final REQUEST_CODE_ADD_NAMECARD:I = 0x1e

.field public static final REQUEST_CODE_ATTACH_IMAGE:I = 0xa

.field public static final REQUEST_CODE_ATTACH_SOUND:I = 0xe

.field public static final REQUEST_CODE_ATTACH_VIDEO:I = 0xc

.field public static final REQUEST_CODE_CREATE_SLIDESHOW:I = 0x10

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd

.field private static final STATE_KEY_BCC_SHOWN:Ljava/lang/String; = "com.android.email.activity.MessageCompose.bccShown"

.field private static final STATE_KEY_CC_SHOWN:Ljava/lang/String; = "com.android.email.activity.MessageCompose.ccShown"

.field private static final STATE_KEY_DRAFT_ID:Ljava/lang/String; = "com.android.email.activity.MessageCompose.draftId"

.field private static final STATE_KEY_QUOTED_TEXT_SHOWN:Ljava/lang/String; = "com.android.email.activity.MessageCompose.quotedTextShown"

.field private static final STATE_KEY_SOURCE_MESSAGE_PROCED:Ljava/lang/String; = "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

.field private static final TAG:Ljava/lang/String; = "Compose >>"


# instance fields
.field private DPMReceiver:Landroid/content/BroadcastReceiver;

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

.field private mAttachmentsHeader:Landroid/widget/LinearLayout;

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcBccView:Landroid/widget/TextView;

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCheckedAccountId:J

.field private mController:Lcom/android/email/Controller;

.field private mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mDraft:Lcom/android/email/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

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

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEAS:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mListener:Lcom/android/email/activity/MessageCompose$Listener;

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;

.field private mLoadMessageTask:Landroid/os/AsyncTask;

.field private mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageContentView:Landroid/widget/EditText;

.field private mMessageLoaded:Z

.field private mOnAction:Z

.field private mOnCcAndBcc:Z

.field private mOnDiscard:Z

.field private mOnSend:Z

.field private mOnWatcher:Z

.field private mPhonebookButton:Landroid/widget/Button;

.field private mPriority:I

.field private mQuotedText:Landroid/webkit/WebView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageButton;

.field private mRecentButton:Landroid/widget/Button;

.field private mSaveMessageTask:Landroid/os/AsyncTask;

.field private mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mSource:Lcom/android/email/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectView:Landroid/widget/EditText;

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 291
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

    .line 299
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 217
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    .line 235
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 277
    new-instance v0, Lcom/android/email/activity/MessageCompose$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$Listener;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    .line 339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 340
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 351
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 352
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentPossible:Z

    .line 355
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 364
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    .line 706
    new-instance v0, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 4282
    return-void
.end method

.method private IsEAS()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "isEAS(): return - :"

    const-string v8, "Compose >>"

    .line 737
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 738
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v4, :cond_0

    move v4, v10

    .line 772
    :goto_0
    return v4

    .line 741
    :cond_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 742
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 752
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 754
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_3

    .line 755
    iput-boolean v10, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 756
    const-string v4, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 744
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 745
    const-string v4, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  NOT CHECKED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 749
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    goto :goto_1

    .line 760
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 763
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_4

    .line 764
    iput-boolean v10, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 765
    const-string v4, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0

    .line 769
    :cond_4
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 770
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 771
    const-string v4, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    return p1
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v1, i:Landroid/content/Intent;
    const-string v2, "account_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 404
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 3
    .parameter "context"
    .parameter "uriString"
    .parameter "accountId"

    .prologue
    .line 418
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 421
    const-string v2, "account_id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v2, 0x1

    .line 428
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 424
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 427
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 472
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 473
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 449
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 450
    return-void
.end method

.method public static actionForward(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "old"

    .prologue
    .line 460
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 461
    return-void

    .line 460
    :cond_0
    const-string v0, "com.android.email.intent.action.FORWARD"

    goto :goto_0
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "replyAll"

    .prologue
    .line 440
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 441
    return-void

    .line 440
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "address"

    .prologue
    .line 1654
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1655
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1661
    :goto_0
    return-void

    .line 1660
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
    .line 1635
    if-nez p2, :cond_1

    .line 1641
    :cond_0
    return-void

    .line 1638
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

    .line 1639
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1644
    if-nez p2, :cond_1

    .line 1650
    :cond_0
    return-void

    .line 1647
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

    .line 1648
    .local v3, oneAddress:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAttachment(IZ)V
    .locals 7
    .parameter "type"
    .parameter "toReplaceMedia"

    .prologue
    .line 2489
    if-eqz p2, :cond_0

    .line 2493
    :cond_0
    const/4 v2, 0x0

    .line 2494
    .local v2, folderPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2495
    .local v0, contentType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2499
    .local v4, requestCode:I
    packed-switch p1, :pswitch_data_0

    .line 2629
    :goto_0
    return-void

    .line 2504
    :pswitch_0
    const-string v0, "image/*"

    .line 2505
    const/16 v4, 0xa

    .line 2507
    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 2511
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2512
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2514
    const-string v5, "return-uri"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2515
    const/16 v5, 0xb

    invoke-virtual {p0, v3, v5}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2523
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "video/*"

    .line 2524
    const/16 v4, 0xc

    .line 2526
    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 2535
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getVideoCaptureDurationLimit()I

    move-result v1

    .line 2536
    .local v1, durationLimit:I
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2537
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.videoQuality"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2538
    const-string v5, "android.intent.extra.sizeLimit"

    const/high16 v6, 0x50

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2539
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2543
    const/16 v5, 0xd

    invoke-virtual {p0, v3, v5}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2556
    .end local v1           #durationLimit:I
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v2, "/sdcard/Sounds"

    .line 2557
    const-string v0, "audio/*"

    .line 2558
    const/16 v4, 0xe

    .line 2559
    invoke-static {p0, v2, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2565
    :pswitch_5
    const/16 v5, 0xf

    invoke-static {p0, v5, p2}, Lcom/android/email/activity/MessageCompose;->recordSound(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 2569
    :pswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V

    goto :goto_0

    .line 2499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "attachment"

    .prologue
    .line 2766
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 2768
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V
    .locals 28
    .parameter "attachment"
    .parameter "isExchange"

    .prologue
    .line 2776
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x500000

    cmp-long v24, v24, v26

    if-lez v24, :cond_0

    .line 2777
    const v24, 0x7f08005f

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 2903
    :goto_0
    return-void

    .line 2784
    :cond_0
    const-string v24, "Compose >>"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "attachment uri : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/32 v26, 0x500000

    cmp-long v24, v24, v26

    if-lez v24, :cond_1

    .line 2790
    const v24, 0x7f08005f

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2794
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 2796
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f030027

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 2798
    .local v22, view:Landroid/view/View;
    const v24, 0x7f0700b0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2799
    .local v16, nameView:Landroid/widget/TextView;
    const v24, 0x7f0700b1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 2801
    .local v7, delete:Landroid/widget/ImageButton;
    if-eqz p2, :cond_2

    .line 2802
    const/16 v24, 0x8

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2816
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_8

    .line 2818
    const-wide/16 v5, 0x0

    .line 2821
    .local v5, count:J
    const/4 v13, 0x0

    .line 2822
    .local v13, inStream:Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2825
    .local v11, fileUri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2826
    .local v20, start:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 2827
    const/4 v15, 0x0

    .line 2828
    .local v15, n:I
    const/16 v24, 0xff

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v4, v0

    .line 2829
    .local v4, buffer:[B
    :goto_1
    const/16 v24, -0x1

    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move/from16 v0, v24

    move v1, v15

    if-eq v0, v1, :cond_3

    .line 2831
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v5, v5, v24

    goto :goto_1

    .line 2833
    :cond_3
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2835
    .local v9, end:J
    const-string v24, "YohanTest"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Total Elapsed time : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v9, v20

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " count="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2844
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2845
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2857
    .end local v4           #buffer:[B
    .end local v5           #count:J
    .end local v9           #end:J
    .end local v11           #fileUri:Landroid/net/Uri;
    .end local v13           #inStream:Ljava/io/InputStream;
    .end local v15           #n:I
    .end local v20           #start:J
    :goto_2
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2858
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2859
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2865
    const v24, 0x7f0700af

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2866
    .local v14, iv:Landroid/widget/ImageView;
    const/16 v19, 0x0

    .line 2867
    .local v19, previewIcon:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 2869
    .local v18, orgImage:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2872
    if-eqz v18, :cond_6

    .line 2875
    const/16 v23, 0x50

    .line 2876
    .local v23, width:I
    const/16 v12, 0x3c

    .line 2878
    .local v12, height:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    .line 2879
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 2880
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move v0, v12

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 2881
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 2883
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v19

    .line 2895
    .end local v12           #height:I
    .end local v23           #width:I
    :cond_6
    :goto_3
    if-eqz v19, :cond_7

    .line 2896
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2901
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    goto/16 :goto_0

    .line 2836
    .end local v14           #iv:Landroid/widget/ImageView;
    .end local v18           #orgImage:Landroid/graphics/Bitmap;
    .end local v19           #previewIcon:Landroid/graphics/Bitmap;
    .restart local v5       #count:J
    .restart local v11       #fileUri:Landroid/net/Uri;
    .restart local v13       #inStream:Ljava/io/InputStream;
    :catch_0
    move-exception v24

    move-object/from16 v8, v24

    .line 2838
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2844
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2845
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 2839
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 2841
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2844
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2845
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 2844
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v24

    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2845
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v24

    .line 2850
    .end local v5           #count:J
    .end local v11           #fileUri:Landroid/net/Uri;
    .end local v13           #inStream:Ljava/io/InputStream;
    :cond_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2886
    .restart local v14       #iv:Landroid/widget/ImageView;
    .restart local v18       #orgImage:Landroid/graphics/Bitmap;
    .restart local v19       #previewIcon:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v24

    move-object/from16 v8, v24

    .line 2887
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 2890
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v24

    move-object/from16 v17, v24

    .line 2891
    .local v17, oe:Ljava/lang/OutOfMemoryError;
    const-string v24, "Compose >>"

    const-string v25, "Thumnail Out of Memory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private addSignature()V
    .locals 8

    .prologue
    const-string v7, "signature"

    const-string v6, "<br />"

    const-string v5, ""

    .line 1230
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1233
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "add_signature"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    const-string v3, "signature"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1244
    const-string v3, "signature"

    const-string v3, ""

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, signature:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1253
    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, escapedSignature:Ljava/lang/String;
    const-string v3, "\r"

    const-string v4, "<br />"

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br />"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<br /><br /><small>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</small>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1248
    .end local v0           #escapedSignature:Ljava/lang/String;
    .end local v2           #signature:Ljava/lang/String;
    :cond_2
    const v3, 0x7f080138

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #signature:Ljava/lang/String;
    goto :goto_1
.end method

.method private arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 12
    .parameter "view"

    .prologue
    .line 4410
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4411
    .local v6, refString:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4444
    :cond_0
    return-void

    .line 4414
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4415
    .local v7, toFieldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 4417
    const/4 v9, 0x0

    .line 4419
    .local v9, tokens:[Landroid/text/util/Rfc822Token;
    :try_start_0
    invoke-static {v7}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 4422
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4423
    .local v2, emailIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v9

    .local v4, length:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 4424
    aget-object v8, v9, v3

    .line 4425
    .local v8, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 4426
    .local v1, emailId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4427
    const-string v1, ""

    .line 4431
    :goto_2
    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4432
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4433
    const/4 v5, 0x0

    .line 4437
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 4438
    new-instance v0, Lcom/android/email/mail/Address;

    invoke-direct {v0, v1, v5}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4439
    .local v0, address:Lcom/android/email/mail/Address;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 4423
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4429
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4435
    .restart local v5       #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 4420
    .end local v1           #emailId:Ljava/lang/String;
    .end local v2           #emailIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #token:Landroid/text/util/Rfc822Token;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private arrangeAttachments()V
    .locals 8

    .prologue
    .line 4450
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 4457
    const v6, 0x7f0700a2

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4458
    .local v3, attachmentsHeaderInfo:Landroid/widget/TextView;
    const-wide/16 v1, 0x0

    .line 4459
    .local v1, attachmentsFileSize:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 4460
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4461
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 4462
    .local v0, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v1, v6

    .line 4459
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4464
    .end local v0           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attachments ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-float v7, v1

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

    .line 4470
    .end local v1           #attachmentsFileSize:J
    .end local v3           #attachmentsHeaderInfo:Landroid/widget/TextView;
    .end local v4           #i:I
    :cond_1
    return-void
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
    .line 888
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 889
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 891
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 725
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2906
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2908
    .local v3, preview_bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    move-object v5, v6

    .line 2925
    :goto_0
    return-object v5

    .line 2911
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2912
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2914
    .local v2, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2915
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2917
    .local v1, dst:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move-object v5, v6

    .line 2918
    goto :goto_0

    .line 2920
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2921
    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2923
    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v5, v3

    .line 2925
    goto :goto_0
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 4011
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "textBody"
    .parameter "htmlBody"

    .prologue
    const/4 v1, 0x0

    .line 4020
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 4021
    .local v6, plainTextFlag:Z
    :goto_0
    if-eqz v6, :cond_3

    move-object v2, p1

    .line 4022
    .local v2, text:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_1

    .line 4023
    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4027
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4028
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4029
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4032
    :cond_1
    return-void

    .end local v2           #text:Ljava/lang/String;
    .end local v6           #plainTextFlag:Z
    :cond_2
    move v6, v1

    .line 4020
    goto :goto_0

    .restart local v6       #plainTextFlag:Z
    :cond_3
    move-object v2, p2

    .line 4021
    goto :goto_1
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;
    .locals 2
    .parameter "view"

    .prologue
    .line 1669
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1670
    .local v0, addresses:[Lcom/android/email/mail/Address;
    return-object v0
.end method

.method private getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 4

    .prologue
    .line 1814
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1815
    .local v1, count:I
    new-array v0, v1, [Lcom/android/email/provider/EmailContent$Attachment;

    .line 1816
    .local v0, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1817
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Attachment;

    aput-object v3, v0, v2

    .line 1816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1819
    :cond_0
    return-object v0
.end method

.method public static getAvailableStorage()J
    .locals 8

    .prologue
    .line 2646
    const/4 v1, 0x0

    .line 2649
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v1, "/data"

    .line 2650
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2651
    .local v0, stat:Landroid/os/StatFs;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available Storage Size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private getFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const-string v10, "Query on "

    const-string v4, "Email"

    .line 2429
    const/4 v2, 0x0

    .line 2430
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2432
    .local v9, mPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2434
    if-eqz v2, :cond_5

    .line 2436
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePath: path= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2439
    const-string v0, "Email"

    const-string v0, "getFilePath Uri scheme is file"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2442
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePath file path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .line 2483
    :goto_0
    return-object v0

    .line 2446
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2448
    const-string v0, "Email"

    const-string v0, "getFilePath Uri scheme is content"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2453
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returns null result."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2460
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returns 0 or multiple rows."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2465
    :cond_3
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2466
    .local v8, filePath:Ljava/lang/String;
    move-object v9, v8

    .line 2468
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 2471
    goto/16 :goto_0

    .line 2475
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    const-string v0, "Email"

    const-string v0, "getFilePath URI path is not normal scheme"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v3

    .line 2483
    goto/16 :goto_0

    .line 2480
    :cond_5
    const-string v0, "Email"

    const-string v0, "getFilePath: Uri is null"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v12, "getFilePath file path = "

    const-string v11, "Query on "

    const-string v10, "Email"

    .line 2384
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2387
    .local v9, mPath:Ljava/lang/String;
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePath file path = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .line 2424
    .end local v9           #mPath:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2391
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2393
    const/4 v9, 0x0

    .line 2394
    .restart local v9       #mPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2397
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 2403
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2404
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2412
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2409
    :cond_3
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2410
    .local v8, filePath:Ljava/lang/String;
    move-object v9, v8

    .line 2412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2415
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePath file path = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .line 2417
    goto/16 :goto_0

    .line 2421
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #mPath:Ljava/lang/String;
    :cond_4
    const-string v0, "Email"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePath URI path is not file scheme - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 2424
    goto/16 :goto_0
.end method

.method private getOrCreateDraftId()J
    .locals 6

    .prologue
    .line 1828
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    monitor-enter v1

    .line 1829
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1830
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    .line 1839
    :goto_0
    return-wide v1

    .line 1833
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1

    .line 1834
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1836
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1837
    .local v0, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1838
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V

    .line 1839
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1837
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1840
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
    .line 1664
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1665
    .local v0, addresses:[Lcom/android/email/mail/Address;
    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSignature()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "signature"

    const-string v4, ""

    .line 1266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1269
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    const-string v2, "add_signature"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    const-string v2, ""

    move-object v2, v4

    .line 1283
    :goto_0
    return-object v2

    .line 1274
    :cond_0
    const-string v2, "signature"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1276
    const-string v2, "signature"

    const-string v2, ""

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, signature:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 1283
    goto :goto_0

    .line 1280
    .end local v1           #signature:Ljava/lang/String;
    :cond_1
    const v2, 0x7f080138

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #signature:Ljava/lang/String;
    goto :goto_1
.end method

.method private getUpdateContentValues(Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter "message"

    .prologue
    .line 1699
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1700
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1703
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1713
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1715
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1716
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    const-string v1, "importance"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1721
    return-object v0
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 2379
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 974
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 975
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 978
    const v5, 0x7f07007c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    .line 979
    const v5, 0x7f070097

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    .line 980
    const v5, 0x7f070099

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    .line 981
    const v5, 0x7f07009c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    .line 984
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 985
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 987
    const v5, 0x7f07009b

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 988
    const v5, 0x7f07009d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 989
    const v5, 0x7f07009e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 990
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 991
    const v5, 0x7f07009f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    .line 999
    const v5, 0x7f0700a8

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1000
    const v5, 0x7f0700aa

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1003
    const v5, 0x7f0700a9

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1016
    const v5, 0x7f0700a3

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 1017
    const v5, 0x7f0700a4

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 1018
    const v5, 0x7f0700a6

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    .line 1019
    const v5, 0x7f0700a7

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 1030
    const v5, 0x7f07009a

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    .line 1032
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    .line 1034
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    .line 1035
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    .line 1036
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    .line 1037
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    .line 1038
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1043
    const v5, 0x7f0700a0

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 1044
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/email/activity/MessageCompose$6;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    new-instance v4, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1074
    .local v4, watcher:Landroid/text/TextWatcher;
    new-instance v2, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1119
    .local v2, recipientFilter:Landroid/text/InputFilter;
    new-array v3, v11, [Landroid/text/InputFilter;

    aput-object v2, v3, v10

    .line 1125
    .local v3, recipientFilters:[Landroid/text/InputFilter;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1126
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1129
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1130
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1131
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1137
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1140
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    new-instance v5, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v5, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 1143
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 1145
    .local v0, addressValidator:Lcom/android/email/EmailAddressValidator;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 1147
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1148
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1149
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1151
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1152
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1153
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1155
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1156
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1157
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1160
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1161
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1162
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1163
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1164
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1170
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1211
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addSignature()V

    .line 1223
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1224
    .local v1, config:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v11

    :goto_0
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1226
    return-void

    :cond_0
    move v5, v10

    .line 1224
    goto :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 14
    .parameter "mailToString"

    .prologue
    const/4 v13, 0x0

    .line 3970
    const-string v10, "?"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3971
    .local v4, index:I
    const-string v10, "mailto"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v5, v10, 0x1

    .line 3975
    .local v5, length:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 3976
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3980
    .local v8, to:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v11, " ,"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3988
    .end local v8           #to:Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "foo://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3990
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "cc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3991
    .local v2, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3993
    const-string v10, "to"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3994
    .local v6, otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3996
    const-string v10, "bcc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3997
    .local v0, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3999
    const-string v10, "subject"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 4000
    .local v7, subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 4001
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4004
    :cond_0
    const-string v10, "body"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4005
    .local v1, body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 4006
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4008
    :cond_1
    return-void

    .line 3978
    .end local v0           #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #uri:Landroid/net/Uri;
    .restart local p0
    :cond_2
    :try_start_1
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #to:Ljava/lang/String;
    goto/16 :goto_0

    .line 3981
    .end local v8           #to:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 3982
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while decoding \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private isNotFieldsAllEmpty()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2051
    const/4 v5, 0x3

    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v5, v0, v7

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v5, v0, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v6, v0, v5

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2052
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2053
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v8

    .line 2068
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :goto_1
    return v5

    .line 2051
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #view:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #str:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :cond_1
    move v5, v7

    .line 2068
    goto :goto_1
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v5, "Compose >>"

    const-string v4, " : "

    .line 2711
    const-wide/16 v12, 0x0

    .line 2712
    .local v12, size:J
    const/4 v11, 0x0

    .line 2713
    .local v11, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2715
    .local v7, contentType:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2717
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2718
    .local v9, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2719
    .local v8, f:Ljava/io/File;
    if-eqz v8, :cond_0

    .line 2720
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2721
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 2722
    invoke-static {v9}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2723
    const-string v1, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    .end local v8           #f:Ljava/io/File;
    .end local v9           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 2746
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 2748
    :cond_1
    if-nez v7, :cond_2

    .line 2749
    const-string v7, ""

    .line 2752
    :cond_2
    new-instance v6, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 2753
    .local v6, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iput-object v11, v6, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2754
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2755
    iput-wide v12, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2756
    iput-object v7, v6, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2757
    return-object v6

    .line 2727
    .end local v6           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2728
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2730
    .local v10, metadataCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 2732
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2733
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2734
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v12, v1

    .line 2735
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2742
    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2738
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private loadAttachments(Lcom/android/email/provider/EmailContent$Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3739
    const-string v6, "Compose >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "store uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v8, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    iget-wide v6, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 3744
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    if-nez v2, :cond_0

    move v6, v9

    .line 3778
    :goto_0
    return v6

    .line 3750
    :cond_0
    const/4 v4, 0x0

    .line 3752
    .local v4, isSomeAttachmentError:Z
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 3753
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3755
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3756
    invoke-direct {p0, v1, v10}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 3752
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3758
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto :goto_2

    .line 3761
    :cond_3
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v7, "@namo.co.kr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3763
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 3768
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_5
    if-eqz v4, :cond_6

    move v6, v9

    .line 3769
    goto :goto_0

    :cond_6
    move v6, v10

    .line 3778
    goto :goto_0
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1679
    const/4 v2, 0x0

    .line 1680
    .local v2, first:Lcom/android/email/mail/Address;
    const/4 v6, 0x0

    .line 1681
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 1682
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1683
    .local v0, addresses:[Lcom/android/email/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 1684
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 1685
    aget-object v2, v0, v10

    .line 1681
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1688
    .end local v0           #addresses:[Lcom/android/email/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 1689
    const-string v8, ""

    .line 1695
    :goto_1
    return-object v8

    .line 1691
    :cond_2
    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 1692
    .local v3, friendly:Ljava/lang/String;
    if-ne v6, v11, :cond_3

    move-object v8, v3

    .line 1693
    goto :goto_1

    .line 1695
    :cond_3
    const v8, 0x7f080060

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    sub-int v10, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private onAddAttachment()V
    .locals 3

    .prologue
    .line 2636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2637
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    sget-object v1, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2639
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2642
    return-void
.end method

.method private onAddAttachmentFromMyfiles()V
    .locals 3

    .prologue
    .line 2697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2698
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivityList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2699
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2701
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2702
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    const/high16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2703
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2704
    return-void
.end method

.method private onAddCcBcc()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2179
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2183
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 2189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 2193
    return-void
.end method

.method private onAddText()V
    .locals 3

    .prologue
    .line 2214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2215
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2217
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 2218
    new-instance v1, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    .line 2220
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2227
    return-void
.end method

.method private onAddTextActivity(I)V
    .locals 6
    .parameter "type"

    .prologue
    const-string v5, "android.intent.action.PICK"

    .line 2266
    packed-switch p1, :pswitch_data_0

    .line 2299
    :goto_0
    :pswitch_0
    return-void

    .line 2268
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_LIST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2269
    .local v3, intentNamecard:Landroid/content/Intent;
    const-string v4, "additional"

    const-string v5, "namecard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2270
    const/16 v4, 0x1e

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2281
    .end local v3           #intentNamecard:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2282
    .local v1, intentCalendar:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2283
    const/16 v4, 0x1f

    invoke-virtual {p0, v1, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2289
    .end local v1           #intentCalendar:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v2, intentMemo:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.memo"

    const-string v5, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2292
    const-string v4, "text/memo_string"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    const/16 v4, 0x20

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2266
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
    .parameter "view"

    .prologue
    .line 1624
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    const v0, 0x30021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 1626
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1631
    :goto_0
    return-void

    .line 1628
    :cond_0
    const v0, 0x10021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 1629
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 8
    .parameter "delButtonView"

    .prologue
    const/4 v7, 0x1

    .line 3536
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3537
    .local v1, attachmentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 3538
    .local v0, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 3539
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment del : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

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

    .line 3541
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3544
    const-string v2, "com.android.email.intent.action.FORWARD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3545
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 3548
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3552
    new-instance v2, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v7, [Ljava/lang/Long;

    const/4 v4, 0x0

    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3560
    :cond_2
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3562
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    const/high16 v3, 0x50

    if-ge v2, v3, :cond_3

    .line 3564
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/android/email/EmailTwSoftkeyItem;->setClickable(Z)V

    .line 3565
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 3569
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    .line 3571
    return-void
.end method

.method private onDiscard()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2152
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 2155
    :cond_0
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2158
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    .line 2160
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2161
    return-void
.end method

.method private onDiscardPopup()V
    .locals 3

    .prologue
    .line 2129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2131
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2132
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2133
    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2134
    const v1, 0x7f08016f

    new-instance v2, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2142
    const v1, 0x7f080171

    new-instance v2, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2149
    return-void
.end method

.method private onGalSearch()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 2107
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2108
    .local v0, accountId:J
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/email/activity/GalSearchLookUp;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2109
    .local v2, galIntent:Landroid/content/Intent;
    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 2110
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_id"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2111
    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    .line 2112
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2114
    :cond_0
    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    .line 2115
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2125
    :goto_0
    return-void

    .line 2119
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 2120
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2123
    :cond_2
    const-string v3, "GalAccountID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2124
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onGroup()V
    .locals 3

    .prologue
    .line 3384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3385
    .local v0, groupIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "group-email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3386
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3387
    return-void
.end method

.method private onHideCcBcc()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2197
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

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

    .line 2199
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

    .line 2201
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2202
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2206
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 2209
    :cond_0
    return-void
.end method

.method private onPhonebook()V
    .locals 3

    .prologue
    .line 3379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3380
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "email-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3382
    return-void
.end method

.method private onPriority()V
    .locals 4

    .prologue
    .line 2233
    const/4 v0, 0x0

    .line 2234
    .local v0, PriorityType:[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .end local v0           #PriorityType:[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f08019f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const v3, 0x7f0801a1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f0801a0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2236
    .restart local v0       #PriorityType:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2237
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2238
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    new-instance v3, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2261
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2262
    return-void
.end method

.method private onRecent()V
    .locals 2

    .prologue
    .line 3372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/RecentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3373
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3374
    return-void
.end method

.method private onSave()V
    .locals 1

    .prologue
    .line 2165
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2169
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 2170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2173
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 2174
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2175
    return-void
.end method

.method private onSend()V
    .locals 5

    .prologue
    const v4, 0x7f08005c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2073
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2074
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2101
    :goto_0
    return-void

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2080
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2085
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2087
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onSend() >>>>> 2046"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2088
    const v0, 0x7f08018a

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2090
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 2092
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 2096
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 2097
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2098
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 2099
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method private onShowSecurityPolicyDialog()V
    .locals 5

    .prologue
    .line 3576
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageCompose.java >>>>> onShowSecurityPolicyDialog() >>>>> 3451"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3579
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3580
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3583
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3586
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080188

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3589
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3592
    new-instance v1, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f03

    invoke-direct {v1, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 3595
    .local v1, arrayAdapter:Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
    new-instance v3, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3614
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3615
    return-void
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "act"
    .parameter "folderPath"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 2332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2333
    .local v0, myFilesIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2334
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2335
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2336
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2337
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2339
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2341
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 2322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2323
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2324
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2325
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2327
    :cond_0
    return-void
.end method

.method public static recordSound(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"
    .parameter "toReplaceMedia"

    .prologue
    .line 2345
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2347
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.voicerecorder"

    const-string v3, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2350
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2351
    const/high16 v1, 0x50

    .line 2372
    .local v1, maxContentSize:I
    const-string v2, "remain_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2374
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2376
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxContentSize:I
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
    .line 4041
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const/4 v0, 0x0

    .line 4042
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

    .line 4044
    .local v1, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4045
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4046
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 4047
    const/4 v0, 0x1

    .line 4042
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4050
    .end local v1           #address:Lcom/android/email/mail/Address;
    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2028
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2031
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2032
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private sendOrSaveMessage(Z)V
    .locals 10
    .parameter "send"

    .prologue
    const/4 v9, 0x0

    .line 1851
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 1852
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v5, :cond_0

    .line 1957
    :goto_0
    return-void

    .line 1859
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 1861
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1862
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 1861
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1865
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
    invoke-direct {p0, v5, v6, v7}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1867
    new-instance v5, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;Z[Lcom/android/email/provider/EmailContent$Attachment;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSaveMessageTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v7, v9

    .line 1865
    goto :goto_2
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 483
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 484
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 485
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 487
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 490
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0
.end method

.method private setAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 500
    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 502
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 503
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 505
    :cond_0
    return-void
.end method

.method private setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "data"

    .prologue
    const-string v4, ", "

    .line 829
    if-eqz p2, :cond_1

    .line 831
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, seq:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 833
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    :cond_0
    const-string v2, "GALResults"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, galResulAddress:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 843
    .end local v0           #galResulAddress:Ljava/lang/String;
    .end local v1           #seq:Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method private setFromAccount()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 1458
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1463
    .local v6, cur:Landroid/database/Cursor;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1466
    .local v10, vt:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    :cond_0
    const-string v0, "emailAddress"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1469
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eq v0, v11, :cond_2

    .line 1476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1480
    :cond_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v8, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 1481
    .local v8, fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v7, 0x0

    .line 1484
    .local v7, currentAccountId:I
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1485
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 1486
    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v8, v9

    .line 1487
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1488
    move v7, v9

    .line 1485
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1474
    .end local v7           #currentAccountId:I
    .end local v8           #fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eq v1, v11, :cond_4

    .line 1476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1492
    .restart local v7       #currentAccountId:I
    .restart local v8       #fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    :cond_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1495
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1506
    :cond_6
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03003e

    invoke-direct {v0, p0, v1, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 1508
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f03003d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1509
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 1513
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    return-void

    .line 1497
    .restart local p0
    :cond_7
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v11, :cond_6

    .line 1499
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setNewMessageFocus()V
    .locals 2

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4260
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 4280
    :goto_0
    return-void

    .line 4261
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4262
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 4264
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4277
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 1

    .prologue
    .line 1295
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 1296
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 1297
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 1306
    return-void
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 7
    .parameter "toReplaceMedia"

    .prologue
    const/4 v6, 0x0

    .line 2661
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2662
    const v2, 0x7f080142

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2663
    .local v1, unableToAttach:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2685
    .end local v1           #unableToAttach:Ljava/lang/String;
    :goto_0
    return-void

    .line 2667
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2668
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2669
    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2672
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    if-nez v2, :cond_1

    .line 2673
    new-instance v2, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 2677
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    new-instance v3, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v3, p0, p1}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2683
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "messageId"

    .prologue
    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 478
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 480
    return-void
.end method

.method private updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 17
    .parameter "message"

    .prologue
    .line 1989
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1992
    .local v12, value:Landroid/content/ContentValues;
    :try_start_0
    const-string v13, "Compose >>"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MsgCompose:LogProvider >>>time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " | number : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " | contactid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " | messageid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " | m_subject : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string v13, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1999
    const-string v13, "type"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2000
    const-string v13, "contactid"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2001
    const-string v13, "messageid"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2002
    const-string v13, "m_subject"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x32

    if-le v13, v14, :cond_1

    .line 2005
    const-string v13, "m_content"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x31

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2011
    .local v9, toAddress:[Ljava/lang/String;
    move-object v3, v9

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v3, v6

    .line 2012
    .local v2, address:Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2013
    .local v11, toSplitAddress:[Ljava/lang/String;
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    array-length v8, v4

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v10, v4, v5

    .line 2014
    .local v10, toEmail:Ljava/lang/String;
    const-string v13, "@"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2015
    const-string v13, "number"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "content://logs/email"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2013
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2007
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v9           #toAddress:[Ljava/lang/String;
    .end local v10           #toEmail:Ljava/lang/String;
    .end local v11           #toSplitAddress:[Ljava/lang/String;
    :cond_1
    const-string v13, "m_content"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2020
    :catch_0
    move-exception v13

    .line 2023
    :cond_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 2024
    return-void

    .line 2011
    .restart local v2       #address:Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #toAddress:[Ljava/lang/String;
    .restart local v11       #toSplitAddress:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1
.end method

.method private updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 9
    .parameter "message"
    .parameter "account"
    .parameter "hasAttachments"

    .prologue
    .line 1730
    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1731
    :cond_0
    invoke-static {}, Lcom/android/email/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1733
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 1734
    new-instance v4, Lcom/android/email/mail/Address;

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/email/mail/Address;->pack()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1735
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1736
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1737
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1740
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1759
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 1761
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** importance is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1763
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1767
    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v6, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 1768
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v7, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 1769
    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 1770
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1775
    :goto_0
    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1776
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 1778
    const/4 v4, 0x1

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1781
    const/4 v4, 0x0

    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 1783
    iput-boolean p3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1786
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 1787
    const-string v4, "com.android.email.intent.action.REPLY"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.email.intent.action.REPLY_ALL"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1789
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    .line 1793
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1796
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1797
    .local v1, fromAsString:Ljava/lang/String;
    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1798
    :cond_4
    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1799
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1800
    .local v2, subject:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1801
    .local v3, to:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, cc:Ljava/lang/String;
    const v4, 0x7f080059

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    if-eqz v3, :cond_7

    move-object v7, v3

    :goto_1
    aput-object v7, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_8

    move-object v7, v0

    :goto_2
    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1811
    .end local v0           #cc:Ljava/lang/String;
    .end local v1           #fromAsString:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 1772
    :cond_6
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    goto/16 :goto_0

    .line 1802
    .restart local v0       #cc:Ljava/lang/String;
    .restart local v1       #fromAsString:Ljava/lang/String;
    .restart local v2       #subject:Ljava/lang/String;
    .restart local v3       #to:Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto :goto_1

    :cond_8
    const-string v7, ""

    goto :goto_2

    .line 1806
    .end local v0           #cc:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_9
    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1807
    const v4, 0x7f08005a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto :goto_3
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setTitle(I)V

    .line 1523
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method initFromIntent(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 3831
    const-string v16, "android.intent.extra.EMAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3832
    .local v6, extraStrings:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3835
    :cond_0
    const-string v16, "android.intent.extra.CC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3836
    if-eqz v6, :cond_1

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3839
    :cond_1
    const-string v16, "android.intent.extra.BCC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3840
    if-eqz v6, :cond_2

    .line 3841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3843
    :cond_2
    const-string v16, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3844
    .local v5, extraString:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3853
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3854
    .local v4, dataUri:Landroid/net/Uri;
    if-eqz v4, :cond_4

    .line 3855
    const-string v16, "mailto"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3856
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 3867
    :cond_4
    :goto_0
    const-string v16, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 3868
    .local v11, text:Ljava/lang/CharSequence;
    if-eqz v11, :cond_5

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getSignature()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3873
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 3879
    :cond_5
    const-string v16, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 3880
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 3881
    .local v14, type:Ljava/lang/String;
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 3882
    .local v10, stream:Landroid/net/Uri;
    const-string v16, "Compose >>"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "stream Uri : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    if-eqz v10, :cond_6

    if-eqz v14, :cond_6

    .line 3902
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3907
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 3913
    .end local v10           #stream:Landroid/net/Uri;
    .end local v14           #type:Ljava/lang/String;
    :cond_6
    const-string v16, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 3915
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3916
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v8, :cond_8

    .line 3918
    const/4 v13, 0x0

    .line 3920
    .local v13, totalAttachmentSize:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 3921
    .local v9, parcelable:Landroid/os/Parcelable;
    move-object v0, v9

    check-cast v0, Landroid/net/Uri;

    move-object v15, v0

    .line 3922
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_7

    .line 3923
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v3

    .line 3930
    .local v3, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3932
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v13, v0

    .line 3934
    const/high16 v16, 0x50

    move v0, v13

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    .line 3950
    .end local v3           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v9           #parcelable:Landroid/os/Parcelable;
    .end local v13           #totalAttachmentSize:I
    .end local v15           #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v16

    if-lez v16, :cond_9

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 3953
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v16

    if-lez v16, :cond_a

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 3956
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 3958
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3959
    return-void

    .line 3858
    .end local v11           #text:Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 3859
    .local v12, toText:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    const-string v17, ","

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3939
    .end local v12           #toText:Ljava/lang/String;
    .restart local v3       #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v9       #parcelable:Landroid/os/Parcelable;
    .restart local v11       #text:Ljava/lang/CharSequence;
    .restart local v13       #totalAttachmentSize:I
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_c
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    goto/16 :goto_1
.end method

.method isAddressAllValid()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2039
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v5, v1, v7

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v5, v1, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v6, v1, v5

    .local v1, arr$:[Landroid/widget/TextView;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 2040
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2041
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2042
    const v5, 0x7f08005d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 2046
    .end local v0           #addresses:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :goto_1
    return v5

    .line 2039
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v4       #view:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addresses:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :cond_1
    move v5, v8

    .line 2046
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 30
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2983
    const/16 v25, 0x0

    .line 2985
    .local v25, uri:Landroid/net/Uri;
    if-nez p3, :cond_1

    .line 3368
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3297
    :cond_2
    :goto_1
    const/16 v27, 0x64

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 3323
    :cond_3
    :goto_2
    const/16 v27, -0x1

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const/16 v27, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xa

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xb

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xc

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xd

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xe

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    const/16 v27, 0xf

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 3363
    :cond_4
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3366
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    goto/16 :goto_0

    .line 3001
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .line 3011
    .local v26, view:Landroid/widget/MultiAutoCompleteTextView;
    :goto_3
    const-string v27, "recents"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 3013
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 3004
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto :goto_3

    .line 3008
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto :goto_3

    .line 3018
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .line 3027
    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "result"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 3028
    .local v23, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3035
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 3036
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 3037
    .local v24, tempIdAndAddress:Ljava/lang/String;
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onActivityResult: an iterator = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const/16 v27, 0x0

    const-string v28, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 3040
    .local v15, id:Ljava/lang/String;
    const-string v27, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3041
    .local v3, address:Ljava/lang/String;
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onActivityResult: id = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " address = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->queryContactInfoById(J)Ljava/lang/String;

    move-result-object v6

    .line 3044
    .local v6, contactName:Ljava/lang/String;
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onActivityResult: name = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 3048
    .local v22, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, " <"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, ">,"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3021
    .end local v3           #address:Ljava/lang/String;
    .end local v6           #contactName:Ljava/lang/String;
    .end local v15           #id:Ljava/lang/String;
    .end local v16           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22           #sbuf:Ljava/lang/StringBuffer;
    .end local v23           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #tempIdAndAddress:Ljava/lang/String;
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto/16 :goto_4

    .line 3025
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto/16 :goto_4

    .line 3052
    .restart local v16       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v23       #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 3058
    .end local v16           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v23           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :sswitch_2
    const-string v27, "namecard_result"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3059
    .local v20, namecard:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v21

    .line 3067
    .local v21, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3088
    .end local v20           #namecard:Ljava/lang/String;
    .end local v21           #position:I
    :sswitch_3
    const-string v27, "result"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3089
    .local v5, calendar:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    .line 3097
    .local v7, cursorPositionByAddCalendar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v7

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3105
    .end local v5           #calendar:Ljava/lang/String;
    .end local v7           #cursorPositionByAddCalendar:I
    :sswitch_4
    const-string v27, "memotext"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3106
    .local v19, memo:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    .line 3114
    .local v8, cursorPositionByAddMemo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v8

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3124
    .end local v8           #cursorPositionByAddMemo:I
    .end local v19           #memo:Ljava/lang/String;
    :sswitch_5
    const-string v27, "FILE"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3134
    .local v11, filePaths:[Ljava/lang/String;
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v10, v4, v14

    .line 3135
    .local v10, filePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3136
    .local v9, f:Ljava/io/File;
    if-eqz v9, :cond_a

    .line 3139
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3134
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 3147
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v11           #filePaths:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :sswitch_6
    const-string v27, "Email"

    const-string v28, "onActivityResult: requestCode = REQUEST_CODE_ATTACH_IMAGE"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    const/16 v18, 0x0

    .line 3150
    .local v18, mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3152
    if-nez v18, :cond_b

    .line 3154
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_IMAGE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3158
    :cond_b
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "REQUEST_CODE_ATTACH_IMAGE file path = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3161
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_c

    .line 3162
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 3166
    :cond_c
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3174
    .end local v9           #f:Ljava/io/File;
    .end local v18           #mPath:Ljava/lang/String;
    :sswitch_7
    const-string v27, "uri-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3175
    .local v12, fileString:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 3177
    .local v13, fileUri:Landroid/net/Uri;
    if-eqz v13, :cond_f

    .line 3179
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 3180
    .restart local v18       #mPath:Ljava/lang/String;
    if-eqz v18, :cond_e

    .line 3182
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3183
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_d

    .line 3184
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 3188
    :cond_d
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3194
    .end local v9           #f:Ljava/io/File;
    :cond_e
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3200
    .end local v18           #mPath:Ljava/lang/String;
    :cond_f
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3209
    .end local v12           #fileString:Ljava/lang/String;
    .end local v13           #fileUri:Landroid/net/Uri;
    :sswitch_8
    const-string v27, "Email"

    const-string v28, "onActivityResult: requestCode = REQUEST_CODE_ATTACH_VIDEO"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const/16 v18, 0x0

    .line 3212
    .restart local v18       #mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3214
    if-nez v18, :cond_10

    .line 3216
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_VIDEO file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3220
    :cond_10
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "REQUEST_CODE_ATTACH_VIDEO file path = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3223
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_11

    .line 3224
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 3228
    :cond_11
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_VIDEO file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3236
    .end local v9           #f:Ljava/io/File;
    .end local v18           #mPath:Ljava/lang/String;
    :sswitch_9
    const-string v27, "FILE_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    .end local v25           #uri:Landroid/net/Uri;
    check-cast v25, Landroid/net/Uri;

    .line 3237
    .restart local v25       #uri:Landroid/net/Uri;
    if-eqz v25, :cond_14

    .line 3239
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 3240
    .restart local v18       #mPath:Ljava/lang/String;
    if-eqz v18, :cond_13

    .line 3242
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3243
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_12

    .line 3244
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 3248
    :cond_12
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3254
    .end local v9           #f:Ljava/io/File;
    :cond_13
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3260
    .end local v18           #mPath:Ljava/lang/String;
    :cond_14
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3267
    :sswitch_a
    const-string v27, "Email"

    const-string v28, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    const/16 v18, 0x0

    .line 3270
    .restart local v18       #mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3272
    if-nez v18, :cond_15

    .line 3274
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_RECORD_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3278
    :cond_15
    const-string v27, "Email"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "REQUEST_CODE_RECORD_SOUND file path = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3281
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_16

    .line 3282
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto/16 :goto_1

    .line 3286
    :cond_16
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3304
    .end local v9           #f:Ljava/io/File;
    .end local v18           #mPath:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    .line 3305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 3308
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 3313
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 2989
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_a
        0x1e -> :sswitch_2
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x3e9 -> :sswitch_5
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 847
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 849
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 850
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 852
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    if-eqz v0, :cond_3

    .line 853
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 856
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v0, v1, :cond_4

    .line 857
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscardPopup()V

    .line 864
    :goto_0
    return-void

    .line 861
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3464
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3528
    :goto_0
    return-void

    .line 3466
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    .line 3473
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 3479
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onBackPressed()V

    goto :goto_0

    .line 3483
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    .line 3486
    :sswitch_4
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3489
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_0

    .line 3490
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 3491
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 3492
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 3493
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    .line 3494
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput v6, v3, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 3497
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3498
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3499
    .local v0, attachView:Landroid/view/View;
    const v3, 0x7f0700b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3500
    .local v1, delete:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3497
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3503
    .end local v0           #attachView:Landroid/view/View;
    .end local v1           #delete:Landroid/widget/ImageButton;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto :goto_0

    .line 3507
    .end local v2           #i:I
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGalSearch()V

    goto :goto_0

    .line 3512
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRecent()V

    goto :goto_0

    .line 3517
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto :goto_0

    .line 3520
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGroup()V

    goto :goto_0

    .line 3523
    :sswitch_9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 3464
    :sswitch_data_0
    .sparse-switch
        0x7f070099 -> :sswitch_9
        0x7f0700a6 -> :sswitch_4
        0x7f0700a8 -> :sswitch_0
        0x7f0700a9 -> :sswitch_1
        0x7f0700aa -> :sswitch_2
        0x7f0700ab -> :sswitch_6
        0x7f0700ac -> :sswitch_7
        0x7f0700ad -> :sswitch_8
        0x7f0700ae -> :sswitch_5
        0x7f0700b1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1962
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1964
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsKeyboardOpen:Z

    .line 1967
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v0, v4

    .line 1968
    .local v0, isLandscape:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 1969
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1983
    :cond_0
    return-void

    .end local v0           #isLandscape:Z
    :cond_1
    move v1, v5

    .line 1966
    goto :goto_0

    :cond_2
    move v0, v5

    .line 1967
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "com.android.email.intent.action.EDIT_DRAFT"

    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 511
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "inside message compose"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageCompose.java >>>>> onCreate() >>>>> 506"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->requestWindowFeature(I)Z

    .line 519
    const v5, 0x7f030025

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 521
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 523
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    .line 524
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 525
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    .line 526
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 528
    const-wide/16 v0, -0x1

    .line 529
    .local v0, draftId:J
    if-eqz p1, :cond_0

    .line 531
    const-string v5, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 533
    const-string v5, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v5, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 537
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 539
    cmp-long v5, v0, v10

    if-eqz v5, :cond_1

    .line 543
    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v12, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 544
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-wide v0, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 548
    :cond_1
    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SENDTO"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SEND"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 552
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 554
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 555
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 556
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 557
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 559
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 577
    :goto_0
    const-string v5, "com.android.email.intent.action.REPLY"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.REPLY_ALL"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.FORWARD"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 590
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V

    .line 595
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    new-instance v6, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 649
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 673
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 682
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 684
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 691
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 696
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v5

    if-nez v5, :cond_4

    .line 698
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageCompose.java >>>>> onCreate() >>>>> 688"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    const v5, 0x7f08018a

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 700
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 703
    :cond_4
    return-void

    .line 563
    :cond_5
    cmp-long v5, v0, v10

    if-eqz v5, :cond_6

    move-wide v3, v0

    .line 564
    .local v3, messageId:J
    :goto_1
    cmp-long v5, v3, v10

    if-eqz v5, :cond_7

    .line 565
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 566
    new-instance v5, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v6, v9, [Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 563
    .end local v3           #messageId:J
    :cond_6
    const-string v5, "message_id"

    invoke-virtual {v2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v3, v5

    goto :goto_1

    .line 568
    .restart local v3       #messageId:J
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 569
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 572
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 573
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 3717
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3718
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3719
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 902
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 903
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onDestroy() >>>>> 890"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 906
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 907
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 908
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 909
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 910
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 914
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_3

    .line 926
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 928
    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "view"
    .parameter "focused"

    .prologue
    .line 1526
    if-nez p2, :cond_a

    .line 1528
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 1531
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1533
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1534
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1545
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_2

    .line 1553
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1555
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 1587
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1588
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1589
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1606
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_7

    .line 1607
    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->onAdjustFieldHeight(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 1609
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1610
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1611
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1612
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1613
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1614
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1615
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1620
    :cond_7
    return-void

    .line 1536
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1537
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1539
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1568
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_b

    .line 1575
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 1579
    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    if-eqz v1, :cond_2

    .line 1580
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onHideCcBcc()V

    goto/16 :goto_1
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

    .line 3434
    const/4 v3, 0x0

    .line 3436
    .local v3, length:I
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3437
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3438
    .local v2, bufToView:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3439
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3440
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3441
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3444
    .end local v2           #bufToView:Ljava/lang/StringBuffer;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3445
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3446
    .local v1, bufCcView:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3447
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3448
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3449
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3452
    .end local v1           #bufCcView:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3453
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3454
    .local v0, bufBccView:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3455
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3456
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3457
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3460
    .end local v0           #bufBccView:Ljava/lang/StringBuffer;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 3674
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3710
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 3712
    :goto_0
    return v0

    .line 3681
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    .line 3712
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3684
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPriority()V

    goto :goto_1

    .line 3706
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddText()V

    goto :goto_1

    .line 3674
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700e0 -> :sswitch_1
        0x7f07012f -> :sswitch_0
        0x7f070131 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 884
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 885
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v1, 0x7f070130

    const/4 v2, 0x1

    .line 3726
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

    if-eqz v0, :cond_1

    .line 3728
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3733
    :goto_0
    const v0, 0x7f070132

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3734
    return v2

    .line 3730
    :cond_1
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "com.android.email.activity.MessageCompose.quotedTextShown"

    .line 960
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 961
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, "com.android.email.activity.MessageCompose.bccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 969
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 970
    return-void

    :cond_0
    move v1, v3

    .line 961
    goto :goto_0

    :cond_1
    move v1, v3

    .line 963
    goto :goto_1

    :cond_2
    move v1, v3

    .line 965
    goto :goto_2

    :cond_3
    move v1, v3

    .line 967
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 787
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 788
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 939
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 947
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 948
    .local v0, draftId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 949
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 951
    :cond_0
    const-string v2, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    const-string v2, "com.android.email.activity.MessageCompose.bccShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    const-string v2, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    const-string v2, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    return-void

    :cond_1
    move v3, v4

    .line 951
    goto :goto_0

    :cond_2
    move v3, v4

    .line 952
    goto :goto_1

    :cond_3
    move v3, v4

    .line 953
    goto :goto_2
.end method

.method processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 13
    .parameter "message"
    .parameter "account"

    .prologue
    .line 4149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 4150
    iget-object v12, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4151
    .local v12, subject:Ljava/lang/String;
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4152
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

    .line 4155
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4157
    .local v11, strRe:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4158
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4162
    :goto_0
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    .end local v11           #strRe:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 4248
    return-void

    .line 4160
    .restart local v11       #strRe:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4163
    .end local v11           #strRe:Ljava/lang/String;
    :cond_3
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4164
    :cond_4
    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4165
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->setupAddressViewsForwardOld(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 4167
    :cond_5
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4169
    .local v10, strFwd:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4171
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 4175
    .local v9, sharedPref:Landroid/content/SharedPreferences;
    const-string v0, "forward_with_files"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4176
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachments(Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4180
    const/4 v8, 0x0

    .line 4181
    .local v8, isExchange:Z
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4182
    :cond_6
    const/4 v8, 0x0

    .line 4186
    :goto_3
    if-nez v8, :cond_1

    .line 4187
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .end local v8           #isExchange:Z
    .end local v9           #sharedPref:Landroid/content/SharedPreferences;
    :cond_7
    move-object v1, v12

    .line 4169
    goto :goto_2

    .line 4184
    .restart local v8       #isExchange:Z
    .restart local v9       #sharedPref:Landroid/content/SharedPreferences;
    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    .line 4218
    .end local v8           #isExchange:Z
    .end local v9           #sharedPref:Landroid/content/SharedPreferences;
    .end local v10           #strFwd:Ljava/lang/String;
    :cond_9
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4220
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4221
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 4224
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4225
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4226
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v7

    .line 4227
    .local v7, cc:[Lcom/android/email/mail/Address;
    array-length v0, v7

    if-lez v0, :cond_a

    .line 4228
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0, v7}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4229
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4231
    :cond_a
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4232
    .local v6, bcc:[Lcom/android/email/mail/Address;
    array-length v0, v6

    if-lez v0, :cond_b

    .line 4233
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4234
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4237
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 4239
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4242
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto/16 :goto_1
.end method

.method processSourceMessageGuarded(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter "message"
    .parameter "account"

    .prologue
    .line 4126
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v0, :cond_0

    .line 4127
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V

    .line 4128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 4137
    :cond_0
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4138
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    :cond_1
    return-void
.end method

.method public queryContactInfoById(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2930
    const/4 v8, 0x0

    .line 2931
    .local v8, name:Ljava/lang/String;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2933
    .local v6, PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2935
    .local v1, Uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2942
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2943
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 2957
    .end local v8           #name:Ljava/lang/String;
    .local v9, name:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2950
    .end local v9           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2951
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2954
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 2957
    .end local v8           #name:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    goto :goto_0

    .line 2954
    .end local v9           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 781
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 782
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
    .line 4068
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4069
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 4070
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4072
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4074
    if-eqz p5, :cond_2

    .line 4076
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4077
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4079
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

    .line 4080
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4079
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4083
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 4084
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4085
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4088
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
    .line 4104
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4105
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 4106
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4108
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4112
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4114
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

    .line 4115
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4118
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 4119
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4120
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4122
    :cond_2
    return-void
.end method

.method public showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    const v3, 0x3f666666

    const/high16 v2, 0x3f80

    .line 4475
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4478
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4480
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4481
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4482
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4483
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4494
    :goto_0
    return-void

    .line 4486
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4488
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4489
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    const v1, 0x3f59999a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4490
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4491
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    goto :goto_0
.end method
