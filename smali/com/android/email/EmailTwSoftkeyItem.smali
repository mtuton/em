.class public Lcom/android/email/EmailTwSoftkeyItem;
.super Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
.source "EmailTwSoftkeyItem.java"


# static fields
.field public static final FONT_SIZE:F = 24.0f

.field public static final IMAGE_LEFT:I = 0x1

.field public static final IMAGE_NONE:I = 0x0

.field public static final IMAGE_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EmailTwSoftkeyItem"


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
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 52
    sget-object v1, Lcom/android/email/R$styleable;->EmailTwSoftkeyItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 55
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

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/email/EmailTwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v5}, Lcom/android/email/EmailTwSoftkeyItem;->setClickable(Z)V

    .line 68
    const v0, 0x2020012

    invoke-virtual {p0, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setBackgroundResource(I)V

    .line 70
    new-instance v0, Landroid/widget/TextView;

    const v1, 0x2010003

    invoke-direct {v0, p1, v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 73
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    iget v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    if-ne v0, v5, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/email/EmailTwSoftkeyItem;->addView(Landroid/view/View;)V

    .line 86
    return-void

    .line 80
    :cond_1
    iget v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIconAlign:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/EmailTwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/android/email/EmailTwSoftkeyItem;->mTextImageButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
