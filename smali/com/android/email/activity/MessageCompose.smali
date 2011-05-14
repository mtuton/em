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

    .line 208
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 290
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

    .line 298
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 216
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    .line 234
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 276
    new-instance v0, Lcom/android/email/activity/MessageCompose$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$Listener;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    .line 338
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 339
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 350
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 351
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentPossible:Z

    .line 354
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 363
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    .line 705
    new-instance v0, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 4281
    return-void
.end method

.method private IsEAS()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "isEAS(): return - :"

    const-string v8, "Compose >>"

    .line 736
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 737
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v4, :cond_0

    move v4, v10

    .line 771
    :goto_0
    return v4

    .line 740
    :cond_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 741
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    .line 751
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 753
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_3

    .line 754
    iput-boolean v10, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 755
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

    .line 756
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 743
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 744
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

    .line 745
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto :goto_0

    .line 748
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageCompose;->mCheckedAccountId:J

    goto :goto_1

    .line 759
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 762
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_4

    .line 763
    iput-boolean v10, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 764
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

    .line 765
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0

    .line 768
    :cond_4
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 769
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    .line 770
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

    .line 771
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEAS:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/email/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Message;)Lcom/android/email/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    return p1
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 397
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v1, i:Landroid/content/Intent;
    const-string v2, "account_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 403
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
    .line 417
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 420
    const-string v2, "account_id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/4 v2, 0x1

    .line 427
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 423
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 426
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 427
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 471
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 472
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 448
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 449
    return-void
.end method

.method public static actionForward(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "old"

    .prologue
    .line 459
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 460
    return-void

    .line 459
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
    .line 439
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 440
    return-void

    .line 439
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "address"

    .prologue
    .line 1653
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1654
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1659
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
    .line 1634
    if-nez p2, :cond_1

    .line 1640
    :cond_0
    return-void

    .line 1637
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

    .line 1638
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1643
    if-nez p2, :cond_1

    .line 1649
    :cond_0
    return-void

    .line 1646
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

    .line 1647
    .local v3, oneAddress:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAttachment(IZ)V
    .locals 7
    .parameter "type"
    .parameter "toReplaceMedia"

    .prologue
    .line 2488
    if-eqz p2, :cond_0

    .line 2492
    :cond_0
    const/4 v2, 0x0

    .line 2493
    .local v2, folderPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2494
    .local v0, contentType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2498
    .local v4, requestCode:I
    packed-switch p1, :pswitch_data_0

    .line 2628
    :goto_0
    return-void

    .line 2503
    :pswitch_0
    const-string v0, "image/*"

    .line 2504
    const/16 v4, 0xa

    .line 2506
    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 2510
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2511
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2513
    const-string v5, "return-uri"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2514
    const/16 v5, 0xb

    invoke-virtual {p0, v3, v5}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2522
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "video/*"

    .line 2523
    const/16 v4, 0xc

    .line 2525
    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 2534
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getVideoCaptureDurationLimit()I

    move-result v1

    .line 2535
    .local v1, durationLimit:I
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2536
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.videoQuality"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2537
    const-string v5, "android.intent.extra.sizeLimit"

    const/high16 v6, 0x50

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2538
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2542
    const/16 v5, 0xd

    invoke-virtual {p0, v3, v5}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2555
    .end local v1           #durationLimit:I
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v2, "/sdcard/Sounds"

    .line 2556
    const-string v0, "audio/*"

    .line 2557
    const/16 v4, 0xe

    .line 2558
    invoke-static {p0, v2, v0, v4}, Lcom/android/email/activity/MessageCompose;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2564
    :pswitch_5
    const/16 v5, 0xf

    invoke-static {p0, v5, p2}, Lcom/android/email/activity/MessageCompose;->recordSound(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 2568
    :pswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V

    goto :goto_0

    .line 2498
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
    .line 2765
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 2767
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V
    .locals 28
    .parameter "attachment"
    .parameter "isExchange"

    .prologue
    .line 2775
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x500000

    cmp-long v24, v24, v26

    if-lez v24, :cond_0

    .line 2776
    const v24, 0x7f08005f

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 2902
    :goto_0
    return-void

    .line 2783
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

    .line 2784
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

    .line 2789
    const v24, 0x7f08005f

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2793
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

    .line 2795
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    const v25, 0x7f030027

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 2797
    .local v22, view:Landroid/view/View;
    const v24, 0x7f0700b0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2798
    .local v16, nameView:Landroid/widget/TextView;
    const v24, 0x7f0700b1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 2800
    .local v7, delete:Landroid/widget/ImageButton;
    if-eqz p2, :cond_2

    .line 2801
    const/16 v24, 0x8

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2815
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_8

    .line 2817
    const-wide/16 v5, 0x0

    .line 2820
    .local v5, count:J
    const/4 v13, 0x0

    .line 2821
    .local v13, inStream:Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2824
    .local v11, fileUri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2825
    .local v20, start:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 2826
    const/4 v15, 0x0

    .line 2827
    .local v15, n:I
    const/16 v24, 0xff

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v4, v0

    .line 2828
    .local v4, buffer:[B
    :goto_1
    const/16 v24, -0x1

    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move/from16 v0, v24

    move v1, v15

    if-eq v0, v1, :cond_3

    .line 2830
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v5, v5, v24

    goto :goto_1

    .line 2832
    :cond_3
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2834
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

    .line 2843
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2844
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

    .line 2845
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 2856
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

    .line 2857
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2858
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2864
    const v24, 0x7f0700af

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2865
    .local v14, iv:Landroid/widget/ImageView;
    const/16 v19, 0x0

    .line 2866
    .local v19, previewIcon:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 2868
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

    .line 2871
    if-eqz v18, :cond_6

    .line 2874
    const/16 v23, 0x50

    .line 2875
    .local v23, width:I
    const/16 v12, 0x3c

    .line 2877
    .local v12, height:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    .line 2878
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 2879
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move v0, v12

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 2880
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 2882
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

    .line 2894
    .end local v12           #height:I
    .end local v23           #width:I
    :cond_6
    :goto_3
    if-eqz v19, :cond_7

    .line 2895
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2900
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    goto/16 :goto_0

    .line 2835
    .end local v14           #iv:Landroid/widget/ImageView;
    .end local v18           #orgImage:Landroid/graphics/Bitmap;
    .end local v19           #previewIcon:Landroid/graphics/Bitmap;
    .restart local v5       #count:J
    .restart local v11       #fileUri:Landroid/net/Uri;
    .restart local v13       #inStream:Ljava/io/InputStream;
    :catch_0
    move-exception v24

    move-object/from16 v8, v24

    .line 2837
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2843
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2844
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

    .line 2845
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 2838
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 2840
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2843
    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2844
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

    .line 2845
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 2843
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v24

    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2844
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

    .line 2845
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v24

    .line 2849
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

    .line 2885
    .restart local v14       #iv:Landroid/widget/ImageView;
    .restart local v18       #orgImage:Landroid/graphics/Bitmap;
    .restart local v19       #previewIcon:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v24

    move-object/from16 v8, v24

    .line 2886
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 2889
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v24

    move-object/from16 v17, v24

    .line 2890
    .local v17, oe:Ljava/lang/OutOfMemoryError;
    const-string v24, "Compose >>"

    const-string v25, "Thumnail Out of Memory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private addSignature()V
    .locals 8

    .prologue
    const-string v7, "signature"

    const-string v6, "<br />"

    const-string v5, ""

    .line 1229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1232
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "add_signature"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    const-string v3, "signature"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1243
    const-string v3, "signature"

    const-string v3, ""

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1251
    .local v2, signature:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, escapedSignature:Ljava/lang/String;
    const-string v3, "\r"

    const-string v4, "<br />"

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br />"

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1254
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

    .line 1247
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
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, -0x1

    .line 4407
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4411
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4413
    .local v1, addresses:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    .line 4415
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 4417
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4419
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4415
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4425
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4427
    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_2

    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 4428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4432
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4433
    .local v4, viewbuf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4442
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #viewbuf:Ljava/lang/StringBuffer;
    :cond_3
    return-void
.end method

.method private arrangeAttachments()V
    .locals 8

    .prologue
    .line 4448
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 4455
    const v6, 0x7f0700a2

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4456
    .local v3, attachmentsHeaderInfo:Landroid/widget/TextView;
    const-wide/16 v1, 0x0

    .line 4457
    .local v1, attachmentsFileSize:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 4458
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4459
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 4460
    .local v0, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v1, v6

    .line 4457
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4462
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

    .line 4468
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
    .line 887
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 888
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 890
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 724
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const/4 v0, 0x0

    .line 731
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

    .line 2905
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2907
    .local v3, preview_bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    move-object v5, v6

    .line 2924
    :goto_0
    return-object v5

    .line 2910
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2911
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2913
    .local v2, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2914
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2916
    .local v1, dst:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move-object v5, v6

    .line 2917
    goto :goto_0

    .line 2919
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2920
    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2922
    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v5, v3

    .line 2924
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
    .line 4010
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

    .line 4019
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 4020
    .local v6, plainTextFlag:Z
    :goto_0
    if-eqz v6, :cond_3

    move-object v2, p1

    .line 4021
    .local v2, text:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_1

    .line 4022
    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4026
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4027
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4028
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    :cond_1
    return-void

    .end local v2           #text:Ljava/lang/String;
    .end local v6           #plainTextFlag:Z
    :cond_2
    move v6, v1

    .line 4019
    goto :goto_0

    .restart local v6       #plainTextFlag:Z
    :cond_3
    move-object v2, p2

    .line 4020
    goto :goto_1
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/email/mail/Address;
    .locals 2
    .parameter "view"

    .prologue
    .line 1668
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1669
    .local v0, addresses:[Lcom/android/email/mail/Address;
    return-object v0
.end method

.method private getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 4

    .prologue
    .line 1813
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1814
    .local v1, count:I
    new-array v0, v1, [Lcom/android/email/provider/EmailContent$Attachment;

    .line 1815
    .local v0, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1816
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Attachment;

    aput-object v3, v0, v2

    .line 1815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1818
    :cond_0
    return-object v0
.end method

.method public static getAvailableStorage()J
    .locals 8

    .prologue
    .line 2645
    const/4 v1, 0x0

    .line 2648
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v1, "/data"

    .line 2649
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2650
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

    .line 2653
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

    .line 2428
    const/4 v2, 0x0

    .line 2429
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2431
    .local v9, mPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2433
    if-eqz v2, :cond_5

    .line 2435
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

    .line 2436
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    const-string v0, "Email"

    const-string v0, "getFilePath Uri scheme is file"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2441
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

    .line 2482
    :goto_0
    return-object v0

    .line 2445
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2447
    const-string v0, "Email"

    const-string v0, "getFilePath Uri scheme is content"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2452
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2453
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

    .line 2458
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2459
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

    .line 2467
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2464
    :cond_3
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2465
    .local v8, filePath:Ljava/lang/String;
    move-object v9, v8

    .line 2467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 2470
    goto/16 :goto_0

    .line 2474
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    const-string v0, "Email"

    const-string v0, "getFilePath URI path is not normal scheme"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v3

    .line 2482
    goto/16 :goto_0

    .line 2479
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

    .line 2383
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2386
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

    .line 2423
    .end local v9           #mPath:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2390
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2392
    const/4 v9, 0x0

    .line 2393
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

    .line 2396
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2397
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

    .line 2402
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2403
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

    .line 2411
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2408
    :cond_3
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2409
    .local v8, filePath:Ljava/lang/String;
    move-object v9, v8

    .line 2411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2414
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

    .line 2416
    goto/16 :goto_0

    .line 2420
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

    .line 2423
    goto/16 :goto_0
.end method

.method private getOrCreateDraftId()J
    .locals 6

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    monitor-enter v1

    .line 1828
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1829
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    .line 1838
    :goto_0
    return-wide v1

    .line 1832
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1

    .line 1833
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1835
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1836
    .local v0, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1837
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/email/provider/EmailContent$Message;I)V

    .line 1838
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1836
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1839
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
    .line 1663
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1664
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

    .line 1265
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1268
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    const-string v2, "add_signature"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1269
    const-string v2, ""

    move-object v2, v4

    .line 1282
    :goto_0
    return-object v2

    .line 1273
    :cond_0
    const-string v2, "signature"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1275
    const-string v2, "signature"

    const-string v2, ""

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, signature:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 1282
    goto :goto_0

    .line 1279
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
    .line 1698
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1699
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1701
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1712
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1715
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    const-string v1, "importance"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    return-object v0
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 2378
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

    .line 973
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 974
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 977
    const v5, 0x7f07007c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    .line 978
    const v5, 0x7f070097

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    .line 979
    const v5, 0x7f070099

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    .line 980
    const v5, 0x7f07009c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    .line 983
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 984
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 986
    const v5, 0x7f07009b

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 987
    const v5, 0x7f07009d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 988
    const v5, 0x7f07009e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 989
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 990
    const v5, 0x7f07009f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    .line 998
    const v5, 0x7f0700a8

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 999
    const v5, 0x7f0700aa

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1002
    const v5, 0x7f0700a9

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 1015
    const v5, 0x7f0700a3

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 1016
    const v5, 0x7f0700a4

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 1017
    const v5, 0x7f0700a6

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    .line 1018
    const v5, 0x7f0700a7

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 1029
    const v5, 0x7f07009a

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    .line 1031
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    .line 1033
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    .line 1034
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    .line 1035
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    .line 1036
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    const v6, 0x7f0700ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    .line 1037
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1042
    const v5, 0x7f0700a0

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 1043
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/email/activity/MessageCompose$6;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    new-instance v4, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1073
    .local v4, watcher:Landroid/text/TextWatcher;
    new-instance v2, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 1118
    .local v2, recipientFilter:Landroid/text/InputFilter;
    new-array v3, v11, [Landroid/text/InputFilter;

    aput-object v2, v3, v10

    .line 1124
    .local v3, recipientFilters:[Landroid/text/InputFilter;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1125
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1128
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1129
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1130
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1136
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1139
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    new-instance v5, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v5, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 1142
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 1144
    .local v0, addressValidator:Lcom/android/email/EmailAddressValidator;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 1146
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1147
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1148
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1150
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1151
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1152
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1154
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1155
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v6}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1156
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1159
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1160
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1161
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1162
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1163
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1169
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1210
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addSignature()V

    .line 1222
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1223
    .local v1, config:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v5, v11

    :goto_0
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1225
    return-void

    :cond_0
    move v5, v10

    .line 1223
    goto :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 14
    .parameter "mailToString"

    .prologue
    const/4 v13, 0x0

    .line 3969
    const-string v10, "?"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3970
    .local v4, index:I
    const-string v10, "mailto"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v5, v10, 0x1

    .line 3974
    .local v5, length:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 3975
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3979
    .local v8, to:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v11, " ,"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
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

    .line 3989
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "cc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3990
    .local v2, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3992
    const-string v10, "to"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3993
    .local v6, otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3995
    const-string v10, "bcc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3996
    .local v0, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3998
    const-string v10, "subject"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 3999
    .local v7, subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 4000
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4003
    :cond_0
    const-string v10, "body"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4004
    .local v1, body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 4005
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v10, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4007
    :cond_1
    return-void

    .line 3977
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

    .line 3980
    .end local v8           #to:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 3981
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

    .line 2050
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

    .line 2051
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2052
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v8

    .line 2067
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :goto_1
    return v5

    .line 2050
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #view:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #str:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :cond_1
    move v5, v7

    .line 2067
    goto :goto_1
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v5, "Compose >>"

    const-string v4, " : "

    .line 2710
    const-wide/16 v12, 0x0

    .line 2711
    .local v12, size:J
    const/4 v11, 0x0

    .line 2712
    .local v11, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2714
    .local v7, contentType:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2716
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2717
    .local v9, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2718
    .local v8, f:Ljava/io/File;
    if-eqz v8, :cond_0

    .line 2719
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2720
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 2721
    invoke-static {v9}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2722
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

    .line 2744
    .end local v8           #f:Ljava/io/File;
    .end local v9           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 2745
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 2747
    :cond_1
    if-nez v7, :cond_2

    .line 2748
    const-string v7, ""

    .line 2751
    :cond_2
    new-instance v6, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 2752
    .local v6, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iput-object v11, v6, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2753
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2754
    iput-wide v12, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2755
    iput-object v7, v6, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2756
    return-object v6

    .line 2726
    .end local v6           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2727
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2729
    .local v10, metadataCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 2731
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2732
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2733
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v12, v1

    .line 2734
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

    .line 2737
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2741
    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2737
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

    .line 3738
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

    .line 3740
    iget-wide v6, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 3743
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    if-nez v2, :cond_0

    move v6, v9

    .line 3777
    :goto_0
    return v6

    .line 3749
    :cond_0
    const/4 v4, 0x0

    .line 3751
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

    .line 3752
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3754
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3755
    invoke-direct {p0, v1, v10}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 3751
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3757
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    goto :goto_2

    .line 3760
    :cond_3
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v7, "@namo.co.kr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3762
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 3767
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_5
    if-eqz v4, :cond_6

    move v6, v9

    .line 3768
    goto :goto_0

    :cond_6
    move v6, v10

    .line 3777
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

    .line 1678
    const/4 v2, 0x0

    .line 1679
    .local v2, first:Lcom/android/email/mail/Address;
    const/4 v6, 0x0

    .line 1680
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

    .line 1681
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 1682
    .local v0, addresses:[Lcom/android/email/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 1683
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 1684
    aget-object v2, v0, v10

    .line 1680
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1687
    .end local v0           #addresses:[Lcom/android/email/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 1688
    const-string v8, ""

    .line 1694
    :goto_1
    return-object v8

    .line 1690
    :cond_2
    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 1691
    .local v3, friendly:Ljava/lang/String;
    if-ne v6, v11, :cond_3

    move-object v8, v3

    .line 1692
    goto :goto_1

    .line 1694
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
    .line 2635
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2636
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    sget-object v1, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2641
    return-void
.end method

.method private onAddAttachmentFromMyfiles()V
    .locals 3

    .prologue
    .line 2696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2697
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivityList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2701
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    const/high16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2702
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2703
    return-void
.end method

.method private onAddCcBcc()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2177
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 2188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 2192
    return-void
.end method

.method private onAddText()V
    .locals 3

    .prologue
    .line 2213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2214
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2216
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 2217
    new-instance v1, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    .line 2219
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddTextSelectorAdapter:Lcom/android/email/activity/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2226
    return-void
.end method

.method private onAddTextActivity(I)V
    .locals 6
    .parameter "type"

    .prologue
    const-string v5, "android.intent.action.PICK"

    .line 2265
    packed-switch p1, :pswitch_data_0

    .line 2298
    :goto_0
    :pswitch_0
    return-void

    .line 2267
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_LIST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v3, intentNamecard:Landroid/content/Intent;
    const-string v4, "additional"

    const-string v5, "namecard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    const/16 v4, 0x1e

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2280
    .end local v3           #intentNamecard:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2281
    .local v1, intentCalendar:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2282
    const/16 v4, 0x1f

    invoke-virtual {p0, v1, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2288
    .end local v1           #intentCalendar:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2289
    .local v2, intentMemo:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.memo"

    const-string v5, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2291
    const-string v4, "text/memo_string"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2292
    const/16 v4, 0x20

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2265
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
    .line 1623
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    const v0, 0x30021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1630
    :goto_0
    return-void

    .line 1627
    :cond_0
    const v0, 0x10021

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setInputType(I)V

    .line 1628
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 8
    .parameter "delButtonView"

    .prologue
    const/4 v7, 0x1

    .line 3535
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3536
    .local v1, attachmentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 3537
    .local v0, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 3538
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

    .line 3540
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3543
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

    .line 3544
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 3547
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3551
    new-instance v2, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v7, [Ljava/lang/Long;

    const/4 v4, 0x0

    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3559
    :cond_2
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3561
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    const/high16 v3, 0x50

    if-ge v2, v3, :cond_3

    .line 3563
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/android/email/EmailTwSoftkeyItem;->setClickable(Z)V

    .line 3564
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 3568
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    .line 3570
    return-void
.end method

.method private onDiscard()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2151
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 2154
    :cond_0
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2157
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    .line 2159
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2160
    return-void
.end method

.method private onDiscardPopup()V
    .locals 3

    .prologue
    .line 2128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2130
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2131
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2132
    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2133
    const v1, 0x7f08016d

    new-instance v2, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2141
    const v1, 0x7f08016f

    new-instance v2, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2148
    return-void
.end method

.method private onGalSearch()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 2106
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2107
    .local v0, accountId:J
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/email/activity/GalSearchLookUp;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2108
    .local v2, galIntent:Landroid/content/Intent;
    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 2109
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_id"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2110
    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    .line 2111
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2113
    :cond_0
    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    .line 2114
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 2115
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2124
    :goto_0
    return-void

    .line 2118
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 2119
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2122
    :cond_2
    const-string v3, "GalAccountID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2123
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onGroup()V
    .locals 3

    .prologue
    .line 3383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3384
    .local v0, groupIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "group-email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3385
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3386
    return-void
.end method

.method private onHideCcBcc()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2196
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

    .line 2198
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

    .line 2200
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2201
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 2203
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2205
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    .line 2208
    :cond_0
    return-void
.end method

.method private onPhonebook()V
    .locals 3

    .prologue
    .line 3378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3379
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "email-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3380
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3381
    return-void
.end method

.method private onPriority()V
    .locals 4

    .prologue
    .line 2232
    const/4 v0, 0x0

    .line 2233
    .local v0, PriorityType:[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .end local v0           #PriorityType:[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f08019c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const v3, 0x7f08019e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f08019d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2235
    .restart local v0       #PriorityType:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2236
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080196

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2237
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    new-instance v3, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2260
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2261
    return-void
.end method

.method private onRecent()V
    .locals 2

    .prologue
    .line 3371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/RecentList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3372
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3373
    return-void
.end method

.method private onSave()V
    .locals 1

    .prologue
    .line 2164
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2168
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 2169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2172
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 2173
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 2174
    return-void
.end method

.method private onSend()V
    .locals 5

    .prologue
    const v4, 0x7f08005c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2072
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2100
    :goto_0
    return-void

    .line 2075
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

    .line 2078
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 2079
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2084
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2086
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onSend() >>>>> 2046"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2087
    const v0, 0x7f080188

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2089
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 2095
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 2096
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2097
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 2098
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method private onShowSecurityPolicyDialog()V
    .locals 5

    .prologue
    .line 3575
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageCompose.java >>>>> onShowSecurityPolicyDialog() >>>>> 3451"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3578
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3582
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3585
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080186

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3588
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3591
    new-instance v1, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f03

    invoke-direct {v1, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 3594
    .local v1, arrayAdapter:Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
    new-instance v3, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3613
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3614
    return-void
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "act"
    .parameter "folderPath"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 2331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2332
    .local v0, myFilesIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2333
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2334
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2335
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2336
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2338
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2340
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 2321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2323
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2324
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2326
    :cond_0
    return-void
.end method

.method public static recordSound(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "requestCode"
    .parameter "toReplaceMedia"

    .prologue
    .line 2344
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2346
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.voicerecorder"

    const-string v3, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2350
    const/high16 v1, 0x50

    .line 2371
    .local v1, maxContentSize:I
    const-string v2, "remain_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2373
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2375
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
    .line 4040
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const/4 v0, 0x0

    .line 4041
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

    .line 4043
    .local v1, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4044
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4045
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 4046
    const/4 v0, 0x1

    .line 4041
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4049
    .end local v1           #address:Lcom/android/email/mail/Address;
    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2027
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_0

    .line 2032
    :goto_0
    return-void

    .line 2030
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2031
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private sendOrSaveMessage(Z)V
    .locals 10
    .parameter "send"

    .prologue
    const/4 v9, 0x0

    .line 1850
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 1851
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v5, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1858
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 1860
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1861
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 1860
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1864
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

    .line 1866
    new-instance v5, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;Z[Lcom/android/email/provider/EmailContent$Attachment;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSaveMessageTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v7, v9

    .line 1864
    goto :goto_2
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 482
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 483
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 484
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 486
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 489
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 494
    :goto_0
    return-void

    .line 492
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
    .line 498
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 501
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 502
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 504
    :cond_0
    return-void
.end method

.method private setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "data"

    .prologue
    const-string v4, ", "

    .line 828
    if-eqz p2, :cond_1

    .line 830
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, seq:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 832
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 836
    :cond_0
    const-string v2, "GALResults"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, galResulAddress:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 842
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

    .line 1457
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1462
    .local v6, cur:Landroid/database/Cursor;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1465
    .local v10, vt:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    :cond_0
    const-string v0, "emailAddress"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1468
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eq v0, v11, :cond_2

    .line 1475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1479
    :cond_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v8, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 1480
    .local v8, fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v7, 0x0

    .line 1483
    .local v7, currentAccountId:I
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1484
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 1485
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

    .line 1486
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

    .line 1487
    move v7, v9

    .line 1484
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1473
    .end local v7           #currentAccountId:I
    .end local v8           #fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eq v1, v11, :cond_4

    .line 1475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1491
    .restart local v7       #currentAccountId:I
    .restart local v8       #fromAccounts:[Lcom/android/email/activity/setup/SpinnerOption;
    :cond_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 1493
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1505
    :cond_6
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03003e

    invoke-direct {v0, p0, v1, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 1507
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f03003d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1508
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1510
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 1512
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    return-void

    .line 1496
    .restart local p0
    :cond_7
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v11, :cond_6

    .line 1498
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1499
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setNewMessageFocus()V
    .locals 2

    .prologue
    .line 4258
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4259
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 4279
    :goto_0
    return-void

    .line 4260
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4261
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 4263
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4276
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 1

    .prologue
    .line 1294
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 1295
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 1296
    new-instance v0, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 1305
    return-void
.end method

.method private showAddAttachmentDialog(Z)V
    .locals 7
    .parameter "toReplaceMedia"

    .prologue
    const/4 v6, 0x0

    .line 2660
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2661
    const v2, 0x7f080142

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2662
    .local v1, unableToAttach:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2684
    .end local v1           #unableToAttach:Ljava/lang/String;
    :goto_0
    return-void

    .line 2666
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2667
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2668
    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2671
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    if-nez v2, :cond_1

    .line 2672
    new-instance v2, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 2676
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    new-instance v3, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v3, p0, p1}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "messageId"

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 477
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private updateHistoryForEmail(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 17
    .parameter "message"

    .prologue
    .line 1988
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1991
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

    .line 1997
    const-string v13, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1998
    const-string v13, "type"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1999
    const-string v13, "contactid"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2000
    const-string v13, "messageid"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2001
    const-string v13, "m_subject"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x32

    if-le v13, v14, :cond_1

    .line 2004
    const-string v13, "m_content"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x31

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2010
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

    .line 2011
    .local v2, address:Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2012
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

    .line 2013
    .local v10, toEmail:Ljava/lang/String;
    const-string v13, "@"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2014
    const-string v13, "number"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "content://logs/email"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2012
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2006
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

    .line 2019
    :catch_0
    move-exception v13

    .line 2022
    :cond_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 2023
    return-void

    .line 2010
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
    .line 1729
    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1730
    :cond_0
    invoke-static {}, Lcom/android/email/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1732
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 1733
    new-instance v4, Lcom/android/email/mail/Address;

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/email/mail/Address;->pack()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1734
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1735
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1736
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1739
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1758
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 1760
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

    .line 1762
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1766
    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v6, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 1767
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v7, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 1768
    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 1769
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1774
    :goto_0
    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1775
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 1777
    const/4 v4, 0x1

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1780
    const/4 v4, 0x0

    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 1782
    iput-boolean p3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1785
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 1786
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

    .line 1788
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    .line 1792
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1795
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1796
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

    .line 1797
    :cond_4
    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1798
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1799
    .local v2, subject:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1800
    .local v3, to:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
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

    .line 1810
    .end local v0           #cc:Ljava/lang/String;
    .end local v1           #fromAsString:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 1771
    :cond_6
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v4, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    goto/16 :goto_0

    .line 1801
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

    .line 1805
    .end local v0           #cc:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_9
    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1806
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
    .line 1517
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setTitle(I)V

    .line 1522
    :goto_0
    return-void

    .line 1520
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
    .line 3830
    const-string v16, "android.intent.extra.EMAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3831
    .local v6, extraStrings:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3834
    :cond_0
    const-string v16, "android.intent.extra.CC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3835
    if-eqz v6, :cond_1

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3838
    :cond_1
    const-string v16, "android.intent.extra.BCC"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3839
    if-eqz v6, :cond_2

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 3842
    :cond_2
    const-string v16, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3843
    .local v5, extraString:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3852
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3853
    .local v4, dataUri:Landroid/net/Uri;
    if-eqz v4, :cond_4

    .line 3854
    const-string v16, "mailto"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3855
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 3866
    :cond_4
    :goto_0
    const-string v16, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 3867
    .local v11, text:Ljava/lang/CharSequence;
    if-eqz v11, :cond_5

    .line 3870
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

    .line 3872
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 3878
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

    .line 3879
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 3880
    .local v14, type:Ljava/lang/String;
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 3881
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

    .line 3882
    if-eqz v10, :cond_6

    if-eqz v14, :cond_6

    .line 3901
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3906
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 3912
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

    .line 3914
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3915
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v8, :cond_8

    .line 3917
    const/4 v13, 0x0

    .line 3919
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

    .line 3920
    .local v9, parcelable:Landroid/os/Parcelable;
    move-object v0, v9

    check-cast v0, Landroid/net/Uri;

    move-object v15, v0

    .line 3921
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_7

    .line 3922
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v3

    .line 3929
    .local v3, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3931
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

    .line 3933
    const/high16 v16, 0x50

    move v0, v13

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    .line 3949
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

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 3952
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v16

    if-lez v16, :cond_a

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 3955
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 3957
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3958
    return-void

    .line 3857
    .end local v11           #text:Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 3858
    .local v12, toText:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 3859
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

    .line 3938
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

    .line 2038
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

    .line 2039
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2041
    const v5, 0x7f08005d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 2045
    .end local v0           #addresses:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :goto_1
    return v5

    .line 2038
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v4       #view:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addresses:Ljava/lang/String;
    .end local v4           #view:Landroid/widget/TextView;
    :cond_1
    move v5, v8

    .line 2045
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 30
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2982
    const/16 v25, 0x0

    .line 2984
    .local v25, uri:Landroid/net/Uri;
    if-nez p3, :cond_1

    .line 3367
    :cond_0
    :goto_0
    return-void

    .line 2988
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3296
    :cond_2
    :goto_1
    const/16 v27, 0x64

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 3322
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

    .line 3362
    :cond_4
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 3365
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    goto/16 :goto_0

    .line 3000
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .line 3010
    .local v26, view:Landroid/widget/MultiAutoCompleteTextView;
    :goto_3
    const-string v27, "recents"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 3012
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 3003
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto :goto_3

    .line 3007
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto :goto_3

    .line 3017
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .line 3026
    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "result"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 3027
    .local v23, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3034
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 3035
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 3036
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

    .line 3038
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

    .line 3039
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

    .line 3040
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

    .line 3042
    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->queryContactInfoById(J)Ljava/lang/String;

    move-result-object v6

    .line 3043
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

    .line 3046
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 3047
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

    .line 3020
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

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto/16 :goto_4

    .line 3024
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v26, v0

    .restart local v26       #view:Landroid/widget/MultiAutoCompleteTextView;
    goto/16 :goto_4

    .line 3051
    .restart local v16       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v23       #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_1

    .line 3057
    .end local v16           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v23           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #view:Landroid/widget/MultiAutoCompleteTextView;
    :sswitch_2
    const-string v27, "namecard_result"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3058
    .local v20, namecard:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v21

    .line 3066
    .local v21, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3067
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

    .line 3087
    .end local v20           #namecard:Ljava/lang/String;
    .end local v21           #position:I
    :sswitch_3
    const-string v27, "result"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3088
    .local v5, calendar:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    .line 3096
    .local v7, cursorPositionByAddCalendar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3097
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

    .line 3104
    .end local v5           #calendar:Ljava/lang/String;
    .end local v7           #cursorPositionByAddCalendar:I
    :sswitch_4
    const-string v27, "memotext"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3105
    .local v19, memo:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->requestFocus()Z

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    .line 3113
    .local v8, cursorPositionByAddMemo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3114
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

    .line 3123
    .end local v8           #cursorPositionByAddMemo:I
    .end local v19           #memo:Ljava/lang/String;
    :sswitch_5
    const-string v27, "FILE"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3133
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

    .line 3134
    .local v10, filePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3135
    .local v9, f:Ljava/io/File;
    if-eqz v9, :cond_a

    .line 3138
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 3133
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 3146
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

    .line 3148
    const/16 v18, 0x0

    .line 3149
    .local v18, mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3151
    if-nez v18, :cond_b

    .line 3153
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_IMAGE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3157
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

    .line 3159
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3160
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_c

    .line 3161
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

    .line 3165
    :cond_c
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3173
    .end local v9           #f:Ljava/io/File;
    .end local v18           #mPath:Ljava/lang/String;
    :sswitch_7
    const-string v27, "uri-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3174
    .local v12, fileString:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 3176
    .local v13, fileUri:Landroid/net/Uri;
    if-eqz v13, :cond_f

    .line 3178
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 3179
    .restart local v18       #mPath:Ljava/lang/String;
    if-eqz v18, :cond_e

    .line 3181
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3182
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_d

    .line 3183
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

    .line 3187
    :cond_d
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3193
    .end local v9           #f:Ljava/io/File;
    :cond_e
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3199
    .end local v18           #mPath:Ljava/lang/String;
    :cond_f
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_TAKE_PICTURE file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3208
    .end local v12           #fileString:Ljava/lang/String;
    .end local v13           #fileUri:Landroid/net/Uri;
    :sswitch_8
    const-string v27, "Email"

    const-string v28, "onActivityResult: requestCode = REQUEST_CODE_ATTACH_VIDEO"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const/16 v18, 0x0

    .line 3211
    .restart local v18       #mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3213
    if-nez v18, :cond_10

    .line 3215
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_VIDEO file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3219
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

    .line 3221
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3222
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_11

    .line 3223
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

    .line 3227
    :cond_11
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_VIDEO file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3235
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

    .line 3236
    .restart local v25       #uri:Landroid/net/Uri;
    if-eqz v25, :cond_14

    .line 3238
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 3239
    .restart local v18       #mPath:Ljava/lang/String;
    if-eqz v18, :cond_13

    .line 3241
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3242
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_12

    .line 3243
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

    .line 3247
    :cond_12
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3253
    .end local v9           #f:Ljava/io/File;
    :cond_13
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3259
    .end local v18           #mPath:Ljava/lang/String;
    :cond_14
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_ATTACH_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3266
    :sswitch_a
    const-string v27, "Email"

    const-string v28, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    const/16 v18, 0x0

    .line 3269
    .restart local v18       #mPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v18

    .line 3271
    if-nez v18, :cond_15

    .line 3273
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_RECORD_SOUND file path = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3277
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

    .line 3279
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3280
    .restart local v9       #f:Ljava/io/File;
    if-eqz v9, :cond_16

    .line 3281
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

    .line 3285
    :cond_16
    const-string v27, "Email"

    const-string v28, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static/range {v27 .. v28}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3303
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

    .line 3304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 3307
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

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setAddresses(Landroid/widget/MultiAutoCompleteTextView;Landroid/os/Bundle;)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 3312
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

    .line 3313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    goto/16 :goto_2

    .line 2988
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

    .line 846
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 848
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 851
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    if-eqz v0, :cond_3

    .line 852
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 855
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v0, v1, :cond_4

    .line 856
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscardPopup()V

    .line 863
    :goto_0
    return-void

    .line 860
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

    .line 3463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3527
    :goto_0
    return-void

    .line 3465
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    .line 3472
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showAddAttachmentDialog(Z)V

    goto :goto_0

    .line 3478
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onBackPressed()V

    goto :goto_0

    .line 3482
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    .line 3485
    :sswitch_4
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3486
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3488
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_0

    .line 3489
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 3490
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 3491
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 3492
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    .line 3493
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput v6, v3, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 3496
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3497
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3498
    .local v0, attachView:Landroid/view/View;
    const v3, 0x7f0700b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3499
    .local v1, delete:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3496
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3502
    .end local v0           #attachView:Landroid/view/View;
    .end local v1           #delete:Landroid/widget/ImageButton;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto :goto_0

    .line 3506
    .end local v2           #i:I
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGalSearch()V

    goto :goto_0

    .line 3511
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRecent()V

    goto :goto_0

    .line 3516
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto :goto_0

    .line 3519
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onGroup()V

    goto :goto_0

    .line 3522
    :sswitch_9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 3463
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

    .line 1961
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1963
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

    .line 1965
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsKeyboardOpen:Z

    .line 1966
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move v0, v4

    .line 1967
    .local v0, isLandscape:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 1968
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsLandscape:Z

    .line 1982
    :cond_0
    return-void

    .end local v0           #isLandscape:Z
    :cond_1
    move v1, v5

    .line 1965
    goto :goto_0

    :cond_2
    move v0, v5

    .line 1966
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

    .line 508
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 510
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "inside message compose"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageCompose.java >>>>> onCreate() >>>>> 506"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->requestWindowFeature(I)Z

    .line 518
    const v5, 0x7f030025

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 520
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 522
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnDiscard:Z

    .line 523
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 524
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnWatcher:Z

    .line 525
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mOnAction:Z

    .line 527
    const-wide/16 v0, -0x1

    .line 528
    .local v0, draftId:J
    if-eqz p1, :cond_0

    .line 530
    const-string v5, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 532
    const-string v5, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v5, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 536
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 538
    cmp-long v5, v0, v10

    if-eqz v5, :cond_1

    .line 542
    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v12, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 543
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-wide v0, v5, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 547
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

    .line 551
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 553
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 554
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 555
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 556
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 558
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 576
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

    .line 586
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 589
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V

    .line 594
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    new-instance v6, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 648
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSendEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDiscardEmailTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v5, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 672
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    new-instance v6, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 680
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 683
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 690
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 695
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v5

    if-nez v5, :cond_4

    .line 697
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageCompose.java >>>>> onCreate() >>>>> 688"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 698
    const v5, 0x7f080188

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 699
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 702
    :cond_4
    return-void

    .line 562
    :cond_5
    cmp-long v5, v0, v10

    if-eqz v5, :cond_6

    move-wide v3, v0

    .line 563
    .local v3, messageId:J
    :goto_1
    cmp-long v5, v3, v10

    if-eqz v5, :cond_7

    .line 564
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 565
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

    .line 562
    .end local v3           #messageId:J
    :cond_6
    const-string v5, "message_id"

    invoke-virtual {v2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v3, v5

    goto :goto_1

    .line 567
    .restart local v3       #messageId:J
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 568
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 571
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 572
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 3716
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3717
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3718
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 901
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 902
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageCompose.java >>>>> onDestroy() >>>>> 890"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 905
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 906
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 907
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 908
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->cancelTask(Landroid/os/AsyncTask;)V

    .line 909
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 913
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 927
    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "view"
    .parameter "focused"

    .prologue
    .line 1525
    if-nez p2, :cond_a

    .line 1527
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateTitle()V

    .line 1530
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1532
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1533
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1544
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_2

    .line 1552
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1554
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->arrangeAddress(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 1586
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

    .line 1587
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1588
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1605
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    if-ne p1, v1, :cond_7

    .line 1606
    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->onAdjustFieldHeight(Landroid/widget/MultiAutoCompleteTextView;)V

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1609
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1610
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1611
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1612
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1613
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1614
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 1619
    :cond_7
    return-void

    .line 1535
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1536
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1538
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressButtonBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeader:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1567
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_b

    .line 1574
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddCcBcc()V

    .line 1578
    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mOnCcAndBcc:Z

    if-eqz v1, :cond_2

    .line 1579
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

    .line 3433
    const/4 v3, 0x0

    .line 3435
    .local v3, length:I
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3436
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3437
    .local v2, bufToView:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3438
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3439
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3440
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3443
    .end local v2           #bufToView:Ljava/lang/StringBuffer;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3444
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3445
    .local v1, bufCcView:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3446
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3447
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3448
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3451
    .end local v1           #bufCcView:Ljava/lang/StringBuffer;
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3452
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3453
    .local v0, bufBccView:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 3454
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 3455
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3456
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    .line 3459
    .end local v0           #bufBccView:Ljava/lang/StringBuffer;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 3673
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3709
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 3711
    :goto_0
    return v0

    .line 3680
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    .line 3711
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3683
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPriority()V

    goto :goto_1

    .line 3705
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddText()V

    goto :goto_1

    .line 3673
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
    .line 867
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 883
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 884
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v1, 0x7f070130

    const/4 v2, 0x1

    .line 3725
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

    .line 3727
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3732
    :goto_0
    const v0, 0x7f070132

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3733
    return v2

    .line 3729
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

    .line 959
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 960
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, "com.android.email.activity.MessageCompose.bccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 968
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 969
    return-void

    :cond_0
    move v1, v3

    .line 960
    goto :goto_0

    :cond_1
    move v1, v3

    .line 962
    goto :goto_1

    :cond_2
    move v1, v3

    .line 964
    goto :goto_2

    :cond_3
    move v1, v3

    .line 966
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 786
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mListener:Lcom/android/email/activity/MessageCompose$Listener;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 787
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 938
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 946
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 947
    .local v0, draftId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 948
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 950
    :cond_0
    const-string v2, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    const-string v2, "com.android.email.activity.MessageCompose.bccShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    const-string v2, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    const-string v2, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    return-void

    :cond_1
    move v3, v4

    .line 950
    goto :goto_0

    :cond_2
    move v3, v4

    .line 951
    goto :goto_1

    :cond_3
    move v3, v4

    .line 952
    goto :goto_2
.end method

.method processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 13
    .parameter "message"
    .parameter "account"

    .prologue
    .line 4148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 4149
    iget-object v12, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4150
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

    .line 4151
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

    .line 4154
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4156
    .local v11, strRe:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4157
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

    .line 4161
    :goto_0
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4246
    .end local v11           #strRe:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 4247
    return-void

    .line 4159
    .restart local v11       #strRe:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4162
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

    .line 4163
    :cond_4
    const-string v0, "com.android.email.intent.action.FORWARD_OLD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4164
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->setupAddressViewsForwardOld(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 4166
    :cond_5
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4168
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

    .line 4170
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 4174
    .local v9, sharedPref:Landroid/content/SharedPreferences;
    const-string v0, "forward_with_files"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4175
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachments(Lcom/android/email/provider/EmailContent$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4179
    const/4 v8, 0x0

    .line 4180
    .local v8, isExchange:Z
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4181
    :cond_6
    const/4 v8, 0x0

    .line 4185
    :goto_3
    if-nez v8, :cond_1

    .line 4186
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .end local v8           #isExchange:Z
    .end local v9           #sharedPref:Landroid/content/SharedPreferences;
    :cond_7
    move-object v1, v12

    .line 4168
    goto :goto_2

    .line 4183
    .restart local v8       #isExchange:Z
    .restart local v9       #sharedPref:Landroid/content/SharedPreferences;
    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    .line 4217
    .end local v8           #isExchange:Z
    .end local v9           #sharedPref:Landroid/content/SharedPreferences;
    .end local v10           #strFwd:Ljava/lang/String;
    :cond_9
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4219
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4220
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromAccountView:Landroid/widget/Spinner;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 4223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4224
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4225
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v7

    .line 4226
    .local v7, cc:[Lcom/android/email/mail/Address;
    array-length v0, v7

    if-lez v0, :cond_a

    .line 4227
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0, v7}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4228
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4230
    :cond_a
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4231
    .local v6, bcc:[Lcom/android/email/mail/Address;
    array-length v0, v6

    if-lez v0, :cond_b

    .line 4232
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4233
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4236
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 4238
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4241
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    goto/16 :goto_1
.end method

.method processSourceMessageGuarded(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter "message"
    .parameter "account"

    .prologue
    .line 4125
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v0, :cond_0

    .line 4126
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Account;)V

    .line 4127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 4136
    :cond_0
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4137
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    :cond_1
    return-void
.end method

.method public queryContactInfoById(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2929
    const/4 v8, 0x0

    .line 2930
    .local v8, name:Ljava/lang/String;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2932
    .local v6, PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2934
    .local v1, Uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/MessageCompose;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2941
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2942
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

    .line 2956
    .end local v8           #name:Ljava/lang/String;
    .local v9, name:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2949
    .end local v9           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2950
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2953
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 2956
    .end local v8           #name:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    goto :goto_0

    .line 2953
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
    .line 779
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 780
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 781
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
    .line 4067
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4068
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 4069
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4071
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4073
    if-eqz p5, :cond_2

    .line 4075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4076
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4078
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

    .line 4079
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4078
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4082
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 4083
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4084
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4087
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
    .line 4103
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4104
    .local v6, replyToAddresses:[Lcom/android/email/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 4105
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    .line 4107
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/email/mail/Address;)V

    .line 4110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4111
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    iget-object v5, p2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4113
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

    .line 4114
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4117
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 4118
    iget-object v7, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4119
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4121
    :cond_2
    return-void
.end method

.method public showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    const v3, 0x3f666666

    const/high16 v2, 0x3f80

    .line 4473
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4476
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4478
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4479
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4480
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4481
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4492
    :goto_0
    return-void

    .line 4484
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4486
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecentButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4487
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPhonebookButton:Landroid/widget/Button;

    const v1, 0x3f59999a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4488
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGroupButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 4489
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGalButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextScaleX(F)V

    goto :goto_0
.end method
