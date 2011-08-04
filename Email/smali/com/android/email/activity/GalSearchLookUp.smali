.class public Lcom/android/email/activity/GalSearchLookUp;
.super Landroid/app/Activity;
.source "GalSearchLookUp.java"


# static fields
.field private static lookup_editbox:Lcom/android/email/activity/AddressTextView;


# instance fields
.field private LastSearchedRange:I

.field private mAccountId:J

.field private mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

.field private mGALSearchTask:Landroid/os/AsyncTask;

.field private mGalSearch:Landroid/widget/Button;

.field private mSS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/GalSearchLookUp;->LastSearchedRange:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/GalSearchLookUp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/email/activity/GalSearchLookUp;->LastSearchedRange:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/GalSearchLookUp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/email/activity/GalSearchLookUp;->LastSearchedRange:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/GalSearchLookUp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/email/activity/GalSearchLookUp;->onGalLookUpDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/GalSearchLookUp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/GalSearchLookUp;)Lcom/android/email/EmailAddressAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method private onGalLookUpDone()V
    .locals 4

    .prologue
    .line 192
    sget-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mSS:Ljava/lang/String;

    .line 194
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "GALResults"

    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mSS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/GalSearchLookUp;->setResult(ILandroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/email/activity/GalSearchLookUp;->finish()V

    .line 200
    return-void
.end method


# virtual methods
.method public doGalSearch()V
    .locals 4

    .prologue
    .line 141
    iget v0, p0, Lcom/android/email/activity/GalSearchLookUp;->LastSearchedRange:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/email/activity/GalSearchLookUp;->LastSearchedRange:I

    .line 142
    new-instance v0, Lcom/android/email/activity/GalSearchLookUp$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/GalSearchLookUp$3;-><init>(Lcom/android/email/activity/GalSearchLookUp;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/android/email/EmailAddressAdapter;->getBcakupOfSearchedString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/GalSearchLookUp$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mGALSearchTask:Landroid/os/AsyncTask;

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, -0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/android/email/activity/GalSearchLookUp;->setContentView(I)V

    .line 85
    new-instance v2, Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    .line 87
    invoke-virtual {p0}, Lcom/android/email/activity/GalSearchLookUp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 89
    const-string v2, "GalAccountID"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    .line 90
    iget-wide v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    iget-wide v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 95
    :cond_0
    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/GalSearchLookUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/AddressTextView;

    sput-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    .line 96
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 98
    .local v0, addressValidator:Lcom/android/email/EmailAddressValidator;
    sget-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    iget-object v3, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    sget-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 100
    sget-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 102
    sget-object v2, Lcom/android/email/activity/GalSearchLookUp;->lookup_editbox:Lcom/android/email/activity/AddressTextView;

    new-instance v3, Lcom/android/email/activity/GalSearchLookUp$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/GalSearchLookUp$1;-><init>(Lcom/android/email/activity/GalSearchLookUp;)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    const v2, 0x7f0700a2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/GalSearchLookUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mGalSearch:Landroid/widget/Button;

    .line 118
    iget-object v2, p0, Lcom/android/email/activity/GalSearchLookUp;->mGalSearch:Landroid/widget/Button;

    new-instance v3, Lcom/android/email/activity/GalSearchLookUp$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/GalSearchLookUp$2;-><init>(Lcom/android/email/activity/GalSearchLookUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp;->mAddressAdapter:Lcom/android/email/EmailAddressAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailAddressAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    return-void
.end method
