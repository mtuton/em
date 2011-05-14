.class public Lcom/android/email/activity/GalSearchLookUp;
.super Landroid/app/Activity;
.source "GalSearchLookUp.java"


# static fields
.field private static final DO_GAL_SEARCH:I = 0x1

.field public static final GAL_ACCOUNT:Ljava/lang/String; = "GalAccountID"

.field public static final GAL_END_CONTACT:I = 0x9

.field public static final GAL_HTTP_REQ:I = 0x4

.field public static final GAL_IN_PROGRESS:I = 0x3

.field public static final GAL_LOOK_UP_COMPLETE:I = 0x1

.field public static final GAL_LOOK_UP_NO_DATA:I = 0x2

.field public static final GAL_NULL_STR:I = 0x5

.field public static final GAL_PROTOCOL_ERROR:I = 0x7

.field public static final GAL_RANGE_ERROR:I = 0x8

.field public static final GAL_RESPONSE_PARSE:I = 0x6

.field public static final GAL_RESULTS:Ljava/lang/String; = "GALResults"

.field public static final GAL_SEARCH_STR:Ljava/lang/String; = "GalSearchStr"

.field public static final GAL_START_CONTACT:I = 0x0

.field public static final GAL_UNKNOWN_ERROR:I = -0x1


# instance fields
.field private mAccountId:J

.field private mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

.field private mGalSearch:Landroid/widget/Button;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mSS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/GalSearchLookUp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/email/activity/GalSearchLookUp;->onGalLookUpDone()V

    return-void
.end method

.method private onGalLookUpDone()V
    .locals 5

    .prologue
    .line 122
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Lcom/android/email/activity/GalSearchLookUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/AddressTextView;

    .line 123
    .local v2, lookup_editbox:Lcom/android/email/activity/AddressTextView;
    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mSS:Ljava/lang/String;

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "GALResults"

    iget-object v4, p0, Lcom/android/email/activity/GalSearchLookUp;->mSS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/GalSearchLookUp;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/GalSearchLookUp;->finish()V

    .line 131
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v5, -0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/GalSearchLookUp;->setContentView(I)V

    .line 66
    new-instance v3, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v3, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 68
    invoke-virtual {p0}, Lcom/android/email/activity/GalSearchLookUp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 70
    const-string v3, "GalAccountID"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    .line 71
    iget-wide v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    iget-wide v4, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 76
    :cond_0
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Lcom/android/email/activity/GalSearchLookUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/AddressTextView;

    .line 77
    .local v2, lookup_editbox:Lcom/android/email/activity/AddressTextView;
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 79
    .local v0, addressValidator:Lcom/android/email/EmailAddressValidator;
    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 81
    invoke-virtual {v2, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 83
    const v3, 0x7f070086

    invoke-virtual {p0, v3}, Lcom/android/email/activity/GalSearchLookUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mGalSearch:Landroid/widget/Button;

    .line 85
    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mGalSearch:Landroid/widget/Button;

    new-instance v4, Lcom/android/email/activity/GalSearchLookUp$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/GalSearchLookUp$1;-><init>(Lcom/android/email/activity/GalSearchLookUp;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    return-void
.end method
