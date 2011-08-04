.class public Lcom/android/email/EmailTwSoftkeyItem;
.super Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
.source "EmailTwSoftkeyItem.java"


# instance fields
.field private mItemIcon:Landroid/graphics/drawable/Drawable;

.field private mItemIconAlign:I

.field private mItemText:Ljava/lang/String;

.field private mTextImageButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 55
    sget-object v1, Lcom/android/email/R$styleable;->EmailTwSoftkeyItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 58
    const-string v1, "EmailTwSoftkeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmailTwSoftkeyItem >>>> mItemText is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/email/EmailTwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p0, v8}, Lcom/android/email/EmailTwSoftkeyItem;->setClickable(Z)V

    .line 71
    const v1, 0x2020012

    invoke-virtual {p0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/email/EmailTwSoftkeyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/TextView;

    const v2, 0x2010003

    invoke-direct {v1, p1, v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x5

    new-array v3, v3, [[I

    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [I

    const v5, 0x101009c

    aput v5, v4, v7

    aput-object v4, v3, v8

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v11

    new-array v4, v8, [I

    const v5, 0x101009e

    aput v5, v4, v7

    aput-object v4, v3, v10

    const/4 v4, 0x4

    new-array v5, v8, [I

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, -0x1

    aput v5, v4, v7

    const/4 v5, -0x1

    aput v5, v4, v8

    const/4 v5, -0x1

    aput v5, v4, v11

    const/high16 v5, -0x100

    aput v5, v4, v10

    const/4 v5, 0x4

    const v6, 0x7f090008

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 86
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    const/high16 v2, 0x41c0

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10, v7, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    iget v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    if-ne v1, v8, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->addView(Landroid/view/View;)V

    .line 99
    return-void

    .line 93
    :cond_1
    iget v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    if-ne v1, v11, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v9, v2, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v10, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 78
    nop

    :array_0
    .array-data 0x4
        0xa1t 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method


# virtual methods
.method public setEmailTwSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "image"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    iget v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    if-ne v0, v4, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
