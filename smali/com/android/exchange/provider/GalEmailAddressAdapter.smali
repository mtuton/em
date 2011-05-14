.class public Lcom/android/exchange/provider/GalEmailAddressAdapter;
.super Lcom/android/email/EmailAddressAdapter;
.source "GalEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;
    }
.end annotation


# static fields
.field private static final DEBUG_GAL_LOG:Z = false

.field private static final MINIMUM_GAL_CONSTRAINT_LENGTH:I = 0x3


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountEmailDomain:Ljava/lang/String;

.field private mAccountHasGal:Z

.field private mActivity:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSeparatorDisplayCount:I

.field private mSeparatorTotalCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkGalAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 83
    .local v0, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v0, :cond_0

    .line 84
    const-string v1, "eas"

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    goto :goto_0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    .line 300
    .local v0, separatorPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, p1

    .line 308
    :goto_0
    return v1

    .line 303
    :cond_0
    if-gt p1, v0, :cond_1

    move v1, p1

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    const/4 v1, 0x1

    sub-int v1, p1, v1

    goto :goto_0
.end method

.method private getSeparatorPosition()I
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->getSeparatorPosition()I

    move-result v1

    .line 212
    :goto_0
    return v1

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/email/EmailAddressAdapter;->getCount()I

    move-result v0

    .line 288
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 292
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/email/EmailAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 326
    const-wide/16 v0, -0x1

    .line 328
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/email/EmailAddressAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 222
    const/4 v0, -0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/EmailAddressAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030037

    invoke-virtual {v4, v5, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, separator:Landroid/view/View;
    const v4, 0x7f07008a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .local v3, text1:Landroid/widget/TextView;
    const v4, 0x7f070021

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, progress:Landroid/view/View;
    iget v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 245
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08016a

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, bannerText:Ljava/lang/String;
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v2

    .line 263
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :goto_1
    return-object v4

    .line 248
    .restart local v1       #progress:Landroid/view/View;
    .restart local v2       #separator:Landroid/view/View;
    .restart local v3       #text1:Landroid/widget/TextView;
    :cond_0
    iget v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    iget v5, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    if-ne v4, v5, :cond_1

    .line 250
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    iget v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0       #bannerText:Ljava/lang/String;
    :goto_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08016b

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto :goto_2

    .line 263
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getRealPosition(I)I

    move-result v4

    invoke-super {p0, v4, p2, p3}, Lcom/android/email/EmailAddressAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .parameter "constraint"

    .prologue
    const/4 v6, -0x1

    .line 99
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    if-nez v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {p0, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->checkGalAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/EmailAddressAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    .local v1, contactsCursor:Landroid/database/Cursor;
    iget-boolean v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v4, v1

    .line 195
    :goto_0
    return-object v4

    .line 110
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, constraintString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    move-object v4, v1

    .line 112
    goto :goto_0

    .line 120
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 121
    .local v2, matrixCursor:Landroid/database/MatrixCursor;
    new-instance v3, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 123
    .local v3, mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->setSeparatorPosition(I)V

    .line 124
    iput v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    .line 125
    iput v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    .line 126
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;-><init>(Lcom/android/exchange/provider/GalEmailAddressAdapter;Ljava/lang/String;Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;Landroid/database/MatrixCursor;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-object v4, v3

    .line 195
    goto :goto_0
.end method

.method public setAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 73
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 74
    .local v0, finalSplit:I
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    .line 75
    return-void
.end method
