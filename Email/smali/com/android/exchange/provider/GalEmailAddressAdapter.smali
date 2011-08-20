.class public Lcom/android/exchange/provider/GalEmailAddressAdapter;
.super Lcom/android/email/EmailAddressAdapter;
.source "GalEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;
    }
.end annotation


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
    .line 61
    invoke-direct {p0, p1}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 65
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/exchange/provider/GalEmailAddressAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkGalAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 86
    .local v0, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "eas"

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    goto :goto_0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    .line 341
    .local v0, separatorPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, p1

    .line 349
    :goto_0
    return v1

    .line 344
    :cond_0
    if-gt p1, v0, :cond_1

    move v1, p1

    .line 346
    goto :goto_0

    .line 349
    :cond_1
    const/4 v1, 0x1

    sub-int v1, p1, v1

    goto :goto_0
.end method

.method private getSeparatorPosition()I
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->getSeparatorPosition()I

    move-result v1

    .line 221
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
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 328
    invoke-super {p0}, Lcom/android/email/EmailAddressAdapter;->getCount()I

    move-result v0

    .line 329
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 331
    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 358
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
    .line 366
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 367
    const-wide/16 v0, -0x1

    .line 369
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
    .line 230
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 233
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
    const v10, 0x7f0b0003

    const v7, 0x7f080186

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getSeparatorPosition()I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 248
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030042

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, separator:Landroid/view/View;
    const v4, 0x7f0700a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 250
    .local v3, text1:Landroid/widget/TextView;
    const v4, 0x7f070024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, progress:Landroid/view/View;
    iget v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f080185

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, bannerText:Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v2

    .line 304
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :goto_1
    return-object v4

    .line 257
    .restart local v1       #progress:Landroid/view/View;
    .restart local v2       #separator:Landroid/view/View;
    .restart local v3       #text1:Landroid/widget/TextView;
    :cond_0
    iget v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    iget v5, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    if-ne v4, v5, :cond_2

    .line 259
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v10, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0       #bannerText:Ljava/lang/String;
    :goto_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 265
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v10, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto :goto_2

    .line 273
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_2
    iget v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_4

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto :goto_2

    .line 279
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto :goto_2

    .line 284
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto :goto_2

    .line 291
    .end local v0           #bannerText:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bannerText:Ljava/lang/String;
    goto/16 :goto_2

    .line 304
    .end local v0           #bannerText:Ljava/lang/String;
    .end local v1           #progress:Landroid/view/View;
    .end local v2           #separator:Landroid/view/View;
    .end local v3           #text1:Landroid/widget/TextView;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->getRealPosition(I)I

    move-result v4

    invoke-super {p0, v4, p2, p3}, Lcom/android/email/EmailAddressAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 320
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

    .line 102
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    if-nez v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {p0, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->checkGalAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/EmailAddressAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    .local v1, contactsCursor:Landroid/database/Cursor;
    iget-boolean v4, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v4, v1

    .line 204
    :goto_0
    return-object v4

    .line 113
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, constraintString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->setBcakupOfSearchedString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    move-object v4, v1

    .line 118
    goto :goto_0

    .line 126
    :cond_3
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 127
    .local v2, matrixCursor:Landroid/database/MatrixCursor;
    new-instance v3, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 129
    .local v3, mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->setSeparatorPosition(I)V

    .line 130
    iput v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorDisplayCount:I

    .line 131
    iput v6, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mSeparatorTotalCount:I

    .line 132
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;-><init>(Lcom/android/exchange/provider/GalEmailAddressAdapter;Ljava/lang/String;Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;Landroid/database/MatrixCursor;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-object v4, v3

    .line 204
    goto :goto_0
.end method

.method public setAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountHasGal:Z

    .line 76
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 77
    .local v0, finalSplit:I
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter;->mAccountEmailDomain:Ljava/lang/String;

    .line 78
    return-void
.end method
